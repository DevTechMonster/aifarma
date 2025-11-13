// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_lifecycle_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Provider for AppLifecycleService

@ProviderFor(appLifecycleService)
const appLifecycleServiceProvider = AppLifecycleServiceProvider._();

/// Provider for AppLifecycleService

final class AppLifecycleServiceProvider
    extends
        $FunctionalProvider<
          AppLifecycleService,
          AppLifecycleService,
          AppLifecycleService
        >
    with $Provider<AppLifecycleService> {
  /// Provider for AppLifecycleService
  const AppLifecycleServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'appLifecycleServiceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$appLifecycleServiceHash();

  @$internal
  @override
  $ProviderElement<AppLifecycleService> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  AppLifecycleService create(Ref ref) {
    return appLifecycleService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AppLifecycleService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AppLifecycleService>(value),
    );
  }
}

String _$appLifecycleServiceHash() =>
    r'36cc5f44428416c5290ee7dc2c00013bdf836a00';

/// Provider to watch app lifecycle state

@ProviderFor(appLifecycleState)
const appLifecycleStateProvider = AppLifecycleStateProvider._();

/// Provider to watch app lifecycle state

final class AppLifecycleStateProvider
    extends
        $FunctionalProvider<
          AsyncValue<AppLifecycleState>,
          AppLifecycleState,
          Stream<AppLifecycleState>
        >
    with
        $FutureModifier<AppLifecycleState>,
        $StreamProvider<AppLifecycleState> {
  /// Provider to watch app lifecycle state
  const AppLifecycleStateProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'appLifecycleStateProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$appLifecycleStateHash();

  @$internal
  @override
  $StreamProviderElement<AppLifecycleState> $createElement(
    $ProviderPointer pointer,
  ) => $StreamProviderElement(pointer);

  @override
  Stream<AppLifecycleState> create(Ref ref) {
    return appLifecycleState(ref);
  }
}

String _$appLifecycleStateHash() => r'daa865bd99b59b170a947f8c60948afe8a2e164a';

/// Provider to check if app is in background

@ProviderFor(isAppInBackground)
const isAppInBackgroundProvider = IsAppInBackgroundProvider._();

/// Provider to check if app is in background

final class IsAppInBackgroundProvider
    extends $FunctionalProvider<bool, bool, bool>
    with $Provider<bool> {
  /// Provider to check if app is in background
  const IsAppInBackgroundProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'isAppInBackgroundProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$isAppInBackgroundHash();

  @$internal
  @override
  $ProviderElement<bool> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  bool create(Ref ref) {
    return isAppInBackground(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$isAppInBackgroundHash() => r'75d2c343820e9477ce483d241a38b18e947c94fc';
