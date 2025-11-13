import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../../api/aifarma_core_service.swagger.dart';
import '../../shared/services/app_lifecycle_service.dart';
import '../models/message.dart';

/// Service layer: Handles external API calls and HTTP interactions
class ChatService {
  final AifarmaCoreService service;
  final http.Client httpClient;
  final String baseUrl;
  final AppLifecycleService _lifecycleService;

  // Stream management
  StreamSubscription<AppLifecycleState>? _lifecycleSubscription;
  StreamController<StreamResponse>? _currentStreamController;
  StreamSubscription<List<int>>? _currentHttpSubscription;
  bool _isStreaming = false;
  bool _isPaused = false;

  ChatService({
    required this.service,
    required this.httpClient,
    required this.baseUrl,
    AppLifecycleService? lifecycleService,
  }) : _lifecycleService = lifecycleService ?? AppLifecycleService() {
    _initializeLifecycleListener();
  }

  /// Initialize lifecycle listener to handle background/foreground transitions
  void _initializeLifecycleListener() {
    _lifecycleSubscription = _lifecycleService.lifecycleStream.listen(
      (state) {
        switch (state) {
          case AppLifecycleState.paused:
          case AppLifecycleState.hidden:
            _pauseStreaming();
            break;
          case AppLifecycleState.resumed:
            _resumeStreaming();
            break;
          case AppLifecycleState.detached:
            _stopStreaming();
            break;
          default:
            break;
        }
      },
      onError: (error) {
        log('Lifecycle listener error: $error', name: 'ChatServiceLCDebug');
      },
    );
  }

  /// Pause streaming when app goes to background
  void _pauseStreaming() {
    if (_isStreaming && !_isPaused) {
      _isPaused = true;
      log(
        'Streaming paused due to background state',
        name: 'ChatServiceLCDebug',
      );

      // Optionally, we could buffer the stream data here
      // For now, we'll just skip processing chunks
    }
  }

  /// Resume streaming when app returns to foreground
  void _resumeStreaming() {
    if (_isStreaming && _isPaused) {
      _isPaused = false;
      log(
        'Streaming resumed due to foreground state',
        name: 'ChatServiceLCDebug',
      );
    }
  }

  /// Stop streaming completely
  void _stopStreaming() {
    if (_isStreaming) {
      _isStreaming = false;
      _isPaused = false;

      try {
        _currentHttpSubscription?.cancel();
        _currentStreamController?.close();
      } catch (e) {
        log('Error stopping stream: $e', name: 'ChatServiceLCDebug');
      } finally {
        _currentHttpSubscription = null;
        _currentStreamController = null;
      }

      log(
        'Streaming stopped due to app termination',
        name: 'ChatServiceLCDebug',
      );
    }
  }

  /// Dispose resources
  void dispose() {
    _stopStreaming();
    _lifecycleSubscription?.cancel();
    _lifecycleSubscription = null;
  }

  /// Query agent with streaming response (SSE)
  /// Yields words instead of characters for better readability
  /// Emits StreamResponse events containing text deltas and metadata
  /// Handles background/foreground transitions gracefully
  Stream<StreamResponse> streamQuery({
    required String agentId,
    required List<MessageQuery> messages,
    String? conversationId,
  }) async* {
    // Stop any existing stream
    _stopStreaming();

    // Mark as streaming
    _isStreaming = true;
    _isPaused = false;

    final request = http.Request(
      'POST',
      Uri.parse('$baseUrl/contextual-rag/v1/agents/$agentId/query'),
    );

    request.headers['Content-Type'] = 'application/json';
    request.headers['Accept'] = 'text/event-stream';

    final requestBody = {
      'messages': messages.map((e) => e.toJson()).toList(),
      'stream': true,
      if (conversationId != null) 'conversation_id': conversationId,
    };

    request.body = jsonEncode(requestBody);

    try {
      final response = await httpClient.send(request);

      // Buffer for accumulating text words
      String textBuffer = '';

      // Buffer for accumulating incomplete lines across chunks
      String lineBuffer = '';

      // Track if we've sent any text yet (to handle first word spacing)
      bool hasEmittedText = false;

      // Store typed metadata for later use
      StreamMessageDelta? messageDelta;
      StreamMetadata? metadata;
      StreamRetrievals? retrievals;
      StreamAttributions? attributions;
      StreamMessageComplete? messageComplete;
      String content = '';

      await for (final chunk in response.stream.transform(utf8.decoder)) {
        // Check if we're paused (app in background)
        if (_isPaused) {
          log(
            'Skipping chunk processing - app is in background',
            name: 'ChatServiceLCDebug',
          );
          continue;
        }

        // Check if streaming was stopped externally
        if (!_isStreaming) {
          log(
            'Streaming was stopped externally, breaking loop',
            name: 'ChatServiceLCDebug',
          );
          break;
        }

        // Add chunk to line buffer
        lineBuffer += chunk;

        // Split by newlines but keep the last incomplete line in buffer
        final lines = lineBuffer.split('\n');

        // If the chunk doesn't end with \n, the last element is incomplete
        if (!chunk.endsWith('\n')) {
          lineBuffer = lines.last;
          lines.removeLast();
        } else {
          lineBuffer = '';
        }

        for (final line in lines) {
          if (line.startsWith('data: ')) {
            final data = line.substring(6).trim();

            if (data.isEmpty) continue;

            try {
              final jsonMap = jsonDecode(data) as Map<String, dynamic>;
              final sseEvent = SseEvent.fromJson(jsonMap);

              switch (sseEvent.event) {
                case 'message_delta':
                  // Extract delta text and add to buffer
                  messageDelta = StreamMessageDelta.fromJson(sseEvent.data);
                  if (messageDelta.delta.isNotEmpty) {
                    textBuffer += messageDelta.delta;

                    // Yield complete words
                    final words = textBuffer.split(' ');
                    if (words.length > 1) {
                      for (var i = 0; i < words.length - 1; i++) {
                        // Add space before word unless it's the very first word
                        final wordToYield =
                            (hasEmittedText) ? ' ${words[i]}' : words[i];
                        yield StreamResponse.textDelta(wordToYield);
                        hasEmittedText = true;
                      }
                      textBuffer = words.last;
                    }
                  }
                  content += messageDelta.delta;
                  break;

                case 'metadata':
                  metadata = StreamMetadata.fromJson(sseEvent.data);
                  log(
                    'Metadata - Conversation: ${metadata.conversationId}, Message: ${metadata.messageId}',
                    name: 'ChatServiceDebug',
                  );
                  // Emit metadata so it can be captured by the consumer
                  yield StreamResponse.metadata(metadata);
                  break;

                case 'retrievals':
                  retrievals = StreamRetrievals.fromJson(sseEvent.data);
                  // Example: Access first source
                  if (retrievals.contents.isNotEmpty) {
                    // final firstSource = retrievals.contents.first;
                    log(
                      'source: ${retrievals.contents}',
                      name: 'ChatServiceDebug',
                    );
                  }
                  break;

                case 'attributions':
                  attributions = StreamAttributions.fromJson(sseEvent.data);
                  log(
                    'Received ${attributions.attributions.length} attributions',
                    name: 'ChatServiceDebug',
                  );
                  break;

                case 'message_complete':
                  messageComplete =
                      StreamMessageComplete.fromJson(sseEvent.data);
                  break;

                case 'end':
                  // Stream ended
                  if (textBuffer.isNotEmpty) {
                    final lastWord =
                        hasEmittedText ? ' $textBuffer' : textBuffer;
                    yield StreamResponse.textDelta(lastWord);
                  }

                  // Log final event data summary
                  log(
                    'Stream ended - Metadata: ${metadata != null}, ',
                    name: 'ChatServiceDebug',
                  );
                  log('content = $content', name: 'ChatServiceDebug');
                  log(
                    'Retrievals: ${retrievals?.contents.length ?? 0}, ',
                    name: 'ChatServiceDebug',
                  );
                  log(
                    'Attributions: ${attributions?.attributions.length ?? 0}',
                    name: 'ChatServiceDebug',
                  );
                  log(
                    'Message Complete: ${messageComplete?.finalMessage.length ?? 0}',
                    name: 'ChatServiceDebug',
                  );
                  // log(
                  //   'final Message: ${messageComplete?.finalMessage}',
                  //   name: 'ChatServiceDebug',
                  // );

                  // Emit done event
                  yield StreamResponse.done(
                    metadata: metadata,
                    retrievals: retrievals,
                    attributions: attributions,
                    messageComplete: messageComplete,
                  );
                  return;

                default:
                // Log other events for debugging
                // log('Event: ${sseEvent.event}', name: 'ChatServiceDebug');
              }
            } catch (e) {
              log('Failed to parse SSE event: $e', name: 'ChatServiceDebug');
            }
          }
        }
      }

      // Yield any remaining text
      if (textBuffer.isNotEmpty) {
        final lastWord = hasEmittedText ? ' $textBuffer' : textBuffer;
        yield StreamResponse.textDelta(lastWord);
      }

      // Emit done event
      yield const StreamResponse.done();
    } catch (e) {
      log('Streaming error: $e', name: 'ChatServiceDebug');

      // If the error is due to app being in background, don't rethrow
      if (_isPaused) {
        log(
          'Streaming error occurred while app is in background - gracefully handling',
          name: 'ChatServiceLCDebug',
        );
        yield const StreamResponse.done();
        return;
      }

      // Mark streaming as stopped
      _isStreaming = false;
      _isPaused = false;

      rethrow;
    } finally {
      // Clean up streaming state
      _isStreaming = false;
      _isPaused = false;
      _currentHttpSubscription = null;
    }
  }

  /// Query agent without streaming (regular request)
  Future<QueryResponseDto?> query({
    required String agentId,
    required List<MessageQuery> messages,
  }) async {
    try {
      final response = await service.contextualRagV1AgentsAgentIdQueryPost(
        agentId: agentId,
        body: QueryRequest(
          messages: messages,
          stream: false,
        ),
      );

      return response.body?.data;
    } catch (e) {
      log('Query error: $e', name: 'ChatServiceDebug');
      rethrow;
    }
  }

  /// Generate unique message ID
  /// Combines timestamp with random number to ensure uniqueness even for rapid calls
  String generateMessageId() {
    final timestamp = DateTime.now().millisecondsSinceEpoch;
    final random = math.Random().nextInt(999999);
    return '$timestamp-$random';
  }
}
