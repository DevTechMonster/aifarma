import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'app_database.dart';
import 'database_manager.dart';

part 'database_provider.g.dart';

/// Provides the main app database instance
/// The database is automatically closed when the provider is disposed
@riverpod
AppDatabase appDatabase(Ref ref) {
  final database = AppDatabase();
  ref.onDispose(() => database.close());
  return database;
}

/// Provides the database manager for utility operations
/// Use this to clear data, export/import database, etc.
@riverpod
DatabaseManager databaseManager(Ref ref) {
  final database = ref.watch(appDatabaseProvider);
  return DatabaseManager(database);
}