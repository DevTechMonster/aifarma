import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import 'app_database.dart';

/// Manages database operations like clearing, resetting, exporting, etc.
class DatabaseManager {
  final AppDatabase _database;

  DatabaseManager(this._database);

  /// Clear all data from all tables
  /// This removes all records but keeps the schema intact
  Future<void> clearAllData() async {
    await _database.transaction(() async {
      // Add delete statements for each table here when tables are created
      // Example:
      // await _database.delete(_database.chatMessages).go();
      // await _database.delete(_database.authTokens).go();
    });
  }

  /// Clear specific feature data
  /// Add methods for each feature as needed

  // Example:
  // Future<void> clearChatData() async {
  //   await _database.delete(_database.chatMessages).go();
  // }

  // Future<void> clearAuthData() async {
  //   await _database.delete(_database.authTokens).go();
  // }

  /// Delete the database file completely (for complete reset)
  /// This will remove all data and the database file itself
  Future<void> deleteDatabase() async {
    try {
      final dbFolder = await getApplicationDocumentsDirectory();
      final file = File(p.join(dbFolder.path, 'app_database.sqlite'));
      if (await file.exists()) {
        await file.delete();
      }
    } catch (e) {
      rethrow;
    }
  }

  /// Get the database file size in bytes
  Future<int> getDatabaseSize() async {
    try {
      final dbFolder = await getApplicationDocumentsDirectory();
      final file = File(p.join(dbFolder.path, 'app_database.sqlite'));
      if (await file.exists()) {
        return await file.length();
      }
      return 0;
    } catch (e) {
      return 0;
    }
  }

  /// Get the database file size in a human-readable format
  Future<String> getFormattedDatabaseSize() async {
    final bytes = await getDatabaseSize();
    if (bytes < 1024) return '$bytes B';
    if (bytes < 1024 * 1024) return '${(bytes / 1024).toStringAsFixed(2)} KB';
    return '${(bytes / (1024 * 1024)).toStringAsFixed(2)} MB';
  }

  /// Export database to a backup file
  /// Returns the path to the backup file
  Future<String> exportDatabase() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final sourceFile = File(p.join(dbFolder.path, 'app_database.sqlite'));

    if (!await sourceFile.exists()) {
      throw Exception('Database file does not exist');
    }

    final timestamp = DateTime.now().millisecondsSinceEpoch;
    final backupFile = File(p.join(
      dbFolder.path,
      'app_database_backup_$timestamp.sqlite',
    ),);

    await sourceFile.copy(backupFile.path);
    return backupFile.path;
  }

  /// Import database from a backup file
  /// This will replace the current database with the backup
  /// NOTE: After calling this, you must invalidate the appDatabaseProvider
  /// to create a new database instance
  Future<void> importDatabase(String backupPath) async {
    final backupFile = File(backupPath);

    if (!await backupFile.exists()) {
      throw Exception('Backup file does not exist');
    }

    // Don't close the database here - let the provider handle it
    // Just replace the file - database will be reopened on next access
    final dbFolder = await getApplicationDocumentsDirectory();
    final targetFile = File(p.join(dbFolder.path, 'app_database.sqlite'));

    await backupFile.copy(targetFile.path);
  }

  /// Get database information
  Future<Map<String, dynamic>> getDatabaseInfo() async {
    final size = await getDatabaseSize();
    final formattedSize = await getFormattedDatabaseSize();
    final dbFolder = await getApplicationDocumentsDirectory();
    final dbPath = p.join(dbFolder.path, 'app_database.sqlite');

    return {
      'path': dbPath,
      'size_bytes': size,
      'size_formatted': formattedSize,
      'schema_version': _database.schemaVersion,
    };
  }
}