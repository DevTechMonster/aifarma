// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(httpClient)
const httpClientProvider = HttpClientProvider._();

final class HttpClientProvider
    extends $FunctionalProvider<http.Client, http.Client, http.Client>
    with $Provider<http.Client> {
  const HttpClientProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'httpClientProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$httpClientHash();

  @$internal
  @override
  $ProviderElement<http.Client> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  http.Client create(Ref ref) {
    return httpClient(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(http.Client value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<http.Client>(value),
    );
  }
}

String _$httpClientHash() => r'b33fffe4caf40c78a782f54a54f0a184a0e0d567';

@ProviderFor(apiBaseUrl)
const apiBaseUrlProvider = ApiBaseUrlProvider._();

final class ApiBaseUrlProvider
    extends $FunctionalProvider<String, String, String>
    with $Provider<String> {
  const ApiBaseUrlProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'apiBaseUrlProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$apiBaseUrlHash();

  @$internal
  @override
  $ProviderElement<String> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  String create(Ref ref) {
    return apiBaseUrl(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String>(value),
    );
  }
}

String _$apiBaseUrlHash() => r'75e898f01baf98af7bd90368504c63ecc24c2a7d';

@ProviderFor(aifarmaCoreService)
const aifarmaCoreServiceProvider = AifarmaCoreServiceProvider._();

final class AifarmaCoreServiceProvider
    extends
        $FunctionalProvider<
          AifarmaCoreService,
          AifarmaCoreService,
          AifarmaCoreService
        >
    with $Provider<AifarmaCoreService> {
  const AifarmaCoreServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'aifarmaCoreServiceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$aifarmaCoreServiceHash();

  @$internal
  @override
  $ProviderElement<AifarmaCoreService> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  AifarmaCoreService create(Ref ref) {
    return aifarmaCoreService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AifarmaCoreService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AifarmaCoreService>(value),
    );
  }
}

String _$aifarmaCoreServiceHash() =>
    r'9c35157e9e1e5f169bb3c29e5ddd063f436a8024';
