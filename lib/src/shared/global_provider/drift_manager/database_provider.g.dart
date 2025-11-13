// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Provides the main app database instance
/// The database is automatically closed when the provider is disposed

@ProviderFor(appDatabase)
const appDatabaseProvider = AppDatabaseProvider._();

/// Provides the main app database instance
/// The database is automatically closed when the provider is disposed

final class AppDatabaseProvider
    extends $FunctionalProvider<AppDatabase, AppDatabase, AppDatabase>
    with $Provider<AppDatabase> {
  /// Provides the main app database instance
  /// The database is automatically closed when the provider is disposed
  const AppDatabaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'appDatabaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$appDatabaseHash();

  @$internal
  @override
  $ProviderElement<AppDatabase> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  AppDatabase create(Ref ref) {
    return appDatabase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AppDatabase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AppDatabase>(value),
    );
  }
}

String _$appDatabaseHash() => r'fc30bd194c5eb2088ae8f4001dfacaf74d135976';

/// Provides the database manager for utility operations
/// Use this to clear data, export/import database, etc.

@ProviderFor(databaseManager)
const databaseManagerProvider = DatabaseManagerProvider._();

/// Provides the database manager for utility operations
/// Use this to clear data, export/import database, etc.

final class DatabaseManagerProvider
    extends
        $FunctionalProvider<DatabaseManager, DatabaseManager, DatabaseManager>
    with $Provider<DatabaseManager> {
  /// Provides the database manager for utility operations
  /// Use this to clear data, export/import database, etc.
  const DatabaseManagerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'databaseManagerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$databaseManagerHash();

  @$internal
  @override
  $ProviderElement<DatabaseManager> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  DatabaseManager create(Ref ref) {
    return databaseManager(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(DatabaseManager value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<DatabaseManager>(value),
    );
  }
}

String _$databaseManagerHash() => r'7d8303eaaf14f962c34734d1e346ec16c74d5327';
