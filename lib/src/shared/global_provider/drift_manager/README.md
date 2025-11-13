# Drift Manager

Centralized database management for the AiFarma app using Drift (SQLite).

## Structure

```
drift_manager/
├── app_database.dart       # Main database class with all tables
├── database_manager.dart   # Utility class for DB operations
├── database_provider.dart  # Riverpod providers
└── README.md              # This file
```

## Usage

### Adding a New Table

1. **Create table definition in feature's data folder:**

```dart
// lib/src/chat/data/chat_tables.dart
import 'package:drift/drift.dart';

class ChatMessages extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get content => text()();
  DateTimeColumn get timestamp => dateTime()();
}
```

2. **Import table in app_database.dart:**

```dart
import '../../../chat/data/chat_tables.dart';

@DriftDatabase(tables: [
  ChatMessages,  // Add your table here
])
class AppDatabase extends _$AppDatabase {
  // ...
}
```

3. **Run code generation:**

```bash
flutter packages pub run build_runner build --delete-conflicting-outputs
```

### Creating a DAO (Data Access Object)

```dart
// lib/src/chat/data/chat_dao.dart
import 'package:drift/drift.dart';
import '../../shared/global_provider/drift_manager/app_database.dart';

part 'chat_dao.g.dart';

@DriftAccessor(tables: [ChatMessages])
class ChatDao extends DatabaseAccessor<AppDatabase> with _$ChatDaoMixin {
  ChatDao(AppDatabase db) : super(db);

  // Query methods
  Future<List<ChatMessage>> getAllMessages() =>
      select(chatMessages).get();

  Stream<List<ChatMessage>> watchAllMessages() =>
      select(chatMessages).watch();

  Future<int> insertMessage(ChatMessagesCompanion message) =>
      into(chatMessages).insert(message);

  Future<void> deleteAllMessages() =>
      delete(chatMessages).go();
}
```

### Using DAO in Repository

```dart
// lib/src/chat/repository/chat_repository.dart
class ChatRepository {
  final ChatService _service;
  final ChatDao _dao;

  ChatRepository(this._service, this._dao);

  Future<void> saveMessage(String content) async {
    await _dao.insertMessage(
      ChatMessagesCompanion.insert(
        content: content,
        timestamp: DateTime.now(),
      ),
    );
  }

  Stream<List<ChatMessage>> watchMessages() {
    return _dao.watchAllMessages();
  }
}
```

### Database Manager Operations

The `DatabaseManager` provides utility operations:

```dart
// Get database manager
final manager = ref.read(databaseManagerProvider);

// Clear all data
await manager.clearAllData();

// Get database size
final size = await manager.getFormattedDatabaseSize(); // "2.5 MB"

// Export database (for backup)
final backupPath = await manager.exportDatabase();

// Import database (from backup)
await manager.importDatabase(backupPath);

// Delete database completely
await manager.deleteDatabase();

// Get database info
final info = await manager.getDatabaseInfo();
print(info['path']); // Database file path
print(info['size_formatted']); // Human-readable size
print(info['schema_version']); // Current schema version
```

### Testing with In-Memory Database

```dart
// test/helpers/test_database.dart
import 'package:drift/native.dart';
import 'package:aifarma/src/shared/global_provider/drift_manager/app_database.dart';

AppDatabase createTestDatabase() {
  return AppDatabase.forTesting(NativeDatabase.memory());
}

// In your tests
void main() {
  late AppDatabase database;

  setUp(() {
    database = createTestDatabase();
  });

  tearDown(() async {
    await database.close();
  });

  test('should insert message', () async {
    final dao = ChatDao(database);
    // Your test here
  });
}
```

## Migration Guide

When you need to change the database schema:

1. **Update the table definition or add new columns**

2. **Increment schema version in app_database.dart:**

```dart
@override
int get schemaVersion => 2; // Increment this
```

3. **Add migration logic:**

```dart
@override
MigrationStrategy get migration {
  return MigrationStrategy(
    onCreate: (Migrator m) async {
      await m.createAll();
    },
    onUpgrade: (Migrator m, int from, int to) async {
      if (from < 2) {
        // Migration from version 1 to 2
        await m.addColumn(chatMessages, chatMessages.newColumn);
      }
      if (from < 3) {
        // Migration from version 2 to 3
        await m.createTable(newTable);
      }
    },
  );
}
```

4. **Run code generation**

## Best Practices

1. **Always use DAOs** - Don't access the database directly from repositories
2. **Use transactions** for multiple operations
3. **Use streams** for reactive data (watchXxx methods)
4. **Test with in-memory database** - Fast and isolated tests
5. **Handle migrations carefully** - Test upgrades from all previous versions
6. **Clear data on logout** - Use DatabaseManager to clear user data
7. **Export for backup** - Allow users to backup their data

## Common Operations

### Clear specific feature data

Add methods to `database_manager.dart`:

```dart
Future<void> clearChatData() async {
  await _database.delete(_database.chatMessages).go();
}
```

### Add complex queries in DAO

```dart
// Get messages from last 7 days
Future<List<ChatMessage>> getRecentMessages() {
  final sevenDaysAgo = DateTime.now().subtract(Duration(days: 7));
  return (select(chatMessages)
    ..where((tbl) => tbl.timestamp.isBiggerOrEqualValue(sevenDaysAgo))
    ..orderBy([(tbl) => OrderingTerm.desc(tbl.timestamp)]))
    .get();
}
```

### Use transactions

```dart
Future<void> saveConversation(List<ChatMessagesCompanion> messages) async {
  await _database.transaction(() async {
    for (final message in messages) {
      await into(chatMessages).insert(message);
    }
  });
}
```

## Troubleshooting

**Error: "Target of URI hasn't been generated"**
- Run: `flutter packages pub run build_runner build --delete-conflicting-outputs`

**Error: "Table not found"**
- Make sure you've added the table to `@DriftDatabase(tables: [...])`
- Check that imports are correct

**Migration errors**
- Delete the app and reinstall (development only)
- Or use `DatabaseManager.deleteDatabase()` to reset

## Resources

- [Drift Documentation](https://drift.simonbinder.eu/)
- [Drift GitHub](https://github.com/simolus3/drift)
- [Migration Guide](https://drift.simonbinder.eu/docs/advanced-features/migrations/)