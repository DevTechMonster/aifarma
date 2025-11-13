import '../../../api/aifarma_core_service.swagger.dart' hide Message;
import '../../models/message.dart';
import '../../services/chat_service.dart';

/// Repository layer: Data abstraction that combines service and database operations
/// Handles error handling and data transformation
class ChatRepository {
  final ChatService _service;
  // TODO: Add AppDatabase _database parameter when Drift is implemented

  ChatRepository(this._service);

  /// Get streaming response from AI service (word-by-word)
  /// Takes local Message models and converts to DTOs
  /// Returns StreamResponse events that can contain text deltas or metadata
  Stream<StreamResponse> streamQuery({
    required String agentId,
    required List<Message> messages,
    String? conversationId,
  }) {
    // Convert local messages to DTOs
    final messageDtos = messages.map((m) => m.toDto()).toList();

    return _service.streamQuery(
      agentId: agentId,
      messages: messageDtos,
      conversationId: conversationId,
    );
  }

  /// Get complete response from AI service (non-streaming)
  /// Takes local Message models and returns DTO
  Future<QueryResponseDto?> query({
    required String agentId,
    required List<Message> messages,
  }) {
    // Convert local messages to DTOs
    final messageDtos = messages.map((m) => m.toDto()).toList();

    return _service.query(
      agentId: agentId,
      messages: messageDtos,
    );
  }

  /// Generate unique message ID
  String generateMessageId() {
    return _service.generateMessageId();
  }

  // TODO: Add database methods when Drift is implemented
  // Future<void> saveMessage(Message message) async { }
  // Stream<List<Message>> watchAllMessages() { }
  // Future<void> deleteMessage(String id) async { }
  // Future<void> clearAllMessages() async { }
}
