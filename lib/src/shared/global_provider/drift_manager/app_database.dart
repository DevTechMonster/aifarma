import 'dart:io';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

// Import feature-specific tables here
import '../../../chat/data/chat_tables.dart';
// import '../../../authentication/data/auth_tables.dart';

part 'app_database.g.dart';

/// Main application database that includes all feature tables
/// Add new feature tables to the tables list below
@DriftDatabase(tables: [
  Conversations,
  ChatMessages,
],)
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  /// Schema version - increment when making schema changes
  @override
  int get schemaVersion => 2;

  /// Migration strategy for handling schema changes
  @override
  MigrationStrategy get migration {
    return MigrationStrategy(
      onCreate: (Migrator m) async {
        await m.createAll();
      },
      onUpgrade: (Migrator m, int from, int to) async {
        // Handle migrations here
        if (from < 2) {
          // Schema changed: added pk column, serverMessageId column
          // Easiest approach: recreate the table
          await m.deleteTable('chat_messages');
          await m.createTable(chatMessages);
        }
      },
    );
  }

  /// Constructor for testing with custom executor
  AppDatabase.forTesting(super.executor);
}

/// Opens a connection to the database
LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'app_database.sqlite'));
    return NativeDatabase(file);
  });
}