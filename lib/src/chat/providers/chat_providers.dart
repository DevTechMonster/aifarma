import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../api/api_service.dart';
import '../../shared/global_provider/drift_manager/database_provider.dart';
import '../../shared/services/app_lifecycle_service.dart';
import '../models/chat_state.dart';
import '../models/message.dart';
import '../repository/remote/chat_repository.dart';
import '../repository/local/conversation_repository.dart';
import '../services/chat_service.dart';

part 'chat_providers.g.dart';

/// Provider for ChatService
@riverpod
ChatService chatService(Ref ref) {
  final aifarmacoreService = ref.watch(aifarmaCoreServiceProvider);
  final httpClient = ref.watch(httpClientProvider);
  final baseUrl = ref.watch(apiBaseUrlProvider);
  final lifecycleService = ref.watch(appLifecycleServiceProvider);

  return ChatService(
    service: aifarmacoreService,
    httpClient: httpClient,
    baseUrl: baseUrl,
    lifecycleService: lifecycleService,
  );
}

/// Provider for ChatRepository
@riverpod
ChatRepository chatRepository(Ref ref) {
  final service = ref.watch(chatServiceProvider);
  return ChatRepository(service);
}

/// Provider for ConversationRepository
@riverpod
ConversationRepository conversationRepository(Ref ref) {
  final database = ref.watch(appDatabaseProvider);
  return ConversationRepository(database);
}

/// Provider to watch all conversations
@riverpod
Stream<List<Conversation>> conversationsList(Ref ref) {
  final repository = ref.watch(conversationRepositoryProvider);
  return repository.watchAllConversations();
}

/// Main chat controller that manages chat state
@riverpod
class ChatNotifier extends _$ChatNotifier {
  StreamSubscription<StreamResponse>? _streamSubscription;
  StreamSubscription<AppLifecycleState>? _lifecycleSubscription;

  @override
  Future<ChatState> build() async {
    // Load most recent conversation on initialization
    final chatState = await _loadMostRecentConversation();

    // Listen to app lifecycle changes
    _lifecycleSubscription =
        ref.read(appLifecycleServiceProvider).lifecycleStream.listen(
      (state) {
        if (state == AppLifecycleState.detached) {
          _cancelStreaming();
        }
      },
    );

    // Dispose subscription when provider is disposed
    ref.onDispose(() {
      _cancelStreaming();
      _lifecycleSubscription?.cancel();
    });

    return chatState;
  }

  /// Cancel any active streaming
  void _cancelStreaming() {
    _streamSubscription?.cancel();
    _streamSubscription = null;
    log(
      'Streaming cancelled due to app lifecycle change',
      name: 'ChatNotifier',
    );
  }

  /// Load the most recent conversation from database on initialization
  Future<ChatState> _loadMostRecentConversation() async {
    final conversationRepo = ref.read(conversationRepositoryProvider);

    try {
      final conversations = await conversationRepo.getAllConversations();

      if (conversations.isNotEmpty) {
        final mostRecent = conversations.first;
        final messages = await conversationRepo.getMessages(mostRecent.id);

        return ChatState(
          messages: messages,
          conversationId: mostRecent.id,
          conversationTitle: mostRecent.title,
        );
      }
      return ChatState();
    } catch (e) {
      log(e.toString());
    }
    return ChatState();
  }

  Future<void> sendMessage(String content, {String? agentId}) async {
    if (content.trim().isEmpty) return;
    final stateValue = state.value;

    final repository = ref.read(chatRepositoryProvider);
    final conversationRepo = ref.read(conversationRepositoryProvider);
    final effectiveAgentId = agentId ?? '1d17f0ef-7e19-4d34-b769-67fbd2460d6c';
    final conversationId = stateValue?.conversationId;

    // Create user message
    final userMessage = Message(
      id: repository.generateMessageId(),
      content: content.trim(),
      type: MessageType.user,
      timestamp: DateTime.now(),
      conversationId: conversationId,
    );
    final aiMessageId = repository.generateMessageId();
    final aiMessage = Message(
      id: aiMessageId,
      content: '',
      type: MessageType.ai,
      timestamp: DateTime.now(),
      isStreaming: true,
      conversationId: conversationId,
    );

    // Add user message to state

    state = stateValue != null
        ? AsyncData(
            stateValue.copyWith(
              messages: [...stateValue.messages, userMessage, aiMessage],
              isLoading: true,
            ),
          )
        : AsyncData(
            ChatState(
              messages: [userMessage, aiMessage],
              isLoading: true,
            ),
          );

    try {
      String? serverConversationId = stateValue?.conversationId;
      String? serverMessageId;

      // Cancel any existing stream subscription
      _cancelStreaming();

      // Send only the current user message - backend maintains conversation history
      _streamSubscription = repository
          .streamQuery(
        agentId: effectiveAgentId,
        messages: [userMessage],
        conversationId: conversationId,
      )
          .listen(
        (response) {
          response.when(
            textDelta: (text) {
              final currentStateValue = state.value;
              final currentAiMessage = currentStateValue!.messages.reversed
                  .firstWhere((msgList) => msgList.id == aiMessage.id);

              final updatedMessages = currentAiMessage.copyWith(
                content: currentAiMessage.content + text,
              );
              final messages = currentStateValue.messages
                  .map((e) => e.id == updatedMessages.id ? updatedMessages : e)
                  .toList();

              state = AsyncData(
                currentStateValue.copyWith(
                  messages: messages,
                ),
              );
            },
            metadata: (metadata) async {
              final currentStateValue = state.value;
              // Update conversation ID from server (for new conversations)
              serverConversationId = metadata.conversationId;
              serverMessageId = metadata.messageId;

              // Determine the final conversation ID to use
              final finalConvId =
                  serverConversationId ?? currentStateValue?.conversationId;

              // Create or update conversation if we don't have one
              if (currentStateValue?.conversationId == null) {
                final conversation = await conversationRepo.createConversation(
                  id: finalConvId!,
                  title: _generateConversationTitle(content),
                  agentId: effectiveAgentId,
                );

                state = AsyncData(
                  currentStateValue!.copyWith(
                    conversationId: finalConvId,
                    conversationTitle: conversation.title,
                  ),
                );
              } else {
                await conversationRepo
                    .touchConversation(currentStateValue!.conversationId!);
              }

              // Always save user message with conversation ID (for both new and existing conversations)
              await conversationRepo.saveMessage(
                userMessage.copyWith(
                  conversationId: finalConvId,
                ),
              );
            },
            done:
                (content, metaData, retrievals, attributions, messageComplete) {
              final currentStateValue = state.value;
              state = AsyncData(
                currentStateValue!.copyWith(
                  isLoading: false,
                ),
              );
            },
          );
        },
        onDone: () async {
          _streamSubscription = null; // Clear subscription reference
          final currentStateValue = state.value;
          // Use state.conversationId as fallback if server didn't provide one
          final finalConversationId =
              serverConversationId ?? currentStateValue?.conversationId;
          final currentAiMessage = currentStateValue!.messages.reversed
              .firstWhere((msgList) => msgList.id == aiMessage.id);
          final updatedMessages = currentAiMessage.copyWith(
            isStreaming: false,
            conversationId: finalConversationId,
            serverMessageId: serverMessageId,
          );
          final messages = currentStateValue.messages
              .map((e) => e.id == updatedMessages.id ? updatedMessages : e)
              .toList();
          state = AsyncData(
            currentStateValue.copyWith(
              messages: messages,
              isLoading: false,
            ),
          );
          // Save AI message to database
          if (finalConversationId != null) {
            await conversationRepo.saveMessage(updatedMessages);
          }
        },
        onError: (error) {
          _streamSubscription = null; // Clear subscription reference
          log('Stream error: $error', name: 'ChatNotifier');
          final currentStateValue = state.value;
          state = AsyncData(
            currentStateValue != null
                ? currentStateValue.copyWith(
                    error: error.toString(),
                    isLoading: false,
                  )
                : ChatState(
                    error: error.toString(),
                    isLoading: false,
                  ),
          );
        },
      );
    } catch (error) {
      _streamSubscription = null; // Clear subscription reference
      log('Send message error: $error', name: 'ChatNotifier');
      final currentStateValue = state.value;
      state = AsyncData(
        currentStateValue != null
            ? currentStateValue.copyWith(
                error: error.toString(),
                isLoading: false,
              )
            : ChatState(
                error: error.toString(),
                isLoading: false,
              ),
      );
    }
  }

  /// Generate conversation title from first message
  String _generateConversationTitle(String firstMessage) {
    final trimmed = firstMessage.trim();
    if (trimmed.length <= 50) return trimmed;
    return '${trimmed.substring(0, 47)}...';
  }

  /// Load a conversation from database
  Future<void> loadConversation(String conversationId) async {
    final conversationRepo = ref.read(conversationRepositoryProvider);

    try {
      // Get conversation details
      final conversation =
          await conversationRepo.getConversation(conversationId);
      if (conversation == null) return;

      // Get messages for this conversation
      final messages = await conversationRepo.getMessages(conversationId);

      state = AsyncData(
        ChatState(
          messages: messages,
          conversationId: conversationId,
          conversationTitle: conversation.title,
        ),
      );
    } catch (error) {
      final currentStateValue = state.value;
      state = AsyncData(
        currentStateValue != null
            ? currentStateValue.copyWith(
                error: error.toString(),
              )
            : ChatState(
                error: error.toString(),
              ),
      );
    }
  }

  /// Start a new conversation
  void startNewConversation() {
    state = const AsyncData(ChatState());
  }

  void clearError() {
    final currentStateValue = state.value;
    state = currentStateValue != null
        ? AsyncData(currentStateValue.copyWith(error: null))
        : AsyncData(
            ChatState(),
          );
  }

  void clearMessages() {
    state = AsyncData(ChatState());
  }
}

@riverpod
Future<List<Message>> chatMessagesAsync(Ref ref) async {
  return ref.watch(chatProvider.selectAsync((chatState) => chatState.messages));
}

@riverpod
Future<String?> conversationIdAsync(Ref ref) async {
  return ref.watch(
    chatProvider.selectAsync((chatState) => chatState.conversationId),
  );
}
