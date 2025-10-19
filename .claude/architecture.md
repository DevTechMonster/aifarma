# Flutter RAG Chatbot - Architecture Guide

## Project Overview

A mobile chatbot application that uses RAG (Retrieval-Augmented Generation) system to answer user questions based on knowledge from PDF documents. The MVP focuses on streaming responses from an external LLM API.

### Tech Stack
- **Framework:** Flutter ^3.35.4 & Dart >=3.2.0
- **State Management:** Riverpod 3.0 (with code generation)
- **Routing:** go_router 16.2.4
- **Code Generation:** freezed, riverpod_generator, build_runner, flutter_gen_runner
- **Architecture:** Feature-based with Clean Architecture layers

---

## Architecture Pattern

### Feature-Based Structure

Each feature is a self-contained module with its own clean architecture layers.

```
lib/
├── config/                      # Configuration files (environment, constants)
├── gen/                         # Auto-generated files (assets, fonts)
├── src/
│   ├── authentication/          # Authentication feature
│   │   ├── data/               # Local data sources (Drift tables, DAOs)
│   │   ├── models/             # Data models
│   │   ├── provider/           # Auth-related providers
│   │   ├── repository/         # Data abstraction layer
│   │   ├── service/            # Auth services (API calls)
│   │   └── view/               # Login, signup, forgot password screens
│   ├── chat/                    # Chat feature
│   │   ├── data/               # Local data sources (Drift tables, DAOs)
│   │   ├── models/             # Chat message models
│   │   ├── providers/          # Chat providers
│   │   ├── repository/         # Chat repository
│   │   ├── services/           # Chat API services
│   │   └── view/               # Chat screen and widgets
│   ├── home/                    # Home feature
│   │   ├── data/               # Local data (if needed)
│   │   ├── providers/          # Home providers
│   │   └── view/               # Home screen
│   ├── profile/                 # Profile feature
│   │   ├── data/               # Local data (if needed)
│   │   ├── providers/          # Profile providers
│   │   └── view/               # Profile screen
│   ├── settings/                # Settings feature
│   │   ├── data/               # Local data (if needed)
│   │   ├── providers/          # Settings providers
│   │   └── view/               # Settings screen
│   ├── shared/                  # Shared resources
│   │   ├── components/         # Reusable UI components
│   │   ├── global_provider/    # Global providers
│   │   │   ├── drift_manager/  # Database management
│   │   │   │   ├── app_database.dart        # Main database class
│   │   │   │   ├── database_provider.dart   # Database provider
│   │   │   │   └── database_manager.dart    # Database utilities
│   │   │   └── locale_provider/ # Locale/language provider
│   │   ├── theme/              # Theme configuration
│   │   │   └── widget/         # Theme-related widgets
│   │   └── utils/              # Utility functions
│   ├── localization/            # Generated localization files
│   └── router/                  # Go Router configuration
├── app.dart                     # Root MaterialApp widget
├── main.dart                    # Entry point (production)
├── main_dev.dart               # Entry point (development)
├── main_staging.dart           # Entry point (staging)
└── main_production.dart        # Entry point (production)
```

### Clean Architecture Layers

Each feature follows these layers:

1. **View Layer** (`view/`)
   - UI components (Screens & Widgets)
   - Consumes providers
   - No business logic
   - File naming: `{feature}_screen.dart`, `{component}_widget.dart`

2. **Service Layer** (`service/`)
   - External API calls
   - HTTP client interactions
   - Stream handling
   - File naming: `{feature}_service.dart`

3. **Repository Layer** (`repository/`)
   - Data abstraction
   - Combines service layer and data layer
   - Error handling and data transformation
   - Caching logic
   - File naming: `{feature}_repository.dart`

4. **Data Layer** (`data/`)
   - Local database tables (Drift)
   - Data Access Objects (DAOs)
   - Local storage operations
   - File naming: `{feature}_tables.dart`, `{feature}_dao.dart`

5. **Models** (`models/`)
   - Data classes using freezed
   - Immutable state objects
   - JSON serialization
   - File naming: `{model_name}.dart`

6. **Providers** (`providers/`)
   - Riverpod providers with code generation
   - State management
   - File naming: `{feature}_providers.dart`

---

## State Management with Riverpod 2.0

### Code Generation Pattern

Always use Riverpod code generation annotations:

```dart
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'chat_providers.g.dart';

// Simple provider
@riverpod
ChatRepository chatRepository(Ref ref) {
  return ChatRepository(ref.watch(chatServiceProvider));
}

// AsyncNotifier for async state
@riverpod
class ChatMessages extends _$ChatMessages {
  @override
  Future<List<ChatMessage>> build() async {
    // Initial load
    return [];
  }

  Future<void> addMessage(ChatMessage message) async {
    state = AsyncData([...state.value!, message]);
  }
}

// StreamProvider for streaming data
@riverpod
Stream<String> chatStream(Ref ref, String query) {
  final service = ref.watch(chatServiceProvider);
  return service.streamResponse(query);
}
```

### Provider Types to Use

- **@riverpod** - For simple providers (repositories, services)
- **@riverpod class extends _$ClassName** - For stateful logic (AsyncNotifier, Notifier)
- **Stream-based providers** - For streaming API responses

### Naming Conventions

- Provider variables: `{feature}Provider` (e.g., `chatRepositoryProvider`)
- Notifier classes: `{Feature}{Purpose}` (e.g., `ChatMessages`, `PdfUploader`)
- Generated files: Always include `part '{filename}.g.dart';`

---

## Dependencies

### Production Dependencies

```yaml
dependencies:
  flutter:
    sdk: flutter
  flutter_localizations:
    sdk: flutter

  # State Management
  flutter_riverpod: ^3.0.0
  hooks_riverpod: ^3.0.0
  riverpod: ^3.0.0
  riverpod_annotation: ^3.0.0
  flutter_hooks: ^0.21.3+1

  # Routing
  go_router: ^16.2.4

  # Networking
  http: ^1.5.0

  # Local Database
  drift: ^2.22.1
  sqlite3_flutter_libs: ^0.5.24
  path_provider: ^2.1.5

  # Code Generation
  freezed_annotation: ^3.1.0

  # Localization & Internationalization
  intl: ^0.20.2

  # UI & Utilities
  cupertino_icons: ^1.0.8
  flutter_portal: ^1.1.4
  archive: ^4.0.7
  path: ^1.9.0

  # App Info & Configuration
  package_info_plus: ^8.1.0
  logging: ^1.2.0

  # App Icons (runtime)
  flutter_launcher_icons: ^0.14.4

dev_dependencies:
  flutter_test:
    sdk: flutter

  # Code Generation
  build_runner: ^2.7.1
  freezed: ^3.2.3
  riverpod_generator: ^3.0.0
  flutter_gen_runner: ^5.12.0
  drift_dev: ^2.22.0

  # Linting & Analysis
  flutter_lints: ^5.0.0
  custom_lint: ^0.8.0
  riverpod_lint: ^3.0.0

  # Testing
  mockito: ^5.4.4

  # Asset Processing
  image_res: ^0.3.0
```

### Key Package Purposes

- **State Management:** Riverpod 3.0 ecosystem with hooks support
- **Routing:** go_router for declarative navigation
- **Code Generation:** build_runner, freezed, riverpod_generator, drift_dev for generated code
- **Networking:** http package for API calls
- **Local Database:** drift for SQLite database with type-safe queries, path_provider for storage location
- **Localization:** intl with flutter_localizations for multi-language support
- **Testing:** mockito for mocking in unit tests
- **Linting:** flutter_lints, custom_lint, and riverpod_lint for code quality
- **Asset Generation:** flutter_gen_runner for type-safe asset references, image_res for image processing

### Freezed Models

All data models should use freezed:

```dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_message.freezed.dart';
part 'chat_message.g.dart';

@freezed
abstract class ChatMessage with _$ChatMessage {
  const factory ChatMessage({
    required String id,
    required String content,
    required bool isUser,
    required DateTime timestamp,
    @Default(false) bool isStreaming,
  }) = _ChatMessage;

  factory ChatMessage.fromJson(Map<String, dynamic> json) =>
      _$ChatMessageFromJson(json);
}
```

### Build Runner Commands

```bash
# Watch mode (development)
flutter pub run build_runner watch --delete-conflicting-outputs

# One-time build
flutter pub run build_runner build --delete-conflicting-outputs
```

---

## Local Database with Drift

### Database Architecture

Drift is a reactive persistence library for Flutter and Dart, built on top of SQLite. It provides type-safe, composable SQL queries with code generation.

**Structure:**
- **Centralized Database**: `lib/src/shared/global_provider/drift_manager/`
- **Feature-specific Tables**: `lib/src/{feature}/data/`

### Drift Manager Setup

The drift manager provides centralized database management including initialization, clearing, and connection management.

```dart
// lib/src/shared/global_provider/drift_manager/app_database.dart
import 'dart:io';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

// Import all feature tables
import '../../../chat/data/chat_tables.dart';
import '../../../authentication/data/auth_tables.dart';

part 'app_database.g.dart';

/// Main application database that includes all feature tables
@DriftDatabase(tables: [
  ChatMessages,
  AuthTokens,
  // Add other feature tables here
])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration {
    return MigrationStrategy(
      onCreate: (Migrator m) async {
        await m.createAll();
      },
      onUpgrade: (Migrator m, int from, int to) async {
        // Handle migrations here
      },
    );
  }
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'app_database.sqlite'));
    return NativeDatabase(file);
  });
}
```

### Database Manager

```dart
// lib/src/shared/global_provider/drift_manager/database_manager.dart
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import 'app_database.dart';

/// Manages database operations like clearing, resetting, etc.
class DatabaseManager {
  final AppDatabase _database;

  DatabaseManager(this._database);

  /// Clear all data from all tables
  Future<void> clearAllData() async {
    await _database.transaction(() async {
      // Clear each table
      await _database.delete(_database.chatMessages).go();
      await _database.delete(_database.authTokens).go();
      // Add other tables here
    });
  }

  /// Clear specific feature data
  Future<void> clearChatData() async {
    await _database.delete(_database.chatMessages).go();
  }

  Future<void> clearAuthData() async {
    await _database.delete(_database.authTokens).go();
  }

  /// Delete database file (for complete reset)
  Future<void> deleteDatabase() async {
    await _database.close();
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'app_database.sqlite'));
    if (await file.exists()) {
      await file.delete();
    }
  }

  /// Get database size
  Future<int> getDatabaseSize() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'app_database.sqlite'));
    if (await file.exists()) {
      return await file.length();
    }
    return 0;
  }

  /// Export database (for backup)
  Future<String> exportDatabase() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final sourceFile = File(p.join(dbFolder.path, 'app_database.sqlite'));
    final backupFile = File(p.join(
      dbFolder.path,
      'app_database_backup_${DateTime.now().millisecondsSinceEpoch}.sqlite',
    ));
    await sourceFile.copy(backupFile.path);
    return backupFile.path;
  }
}
```

### Database Provider

```dart
// lib/src/shared/global_provider/drift_manager/database_provider.dart
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'app_database.dart';
import 'database_manager.dart';

part 'database_provider.g.dart';

/// Provides the main app database instance
@riverpod
AppDatabase appDatabase(Ref ref) {
  final database = AppDatabase();
  ref.onDispose(() => database.close());
  return database;
}

/// Provides the database manager
@riverpod
DatabaseManager databaseManager(Ref ref) {
  final database = ref.watch(appDatabaseProvider);
  return DatabaseManager(database);
}
```

### Feature-Specific Table Definition

```dart
// lib/src/chat/data/chat_tables.dart
import 'package:drift/drift.dart';

/// Chat messages table
class ChatMessages extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get messageId => text().unique()();
  TextColumn get content => text()();
  BoolColumn get isUser => boolean()();
  DateTimeColumn get timestamp => dateTime()();
  BoolColumn get isStreaming => boolean().withDefault(const Constant(false))();
}
```

### Feature-Specific DAO (Data Access Object)

```dart
// lib/src/chat/data/chat_dao.dart
import 'package:drift/drift.dart';
import '../../shared/global_provider/drift_manager/app_database.dart';

part 'chat_dao.g.dart';

@DriftAccessor(tables: [ChatMessages])
class ChatDao extends DatabaseAccessor<AppDatabase> with _$ChatDaoMixin {
  ChatDao(AppDatabase db) : super(db);

  // Query methods
  Future<List<ChatMessage>> getAllMessages() => select(chatMessages).get();

  Stream<List<ChatMessage>> watchAllMessages() => select(chatMessages).watch();

  Future<int> insertMessage(ChatMessagesCompanion message) =>
      into(chatMessages).insert(message);

  Future<bool> updateMessage(ChatMessage message) =>
      update(chatMessages).replace(message);

  Future<int> deleteMessage(int id) =>
      (delete(chatMessages)..where((tbl) => tbl.id.equals(id))).go();

  Future<void> deleteAllMessages() => delete(chatMessages).go();
}
```

### DAO Provider

```dart
// lib/src/chat/providers/chat_data_providers.dart
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../shared/global_provider/drift_manager/database_provider.dart';
import '../data/chat_dao.dart';

part 'chat_data_providers.g.dart';

/// Provides the ChatDao for database operations
@riverpod
ChatDao chatDao(Ref ref) {
  final database = ref.watch(appDatabaseProvider);
  return ChatDao(database);
}

/// Stream provider for watching all messages
@riverpod
Stream<List<ChatMessage>> chatMessagesStream(Ref ref) {
  final dao = ref.watch(chatDaoProvider);
  return dao.watchAllMessages();
}
```

### Repository Pattern with Drift

```dart
// lib/src/chat/repository/chat_repository.dart
import 'package:drift/drift.dart' as drift;
import '../data/chat_dao.dart';
import '../services/chat_service.dart';

class ChatRepository {
  final ChatService _service;
  final ChatDao _dao;

  ChatRepository(this._service, this._dao);

  // Save user message to database
  Future<void> saveUserMessage(String content) async {
    await _dao.insertMessage(
      ChatMessagesCompanion.insert(
        messageId: DateTime.now().millisecondsSinceEpoch.toString(),
        content: content,
        isUser: true,
        timestamp: DateTime.now(),
      ),
    );
  }

  // Save AI response to database (for streaming responses)
  Future<int> saveAIMessage(String messageId, String content) async {
    return await _dao.insertMessage(
      ChatMessagesCompanion.insert(
        messageId: messageId,
        content: content,
        isUser: false,
        timestamp: DateTime.now(),
        isStreaming: drift.Value(true),
      ),
    );
  }

  // Update message content (for streaming updates)
  Future<void> updateMessageContent(int id, String newContent, bool isComplete) async {
    // Get the message first
    final messages = await _dao.getAllMessages();
    final message = messages.firstWhere((m) => m.id == id);

    await _dao.updateMessage(
      message.copyWith(
        content: newContent,
        isStreaming: !isComplete,
      ),
    );
  }

  // Get streaming response from service
  Stream<String> getStreamingResponse(String query) {
    return _service.getAiResponse(query);
  }

  // Get all messages from database
  Stream<List<ChatMessage>> watchAllMessages() {
    return _dao.watchAllMessages();
  }

  // Delete a message
  Future<void> deleteMessage(int id) async {
    await _dao.deleteMessage(id);
  }

  // Clear all messages
  Future<void> clearAllMessages() async {
    await _dao.deleteAllMessages();
  }
}
```

### Chat Provider with Database Integration

```dart
// lib/src/chat/providers/chat_providers.dart
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../service/chat_service.dart';
import '../repository/chat_repository.dart';
import '../models/database.dart';
import 'database_provider.dart';

part 'chat_providers.g.dart';

@riverpod
ChatService chatService(Ref ref) {
  return ChatService(baseUrl: 'https://api.example.com');
}

@riverpod
ChatRepository chatRepository(Ref ref) {
  final service = ref.watch(chatServiceProvider);
  final database = ref.watch(appDatabaseProvider);
  return ChatRepository(service, database);
}

// Notifier for handling chat operations
@riverpod
class ChatController extends _$ChatController {
  @override
  FutureOr<void> build() async {
    // Initialize if needed
  }

  Future<void> sendMessage(String content) async {
    state = const AsyncLoading();

    state = await AsyncValue.guard(() async {
      final repository = ref.read(chatRepositoryProvider);

      // 1. Save user message to database
      await repository.saveUserMessage(content);

      // 2. Get streaming response from API
      final messageId = DateTime.now().millisecondsSinceEpoch.toString();
      int? dbMessageId;
      String accumulatedContent = '';

      await for (final chunk in repository.getStreamingResponse(content)) {
        accumulatedContent += chunk;

        if (dbMessageId == null) {
          // First chunk: insert new message
          dbMessageId = await repository.saveAIMessage(messageId, accumulatedContent);
        } else {
          // Subsequent chunks: update existing message
          await repository.updateMessageContent(dbMessageId, accumulatedContent, false);
        }
      }

      // 3. Mark message as complete
      if (dbMessageId != null) {
        await repository.updateMessageContent(dbMessageId, accumulatedContent, true);
      }
    });
  }

  Future<void> deleteMessage(int id) async {
    final repository = ref.read(chatRepositoryProvider);
    await repository.deleteMessage(id);
  }
}
```

### Using in UI

```dart
// lib/src/chat/view/chat_screen.dart
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../providers/chat_providers.dart';
import '../providers/database_provider.dart';

class ChatScreen extends HookConsumerWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Watch messages from database
    final messagesAsync = ref.watch(chatMessagesStreamProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Chat')),
      body: messagesAsync.when(
        data: (messages) => ListView.builder(
          itemCount: messages.length,
          itemBuilder: (context, index) {
            final message = messages[index];
            return MessageBubble(
              content: message.content,
              isUser: message.isUser,
              isStreaming: message.isStreaming,
            );
          },
        ),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, stack) => Center(child: Text('Error: $err')),
      ),
      bottomNavigationBar: ChatInput(
        onSend: (content) {
          ref.read(chatControllerProvider.notifier).sendMessage(content);
        },
      ),
    );
  }
}
```

### Key Features

- **Type-Safe Queries:** Compile-time checked SQL queries
- **Reactive Streams:** Watch database changes with Dart Streams
- **Migration Support:** Handle schema changes across versions
- **Transaction Support:** Atomic operations for data consistency
- **Code Generation:** Generates boilerplate code via build_runner

### Database Migration

When you update the schema, increment `schemaVersion` and add migration logic:

```dart
@DriftDatabase(tables: [ChatMessages])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 2;

  @override
  MigrationStrategy get migration {
    return MigrationStrategy(
      onCreate: (Migrator m) async {
        await m.createAll();
      },
      onUpgrade: (Migrator m, int from, int to) async {
        if (from < 2) {
          // Add new column example
          await m.addColumn(chatMessages, chatMessages.isStreaming);
        }
      },
    );
  }
}
```

---

## Routing with go_router

### Router Setup

```dart
// lib/src/router/router.dart or app_router.dart
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router.g.dart';  // or 'app_router.g.dart'

@riverpod
GoRouter goRouter(Ref ref) {
  return GoRouter(
    initialLocation: '/home',
    routes: [
      GoRoute(
        path: '/home',
        name: 'home',
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: '/chat',
        name: 'chat',
        builder: (context, state) => const ChatScreen(),
      ),
      GoRoute(
        path: '/profile',
        name: 'profile',
        builder: (context, state) => const ProfileScreen(),
      ),
      GoRoute(
        path: '/settings',
        name: 'settings',
        builder: (context, state) => const SettingsScreen(),
      ),
    ],
  );
}
```

### Navigation Pattern

```dart
// In widgets
context.go('/chat');
context.push('/pdf-upload');
context.goNamed('chat');
```

---

## Streaming API Integration

### Service Layer Example

```dart
// lib/features/chat/service/chat_service.dart
import 'package:http/http.dart' as http;
import 'dart:convert';

class ChatService {
  final String baseUrl;
  final http.Client client;

  ChatService({
    required this.baseUrl,
    http.Client? client,
  }) : client = client ?? http.Client();

  Stream<String> streamChatResponse(String query) async* {
    final request = http.Request(
      'POST',
      Uri.parse('$baseUrl/chat/stream'),
    );
    
    request.headers['Content-Type'] = 'application/json';
    request.body = json.encode({'query': query});

    final streamedResponse = await client.send(request);
    
    await for (final chunk in streamedResponse.stream.transform(utf8.decoder)) {
      // Parse SSE or chunk format from your API
      yield chunk;
    }
  }
}
```

### Repository Layer Example

```dart
// lib/features/chat/repository/chat_repository.dart
import '../service/chat_service.dart';
import '../models/chat_message.dart';

class ChatRepository {
  final ChatService _service;

  ChatRepository(this._service);

  Stream<String> getStreamingResponse(String query) {
    return _service.streamChatResponse(query);
  }

  Future<void> saveMessage(ChatMessage message) async {
    // Save to local storage or backend
  }
}
```

### Provider Example

```dart
// lib/features/chat/providers/chat_providers.dart
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../service/chat_service.dart';
import '../repository/chat_repository.dart';

part 'chat_providers.g.dart';

@riverpod
ChatService chatService(Ref ref) {
  return ChatService(baseUrl: 'https://api.example.com');
}

@riverpod
ChatRepository chatRepository(Ref ref) {
  return ChatRepository(ref.watch(chatServiceProvider));
}

@riverpod
Stream<String> chatResponseStream(
  Ref ref,
  String query,
) {
  final repository = ref.watch(chatRepositoryProvider);
  return repository.getStreamingResponse(query);
}
```

---

## Feature Creation Template

When creating a new feature, follow this checklist:

### 1. Create Folder Structure
```
lib/src/{feature_name}/
├── models/          # Data models (if needed)
├── providers/       # Riverpod providers
├── repository/      # Data abstraction layer (if needed)
├── service/         # External API calls (if needed)
└── view/            # UI screens and widgets
    └── widgets/     # Feature-specific widgets
```

### 2. Create Models (if needed)
- Use freezed annotation
- Include JSON serialization
- Make immutable

### 3. Create Service Layer
- Handle external API calls
- Keep HTTP/network logic here
- Return raw data or streams

### 4. Create Repository Layer
- Abstract service calls
- Handle errors
- Transform data to models

### 5. Create Providers
- Use code generation
- Define state management
- Wire up repository/service

### 6. Create View Layer
- Screen widget
- Child widgets in `widgets/` folder
- Consume providers with `ref.watch()` or `ref.listen()`

### 7. Register Route
- Add to `lib/src/router/router.dart` (or your router file)
- Define path and name

---

## Naming Conventions

### Files
- `snake_case` for all files
- `{feature}_screen.dart` for screens
- `{feature}_service.dart` for services
- `{feature}_repository.dart` for repositories
- `{feature}_providers.dart` for providers
- `{model_name}.dart` for models

### Classes
- `PascalCase` for all classes
- Screens: `{Feature}Screen`
- Services: `{Feature}Service`
- Repositories: `{Feature}Repository`
- Models: Descriptive nouns

### Variables & Methods
- `camelCase`
- Providers: `{feature}{Purpose}Provider`
- Methods: Verb-based (`getMessages`, `sendQuery`, `uploadPdf`)

---

## Error Handling Pattern

```dart
// In AsyncNotifier
@riverpod
class ChatMessages extends _$ChatMessages {
  @override
  Future<List<ChatMessage>> build() async {
    try {
      return await _fetchMessages();
    } catch (e, stackTrace) {
      // Log error
      return [];
    }
  }

  Future<void> sendMessage(String content) async {
    state = const AsyncLoading();
    
    state = await AsyncValue.guard(() async {
      // Your logic here
      return updatedMessages;
    });
  }
}
```

---

## Testing Strategy

### Unit Tests
- Test repositories with mocked services
- Test business logic in notifiers

### Widget Tests
- Test view layer in isolation
- Use ProviderScope with overrides

### Integration Tests
- Test complete features
- Mock external API calls

---

## Code Quality Tools

Add to `analysis_options.yaml`:

```yaml
include: package:flutter_lints/flutter.yaml

linter:
  rules:
    - prefer_const_constructors
    - prefer_const_literals_to_create_immutables
    - avoid_print
    - prefer_single_quotes

analyzer:
  plugins:
    - custom_lint
```

---

## Getting Started Commands

```bash
# Install dependencies
flutter pub get

# Generate code
flutter pub run build_runner build --delete-conflicting-outputs

# Run app
flutter run

# Watch for changes (keep this running during development)
flutter pub run build_runner watch --delete-conflicting-outputs
```

---

## MVP Scope

### Phase 1 - Current Focus
- ✅ Basic chat interface
- ✅ Stream API integration
- ✅ Message display
- ✅ User input handling

### Phase 2 - Future
- PDF upload and management
- Knowledge base integration
- Chat history persistence
- User authentication

---

## Testing Strategy

### Test Structure

```
test/
├── unit/                    # Unit tests
│   ├── services/           # Service layer tests
│   ├── repositories/       # Repository layer tests
│   ├── data/               # DAO/Database tests
│   └── models/             # Model tests
├── widget/                  # Widget tests
│   ├── chat/               # Chat widget tests
│   ├── authentication/     # Auth widget tests
│   └── shared/             # Shared widget tests
├── integration/             # Integration tests
│   └── flows/              # User flow tests
└── helpers/                 # Test helpers and mocks
    ├── mocks.dart          # Mock classes
    ├── test_database.dart  # Test database setup
    └── test_providers.dart # Provider overrides
```

### Unit Testing

#### Service Layer Tests

```dart
// test/unit/services/chat_service_test.dart
import 'package:flutter_test/flutter_test.dart';
import 'package:aifarma/src/chat/services/chat_service.dart';

void main() {
  group('ChatService', () {
    late ChatService service;

    setUp(() {
      service = ChatService();
    });

    test('should generate unique message IDs', () {
      final id1 = service.generateMessageId();
      final id2 = service.generateMessageId();

      expect(id1, isNotEmpty);
      expect(id2, isNotEmpty);
      expect(id1, isNot(equals(id2)));
    });

    test('should stream AI response word by word', () async {
      final stream = service.getAiResponse('test question');
      final chunks = await stream.toList();

      expect(chunks, isNotEmpty);
      expect(chunks.join(''), contains('test question'));
    });
  });
}
```

#### Repository Layer Tests

```dart
// test/unit/repositories/chat_repository_test.dart
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:aifarma/src/chat/repository/chat_repository.dart';
import 'package:aifarma/src/chat/services/chat_service.dart';
import 'package:aifarma/src/chat/data/chat_dao.dart';

@GenerateMocks([ChatService, ChatDao])
import 'chat_repository_test.mocks.dart';

void main() {
  group('ChatRepository', () {
    late ChatRepository repository;
    late MockChatService mockService;
    late MockChatDao mockDao;

    setUp(() {
      mockService = MockChatService();
      mockDao = MockChatDao();
      repository = ChatRepository(mockService, mockDao);
    });

    test('should save user message to database', () async {
      when(mockDao.insertMessage(any)).thenAnswer((_) async => 1);

      await repository.saveUserMessage('Hello');

      verify(mockDao.insertMessage(any)).called(1);
    });

    test('should get streaming response from service', () {
      final mockStream = Stream.value('response');
      when(mockService.getAiResponse(any)).thenAnswer((_) => mockStream);

      final stream = repository.getStreamingResponse('query');

      expect(stream, equals(mockStream));
    });
  });
}
```

#### DAO/Database Tests

```dart
// test/unit/data/chat_dao_test.dart
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:aifarma/src/shared/global_provider/drift_manager/app_database.dart';
import 'package:aifarma/src/chat/data/chat_dao.dart';

void main() {
  late AppDatabase database;
  late ChatDao dao;

  setUp(() {
    // Create in-memory database for testing
    database = AppDatabase.test(NativeDatabase.memory());
    dao = ChatDao(database);
  });

  tearDown(() async {
    await database.close();
  });

  group('ChatDao', () {
    test('should insert and retrieve messages', () async {
      final message = ChatMessagesCompanion.insert(
        messageId: 'test-123',
        content: 'Test message',
        isUser: true,
        timestamp: DateTime.now(),
      );

      await dao.insertMessage(message);
      final messages = await dao.getAllMessages();

      expect(messages.length, 1);
      expect(messages.first.content, 'Test message');
    });

    test('should watch messages stream', () async {
      final stream = dao.watchAllMessages();

      expect(stream, emits(isEmpty));

      await dao.insertMessage(ChatMessagesCompanion.insert(
        messageId: 'test-456',
        content: 'New message',
        isUser: false,
        timestamp: DateTime.now(),
      ));

      await expectLater(
        stream,
        emits(predicate((List messages) => messages.length == 1)),
      );
    });

    test('should delete all messages', () async {
      await dao.insertMessage(ChatMessagesCompanion.insert(
        messageId: 'test-789',
        content: 'Message to delete',
        isUser: true,
        timestamp: DateTime.now(),
      ));

      await dao.deleteAllMessages();
      final messages = await dao.getAllMessages();

      expect(messages, isEmpty);
    });
  });
}
```

### Widget Testing

```dart
// test/widget/chat/chat_screen_test.dart
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:aifarma/src/chat/view/chat_screen.dart';
import 'package:aifarma/src/chat/providers/chat_providers.dart';
import 'package:aifarma/src/chat/models/chat_state.dart';

void main() {
  testWidgets('ChatScreen should display empty state', (tester) async {
    await tester.pumpWidget(
      ProviderScope(
        child: MaterialApp(
          home: ChatScreen(),
        ),
      ),
    );

    expect(find.text('Start a conversation'), findsOneWidget);
    expect(find.byIcon(Icons.chat_bubble_outline), findsOneWidget);
  });

  testWidgets('ChatScreen should display messages', (tester) async {
    final mockState = ChatState(
      messages: [
        Message(
          id: '1',
          content: 'Hello',
          type: MessageType.user,
          timestamp: DateTime.now(),
        ),
      ],
    );

    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          chatProvider.overrideWith((ref) => mockState),
        ],
        child: MaterialApp(
          home: ChatScreen(),
        ),
      ),
    );

    expect(find.text('Hello'), findsOneWidget);
  });
}
```

### Integration Testing

```dart
// integration_test/chat_flow_test.dart
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:aifarma/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('Chat Flow', () {
    testWidgets('complete chat conversation flow', (tester) async {
      app.main();
      await tester.pumpAndSettle();

      // Login
      await tester.enterText(find.byType(TextField).first, 'test@example.com');
      await tester.enterText(find.byType(TextField).last, 'password');
      await tester.tap(find.text('Login'));
      await tester.pumpAndSettle();

      // Navigate to chat
      await tester.tap(find.byIcon(Icons.chat));
      await tester.pumpAndSettle();

      // Send message
      await tester.enterText(find.byType(TextField), 'Hello AI');
      await tester.tap(find.byIcon(Icons.send));
      await tester.pumpAndSettle();

      // Verify message appears
      expect(find.text('Hello AI'), findsOneWidget);

      // Wait for AI response
      await tester.pumpAndSettle(Duration(seconds: 3));

      // Verify AI response appears
      expect(find.byType(MessageBubble), findsAtLeastNWidgets(2));
    });
  });
}
```

### Test Helpers

```dart
// test/helpers/test_database.dart
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:aifarma/src/shared/global_provider/drift_manager/app_database.dart';

/// Creates a test database with in-memory storage
AppDatabase createTestDatabase() {
  return AppDatabase.test(NativeDatabase.memory());
}

/// Extension for test database constructor
extension TestAppDatabase on AppDatabase {
  static AppDatabase test(QueryExecutor executor) {
    return AppDatabase._internal(executor);
  }

  AppDatabase._internal(QueryExecutor executor) : super.internal(executor);
}
```

```dart
// test/helpers/mocks.dart
import 'package:mockito/annotations.dart';
import 'package:aifarma/src/chat/services/chat_service.dart';
import 'package:aifarma/src/chat/data/chat_dao.dart';
import 'package:aifarma/src/authentication/service/auth_service.dart';

@GenerateMocks([
  ChatService,
  ChatDao,
  AuthService,
])
void main() {}
```

### Running Tests

```bash
# Run all tests
flutter test

# Run specific test file
flutter test test/unit/services/chat_service_test.dart

# Run tests with coverage
flutter test --coverage
genhtml coverage/lcov.info -o coverage/html
open coverage/html/index.html

# Run integration tests
flutter test integration_test/

# Run tests in watch mode (requires flutter_test)
flutter test --watch
```

### Test Best Practices

1. **AAA Pattern**: Arrange, Act, Assert
2. **Mock External Dependencies**: Use mockito for services and APIs
3. **Test Database**: Use in-memory database for DAO tests
4. **Provider Overrides**: Use ProviderScope overrides for widget tests
5. **Golden Tests**: Use for visual regression testing
6. **Coverage Target**: Aim for >80% code coverage
7. **Fast Tests**: Unit tests should run in milliseconds
8. **Isolated Tests**: Each test should be independent
9. **Descriptive Names**: Use clear test descriptions
10. **Test Edge Cases**: Include error scenarios and edge cases

---

## Additional Notes

- Always run build_runner after creating/modifying generated files
- Keep business logic in repositories/services, NOT in widgets
- Use `AsyncValue` for loading/error/data states
- Prefer composition over inheritance
- Keep widgets small and focused
- Use const constructors wherever possible for performance
- Write tests for all business logic
- Use dependency injection for testability
- Mock external dependencies in tests
- Run tests before committing code

---

**Last Updated:** September 30, 2025