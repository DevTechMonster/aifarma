// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'router.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(authChangeNotifier)
const authChangeProvider = AuthChangeNotifierProvider._();

final class AuthChangeNotifierProvider extends $FunctionalProvider<
    AuthChangeNotifier,
    AuthChangeNotifier,
    AuthChangeNotifier> with $Provider<AuthChangeNotifier> {
  const AuthChangeNotifierProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'authChangeProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$authChangeNotifierHash();

  @$internal
  @override
  $ProviderElement<AuthChangeNotifier> $createElement(
          $ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  AuthChangeNotifier create(Ref ref) {
    return authChangeNotifier(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AuthChangeNotifier value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AuthChangeNotifier>(value),
    );
  }
}

String _$authChangeNotifierHash() =>
    r'0e158b99d44e035cbcb3cbeec5de99bc9d69eec5';

@ProviderFor(router)
const routerProvider = RouterProvider._();

final class RouterProvider
    extends $FunctionalProvider<GoRouter, GoRouter, GoRouter>
    with $Provider<GoRouter> {
  const RouterProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'routerProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$routerHash();

  @$internal
  @override
  $ProviderElement<GoRouter> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  GoRouter create(Ref ref) {
    return router(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GoRouter value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GoRouter>(value),
    );
  }
}

String _$routerHash() => r'e2e045ada953ef140cd1a04d5e8a4d4e6ad5bf75';
