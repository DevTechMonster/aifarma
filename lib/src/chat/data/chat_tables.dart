import 'package:drift/drift.dart';

/// Conversations table - stores chat conversations
class Conversations extends Table {
  /// Unique conversation ID from the server
  TextColumn get id => text()();

  /// Conversation title (can be generated from first message or user-defined)
  TextColumn get title => text().withLength(min: 1, max: 255)();

  /// Agent ID used for this conversation
  TextColumn get agentId => text()();

  /// Timestamp when conversation was created
  DateTimeColumn get createdAt => dateTime()();

  /// Timestamp when conversation was last updated
  DateTimeColumn get updatedAt => dateTime()();

  @override
  Set<Column> get primaryKey => {id};
}

/// Chat messages table - stores individual messages in conversations
class ChatMessages extends Table {
  /// Auto-incrementing primary key
  IntColumn get pk => integer().autoIncrement()();

  /// Local message ID (generated client-side)
  TextColumn get id => text()();

  /// Server message ID (from API response, nullable for user messages)
  TextColumn get serverMessageId => text().nullable()();

  /// Foreign key to conversation
  TextColumn get conversationId => text().references(Conversations, #id, onDelete: KeyAction.cascade)();

  /// Message content/text
  TextColumn get content => text()();

  /// Message role/type: 'user' or 'assistant'
  TextColumn get role => text().withLength(min: 1, max: 20)();

  /// Timestamp when message was created
  DateTimeColumn get createdAt => dateTime()();

  /// Whether the message is currently streaming (for UI state)
  BoolColumn get isStreaming => boolean().withDefault(const Constant(false))();
}
