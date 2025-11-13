import 'package:drift/drift.dart' as drift;
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../api/aifarma_core_service.swagger.dart' hide Message;
import '../../shared/global_provider/drift_manager/app_database.dart' as drift;
import '../../shared/global_provider/drift_manager/app_database.dart';

part 'message.freezed.dart';
part 'message.g.dart';

@freezed
abstract class Message with _$Message {
  const factory Message({
    required String id,
    required String content,
    required MessageType type,
    required DateTime timestamp,
    @Default(false) bool isStreaming,
    String? conversationId,
    String? serverMessageId,
  }) = _Message;
}

/// Metadata event containing conversation and request IDs
@freezed
abstract class StreamMetadata with _$StreamMetadata {
  const factory StreamMetadata({
    @JsonKey(name: 'conversation_id') required String conversationId,
    @JsonKey(name: 'request_id') required String requestId,
    @JsonKey(name: 'message_id') required String messageId,
  }) = _StreamMetadata;

  factory StreamMetadata.fromJson(Map<String, dynamic> json) =>
      _$StreamMetadataFromJson(json);
}

/// Retrieval content item
@freezed
abstract class RetrievalContent with _$RetrievalContent {
  const factory RetrievalContent({
    @JsonKey(name: 'custom_metadata') dynamic customMetadata,
    @JsonKey(name: 'custom_metadata_config') dynamic customMetadataConfig,
    required int number,
    required String type,
    required String format,
    @JsonKey(name: 'content_id') required String contentId,
    @JsonKey(name: 'datastore_id') required String datastoreId,
    @JsonKey(name: 'doc_id') required String docId,
    @JsonKey(name: 'doc_name') required String docName,
    required int page,
    @JsonKey(name: 'content_text') String? contentText,
    String? url,
    @JsonKey(name: 'ctxl_metadata') required CtxlMetadata ctxlMetadata,
    required double score,
  }) = _RetrievalContent;

  factory RetrievalContent.fromJson(Map<String, dynamic> json) =>
      _$RetrievalContentFromJson(json);
}

/// Contextual metadata for retrieval
@freezed
abstract class CtxlMetadata with _$CtxlMetadata {
  const factory CtxlMetadata({
    @JsonKey(name: 'document_title') required String documentTitle,
    @JsonKey(name: 'section_title') required String sectionTitle,
    @JsonKey(name: 'is_figure') required bool isFigure,
    @JsonKey(name: 'file_name') required String fileName,
    @JsonKey(name: 'chunk_size') required int chunkSize,
    @JsonKey(name: 'file_format') required String fileFormat,
    required int page,
    @JsonKey(name: 'chunk_id') required String chunkId,
    @JsonKey(name: 'date_created') required String dateCreated,
    @JsonKey(name: 'section_id') String? sectionId,
  }) = _CtxlMetadata;

  factory CtxlMetadata.fromJson(Map<String, dynamic> json) =>
      _$CtxlMetadataFromJson(json);
}

/// Retrievals event containing retrieved sources
@freezed
abstract class StreamRetrievals with _$StreamRetrievals {
  const factory StreamRetrievals({
    required List<RetrievalContent> contents,
  }) = _StreamRetrievals;

  factory StreamRetrievals.fromJson(Map<String, dynamic> json) =>
      _$StreamRetrievalsFromJson(json);
}

/// Attribution item linking text ranges to sources
@freezed
abstract class Attribution with _$Attribution {
  const factory Attribution({
    @JsonKey(name: 'start_idx') required int startIdx,
    @JsonKey(name: 'end_idx') required int endIdx,
    @JsonKey(name: 'content_ids') required List<String> contentIds,
  }) = _Attribution;

  factory Attribution.fromJson(Map<String, dynamic> json) =>
      _$AttributionFromJson(json);
}

/// Attributions event
@freezed
abstract class StreamAttributions with _$StreamAttributions {
  const factory StreamAttributions({
    required List<Attribution> attributions,
  }) = _StreamAttributions;

  factory StreamAttributions.fromJson(Map<String, dynamic> json) =>
      _$StreamAttributionsFromJson(json);
}

/// Message complete event
@freezed
abstract class StreamMessageComplete with _$StreamMessageComplete {
  const factory StreamMessageComplete({
    @JsonKey(name: 'final_message') required String finalMessage,
  }) = _StreamMessageComplete;

  factory StreamMessageComplete.fromJson(Map<String, dynamic> json) =>
      _$StreamMessageCompleteFromJson(json);
}

/// Message delta event
@freezed
abstract class StreamMessageDelta with _$StreamMessageDelta {
  const factory StreamMessageDelta({
    required String delta,
  }) = _StreamMessageDelta;

  factory StreamMessageDelta.fromJson(Map<String, dynamic> json) =>
      _$StreamMessageDeltaFromJson(json);
}

/// SSE Event wrapper containing event type and data
@freezed
abstract class SseEvent with _$SseEvent {
  const factory SseEvent({
    required String event,
    required Map<String, dynamic> data,
  }) = _SseEvent;

  factory SseEvent.fromJson(Map<String, dynamic> json) =>
      _$SseEventFromJson(json);
}

/// Container for all SSE event metadata
@freezed
abstract class StreamEventData with _$StreamEventData {
  const factory StreamEventData({
    StreamMetadata? metadata,
    StreamRetrievals? retrievals,
    StreamAttributions? attributions,
    StreamMessageComplete? messageComplete,
  }) = _StreamEventData;
}

/// Stream response that can contain either text delta or metadata
@freezed
class StreamResponse with _$StreamResponse {
  const StreamResponse._();

  /// Text delta from streaming response
  const factory StreamResponse.textDelta(String text) = StreamResponseTextDelta;

  /// Metadata from server (conversation ID, message ID, etc.)
  const factory StreamResponse.metadata(StreamMetadata metadata) =
      StreamResponseMetadata;

  /// retrievals source
  const factory StreamResponse.retrieval(StreamRetrievals retrievals) =
      StreamResponseRetrievals;

  /// retrievals source
  const factory StreamResponse.attributions(StreamAttributions? attributions) =
      StreamResponseAttributions;

  /// Stream completed
  const factory StreamResponse.done({
    String? content,
    StreamMetadata? metadata,
    StreamRetrievals? retrievals,
    StreamAttributions? attributions,
    StreamMessageComplete? messageComplete,
  }) = StreamResponseDone;
}

/// Conversation model representing a chat conversation
@freezed
abstract class Conversation with _$Conversation {
  const factory Conversation({
    required String id,
    required String title,
    required String agentId,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Conversation;

  /// Create from Drift database entity
  factory Conversation.fromDb(drift.Conversation data) {
    return Conversation(
      id: data.id,
      title: data.title,
      agentId: data.agentId,
      createdAt: data.createdAt,
      updatedAt: data.updatedAt,
    );
  }
}

enum MessageType {
  user,
  ai,
}

// ============================================================================
// Extensions
// ============================================================================

/// Mapper to convert between local Message model and swagger MessageQuery DTO
extension MessageMapper on Message {
  /// Convert local Message to swagger MessageQuery
  MessageQuery toDto() {
    return MessageQuery(
      role: type.toDto(),
      content: content,
    );
  }
}

/// Mapper to convert swagger MessageQuery to local Message
extension MessageQueryMapper on MessageQuery {
  /// Convert swagger MessageQuery to local Message
  /// Requires additional parameters since MessageQuery doesn't have id/timestamp
  Message toModel({
    required String id,
    DateTime? timestamp,
    bool isStreaming = false,
  }) {
    return Message(
      id: id,
      content: content,
      type: role.toModel(),
      timestamp: timestamp ?? DateTime.now(),
      isStreaming: isStreaming,
    );
  }
}

/// Mapper for MessageType <-> MessageQueryRole
extension MessageTypeMapper on MessageType {
  MessageQueryRole toDto() {
    switch (this) {
      case MessageType.user:
        return MessageQueryRole.user;
      case MessageType.ai:
        return MessageQueryRole.assistant;
    }
  }
}

extension MessageQueryRoleMapper on MessageQueryRole {
  MessageType toModel() {
    switch (this) {
      case MessageQueryRole.user:
        return MessageType.user;
      case MessageQueryRole.assistant:
        return MessageType.ai;
      case MessageQueryRole.swaggerGeneratedUnknown:
        return MessageType.ai;
    }
  }
}

/// Extension to convert Message to Drift database entity
extension MessageDbMapper on Message {
  /// Convert to Drift companion for database operations
  ChatMessagesCompanion toCompanion() {
    return ChatMessagesCompanion.insert(
      id: id,
      conversationId: conversationId!,
      content: content,
      role: type == MessageType.user ? 'user' : 'assistant',
      createdAt: timestamp,
      isStreaming: drift.Value(isStreaming),
      serverMessageId: drift.Value(serverMessageId),
    );
  }

  /// Create from Drift database entity
  static Message fromDb(ChatMessage data) {
    return Message(
      id: data.id,
      content: data.content,
      type: data.role == 'user' ? MessageType.user : MessageType.ai,
      timestamp: data.createdAt,
      isStreaming: data.isStreaming,
      conversationId: data.conversationId,
      serverMessageId: data.serverMessageId,
    );
  }
}
