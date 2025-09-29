import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'colors.dart';

import '../../../gen/fonts.gen.dart';
import 'typography.dart';
import 'widget/component.dart';

part 'theme.g.dart';

ThemeData defaultLightTheme() {
  final colorScheme = defaultLightColorTheme();
  final baseTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    scaffoldBackgroundColor: const Color(0xFFF6F6F6),
    fontFamily: FontFamily.rubik,
    colorScheme: colorScheme,
    typography: aifarmaTypography,
    appBarTheme: lightAppBarTheme,
    tabBarTheme: lightTabBarTheme,
    extensions: colorsExtension,
  );

  return baseTheme;
}

ThemeData defaultDarkTheme() {
  final colorScheme = defaultDarkColorTheme();
  final baseTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: const Color(0xFF090909),
    fontFamily: FontFamily.rubik,
    colorScheme: colorScheme,
    typography: aifarmaTypography,
    appBarTheme: darkAppBarTheme,
    extensions: colorsExtension,
  );

  return baseTheme;
}

@riverpod
class ThemeNotifier extends _$ThemeNotifier {
  @override
  ThemeData build() {
    return defaultLightTheme();
  }

  void toggleTheme() {
    state = state.brightness == Brightness.light
        ? defaultDarkTheme()
        : defaultLightTheme();
  }
}
