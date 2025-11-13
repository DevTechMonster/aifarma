import 'package:drift/drift.dart';
import '../../../shared/global_provider/drift_manager/app_database.dart' hide Conversation;
import '../../models/message.dart';

/// Repository for conversation and message persistence using Drift
class ConversationRepository {
  final AppDatabase _db;

  ConversationRepository(this._db);

  // ============================================================================
  // Conversation Operations
  // ============================================================================

  /// Create a new conversation
  Future<Conversation> createConversation({
    required String id,
    required String title,
    required String agentId,
  }) async {
    final now = DateTime.now();
    final companion = ConversationsCompanion.insert(
      id: id,
      title: title,
      agentId: agentId,
      createdAt: now,
      updatedAt: now,
    );

    await _db.into(_db.conversations).insert(companion);

    return Conversation(
      id: id,
      title: title,
      agentId: agentId,
      createdAt: now,
      updatedAt: now,
    );
  }

  /// Get a conversation by ID
  Future<Conversation?> getConversation(String id) async {
    final query = _db.select(_db.conversations)..where((t) => t.id.equals(id));
    final result = await query.getSingleOrNull();

    return result != null ? Conversation.fromDb(result) : null;
  }

  /// Get all conversations ordered by most recent
  Future<List<Conversation>> getAllConversations() async {
    print('ConversationRepo: getAllConversations() called');
    final query = _db.select(_db.conversations)
      ..orderBy([
        (t) => OrderingTerm(expression: t.updatedAt, mode: OrderingMode.desc),
      ]);

    final results = await query.get();
    print('ConversationRepo: Found ${results.length} conversations in database');
    return results.map((e) => Conversation.fromDb(e)).toList();
  }

  /// Watch all conversations (real-time updates)
  Stream<List<Conversation>> watchAllConversations() {
    final query = _db.select(_db.conversations)
      ..orderBy([
        (t) => OrderingTerm(expression: t.updatedAt, mode: OrderingMode.desc),
      ]);

    return query.watch().map(
          (results) => results.map((e) => Conversation.fromDb(e)).toList(),
        );
  }

  /// Update conversation title
  Future<void> updateConversationTitle(String id, String title) async {
    await (_db.update(_db.conversations)..where((t) => t.id.equals(id))).write(
      ConversationsCompanion(
        title: Value(title),
        updatedAt: Value(DateTime.now()),
      ),
    );
  }

  /// Update conversation's last updated timestamp
  Future<void> touchConversation(String id) async {
    await (_db.update(_db.conversations)..where((t) => t.id.equals(id))).write(
      ConversationsCompanion(
        updatedAt: Value(DateTime.now()),
      ),
    );
  }

  /// Delete a conversation (and all its messages due to cascade)
  Future<void> deleteConversation(String id) async {
    await (_db.delete(_db.conversations)..where((t) => t.id.equals(id))).go();
  }

  // ============================================================================
  // Message Operations
  // ============================================================================

  /// Save a message to the database
  Future<void> saveMessage(Message message) async {
    print('ConversationRepo: Saving message ${message.id} to conversation ${message.conversationId}');

    // Check if message with this ID already exists
    final existing = await (_db.select(_db.chatMessages)
          ..where((t) => t.id.equals(message.id)))
        .getSingleOrNull();

    if (existing != null) {
      print('ConversationRepo: Updating existing message ${message.id}');
      // Update existing message
      await (_db.update(_db.chatMessages)..where((t) => t.id.equals(message.id))).write(
        ChatMessagesCompanion(
          content: Value(message.content),
          isStreaming: Value(message.isStreaming),
          serverMessageId: Value(message.serverMessageId),
        ),
      );
      print('ConversationRepo: Message updated');
    } else {
      print('ConversationRepo: Inserting new message ${message.id}');
      // Insert new message
      final companion = message.toCompanion();
      await _db.into(_db.chatMessages).insert(companion);
      print('ConversationRepo: Message inserted');
    }
  }

  /// Get all messages for a conversation
  Future<List<Message>> getMessages(String conversationId) async {
    print('ConversationRepo: getMessages() called for conversation $conversationId');
    final query = _db.select(_db.chatMessages)
      ..where((t) => t.conversationId.equals(conversationId))
      ..orderBy([(t) => OrderingTerm(expression: t.createdAt, mode: OrderingMode.asc)]);

    final results = await query.get();
    print('ConversationRepo: Found ${results.length} messages in database');
    for (var result in results) {
      print('ConversationRepo: Message ${result.id} - ${result.role}: ${result.content.substring(0, result.content.length > 30 ? 30 : result.content.length)}...');
    }
    return results.map((e) => MessageDbMapper.fromDb(e)).toList();
  }

  /// Watch messages for a conversation (real-time updates)
  Stream<List<Message>> watchMessages(String conversationId) {
    final query = _db.select(_db.chatMessages)
      ..where((t) => t.conversationId.equals(conversationId))
      ..orderBy([(t) => OrderingTerm(expression: t.createdAt, mode: OrderingMode.asc)]);

    return query.watch().map(
          (results) => results.map((e) => MessageDbMapper.fromDb(e)).toList(),
        );
  }

  /// Update message streaming status
  Future<void> updateMessageStreaming(String messageId, bool isStreaming) async {
    await (_db.update(_db.chatMessages)..where((t) => t.id.equals(messageId))).write(
      ChatMessagesCompanion(
        isStreaming: Value(isStreaming),
      ),
    );
  }

  /// Update message content (for streaming updates)
  Future<void> updateMessageContent(String messageId, String content) async {
    await (_db.update(_db.chatMessages)..where((t) => t.id.equals(messageId))).write(
      ChatMessagesCompanion(
        content: Value(content),
      ),
    );
  }

  /// Delete a message
  Future<void> deleteMessage(String messageId) async {
    await (_db.delete(_db.chatMessages)..where((t) => t.id.equals(messageId))).go();
  }

  /// Delete all messages in a conversation
  Future<void> deleteAllMessages(String conversationId) async {
    await (_db.delete(_db.chatMessages)..where((t) => t.conversationId.equals(conversationId))).go();
  }
}
