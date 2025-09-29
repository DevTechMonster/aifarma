import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'locale_settings.g.dart';

@riverpod
class LocaleSettings extends _$LocaleSettings {
  static List<Locale> get supportedLocale {
    return [const Locale('en', 'MY'), const Locale('ms', 'MY')];
  }

  @override
  Locale build() {
    return _getInitialLocale();
  }

  Locale _getInitialLocale() {
    final systemLocale = PlatformDispatcher.instance.locale;
    final systemLanguageCode = systemLocale.languageCode;

    if (systemLanguageCode == "en") {
      return const Locale('en', 'MY');
    } else {
      return supportedLocale.first;
    }
  }

  void setLocale(Locale locale) {
    state = locale;
  }
}
