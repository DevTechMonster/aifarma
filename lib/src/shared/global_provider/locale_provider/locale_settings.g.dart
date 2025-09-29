// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'locale_settings.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(LocaleSettings)
const localeSettingsProvider = LocaleSettingsProvider._();

final class LocaleSettingsProvider
    extends $NotifierProvider<LocaleSettings, Locale> {
  const LocaleSettingsProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'localeSettingsProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$localeSettingsHash();

  @$internal
  @override
  LocaleSettings create() => LocaleSettings();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Locale value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Locale>(value),
    );
  }
}

String _$localeSettingsHash() => r'a7d17d524b52ef29ca08a523ea812538ef2ef43e';

abstract class _$LocaleSettings extends $Notifier<Locale> {
  Locale build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<Locale, Locale>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<Locale, Locale>, Locale, Object?, Object?>;
    element.handleValue(ref, created);
  }
}
