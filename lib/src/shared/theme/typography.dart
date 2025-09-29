import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../../gen/fonts.gen.dart';

final typography = Typography.material2021(platform: defaultTargetPlatform);

final aifarmaTypography = Typography.material2021(platform: defaultTargetPlatform, englishLike: swiftSurveyTextTheme, black: swiftSurveyTextTheme, dense: swiftSurveyTextTheme, tall: swiftSurveyTextTheme, white: swiftSurveyTextTheme);

// For the sanity of the reader, avoid word wrapping which results in multiline
// In VSCode, use Cmd+K, S

/// Reference to Material 3 typography, usage should be via
/// `Theme.of(context).textTheme` or context.textTheme.
// ignore: unused_element,
const TextTheme _englishLike = TextTheme(
  displayLarge: TextStyle(debugLabel: 'englishLike displayLarge 2021', inherit: false, fontSize: 57.0, fontWeight: FontWeight.w400, letterSpacing: -0.25, height: 1.12, textBaseline: TextBaseline.alphabetic, leadingDistribution: TextLeadingDistribution.even),
  displayMedium: TextStyle(debugLabel: 'englishLike displayMedium 2021', inherit: false, fontSize: 45.0, fontWeight: FontWeight.w400, letterSpacing: 0.0, height: 1.16, textBaseline: TextBaseline.alphabetic, leadingDistribution: TextLeadingDistribution.even),
  displaySmall: TextStyle(debugLabel: 'englishLike displaySmall 2021', inherit: false, fontSize: 36.0, fontWeight: FontWeight.w400, letterSpacing: 0.0, height: 1.22, textBaseline: TextBaseline.alphabetic, leadingDistribution: TextLeadingDistribution.even),
  headlineLarge: TextStyle(debugLabel: 'englishLike headlineLarge 2021', inherit: false, fontSize: 32.0, fontWeight: FontWeight.w400, letterSpacing: 0.0, height: 1.25, textBaseline: TextBaseline.alphabetic, leadingDistribution: TextLeadingDistribution.even),
  headlineMedium: TextStyle(debugLabel: 'englishLike headlineMedium 2021', inherit: false, fontSize: 28.0, fontWeight: FontWeight.w400, letterSpacing: 0.0, height: 1.29, textBaseline: TextBaseline.alphabetic, leadingDistribution: TextLeadingDistribution.even),
  headlineSmall: TextStyle(debugLabel: 'englishLike headlineSmall 2021', inherit: false, fontSize: 24.0, fontWeight: FontWeight.w400, letterSpacing: 0.0, height: 1.33, textBaseline: TextBaseline.alphabetic, leadingDistribution: TextLeadingDistribution.even),
  titleLarge: TextStyle(debugLabel: 'englishLike titleLarge 2021', inherit: false, fontSize: 22.0, fontWeight: FontWeight.w400, letterSpacing: 0.0, height: 1.27, textBaseline: TextBaseline.alphabetic, leadingDistribution: TextLeadingDistribution.even),
  titleMedium: TextStyle(debugLabel: 'englishLike titleMedium 2021', inherit: false, fontSize: 16.0, fontWeight: FontWeight.w500, letterSpacing: 0.15, height: 1.50, textBaseline: TextBaseline.alphabetic, leadingDistribution: TextLeadingDistribution.even),
  titleSmall: TextStyle(debugLabel: 'englishLike titleSmall 2021', inherit: false, fontSize: 14.0, fontWeight: FontWeight.w500, letterSpacing: 0.1, height: 1.43, textBaseline: TextBaseline.alphabetic, leadingDistribution: TextLeadingDistribution.even),
  labelLarge: TextStyle(debugLabel: 'englishLike labelLarge 2021', inherit: false, fontSize: 14.0, fontWeight: FontWeight.w500, letterSpacing: 0.1, height: 1.43, textBaseline: TextBaseline.alphabetic, leadingDistribution: TextLeadingDistribution.even),
  labelMedium: TextStyle(debugLabel: 'englishLike labelMedium 2021', inherit: false, fontSize: 12.0, fontWeight: FontWeight.w500, letterSpacing: 0.5, height: 1.33, textBaseline: TextBaseline.alphabetic, leadingDistribution: TextLeadingDistribution.even),
  labelSmall: TextStyle(debugLabel: 'englishLike labelSmall 2021', inherit: false, fontSize: 11.0, fontWeight: FontWeight.w500, letterSpacing: 0.5, height: 1.45, textBaseline: TextBaseline.alphabetic, leadingDistribution: TextLeadingDistribution.even),
  bodyLarge: TextStyle(debugLabel: 'englishLike bodyLarge 2021', inherit: false, fontSize: 16.0, fontWeight: FontWeight.w400, letterSpacing: 0.5, height: 1.50, textBaseline: TextBaseline.alphabetic, leadingDistribution: TextLeadingDistribution.even),
  bodyMedium: TextStyle(debugLabel: 'englishLike bodyMedium 2021', inherit: false, fontSize: 14.0, fontWeight: FontWeight.w400, letterSpacing: 0.25, height: 1.43, textBaseline: TextBaseline.alphabetic, leadingDistribution: TextLeadingDistribution.even),
  bodySmall: TextStyle(debugLabel: 'englishLike bodySmall 2021', inherit: false, fontSize: 12.0, fontWeight: FontWeight.w400, letterSpacing: 0.4, height: 1.33, textBaseline: TextBaseline.alphabetic, leadingDistribution: TextLeadingDistribution.even),
);

final TextTheme swiftSurveyTextTheme = const TextTheme(
  displayLarge: TextStyle(debugLabel: 'englishLike displayLarge 2021', inherit: false, fontSize: 57.0, fontWeight: FontWeight.w400, letterSpacing: -0.25, height: 1.12, textBaseline: TextBaseline.alphabetic, leadingDistribution: TextLeadingDistribution.even),
  displayMedium: TextStyle(debugLabel: 'englishLike displayMedium 2021', inherit: false, fontSize: 45.0, fontWeight: FontWeight.w400, letterSpacing: 0.0, height: 1.16, textBaseline: TextBaseline.alphabetic, leadingDistribution: TextLeadingDistribution.even),
  displaySmall: TextStyle(debugLabel: 'englishLike displaySmall 2021', inherit: false, fontSize: 36.0, fontWeight: FontWeight.w400, letterSpacing: 0.0, height: 1.22, textBaseline: TextBaseline.alphabetic, leadingDistribution: TextLeadingDistribution.even),
  headlineLarge: TextStyle(debugLabel: 'englishLike headlineLarge 2021', inherit: false, fontSize: 32.0, fontWeight: FontWeight.w400, letterSpacing: 0.0, height: 1.25, textBaseline: TextBaseline.alphabetic, leadingDistribution: TextLeadingDistribution.even),
  headlineMedium: TextStyle(debugLabel: 'englishLike headlineMedium 2021', inherit: false, fontSize: 28.0, fontWeight: FontWeight.w400, letterSpacing: 0.0, height: 1.29, textBaseline: TextBaseline.alphabetic, leadingDistribution: TextLeadingDistribution.even),
  headlineSmall: TextStyle(debugLabel: 'englishLike headlineSmall 2021', inherit: false, fontSize: 24.0, fontWeight: FontWeight.w400, letterSpacing: 0.0, height: 1.33, textBaseline: TextBaseline.alphabetic, leadingDistribution: TextLeadingDistribution.even),
  titleLarge: TextStyle(debugLabel: 'englishLike titleLarge 2021', inherit: false, fontSize: 22.0, fontWeight: FontWeight.w400, letterSpacing: 0.0, height: 1.27, textBaseline: TextBaseline.alphabetic, leadingDistribution: TextLeadingDistribution.even),
  titleMedium: TextStyle(debugLabel: 'englishLike titleMedium 2021', inherit: false, fontSize: 16.0, fontWeight: FontWeight.w500, letterSpacing: 0.15, height: 1.50, textBaseline: TextBaseline.alphabetic, leadingDistribution: TextLeadingDistribution.even),
  titleSmall: TextStyle(debugLabel: 'englishLike titleSmall 2021', inherit: false, fontSize: 14.0, fontWeight: FontWeight.w500, letterSpacing: 0.1, height: 1.43, textBaseline: TextBaseline.alphabetic, leadingDistribution: TextLeadingDistribution.even),
  labelLarge: TextStyle(debugLabel: 'englishLike labelLarge 2021', inherit: false, fontSize: 14.0, fontWeight: FontWeight.w500, letterSpacing: 0.1, height: 1.43, textBaseline: TextBaseline.alphabetic, leadingDistribution: TextLeadingDistribution.even),
  labelMedium: TextStyle(debugLabel: 'englishLike labelMedium 2021', inherit: false, fontSize: 12.0, fontWeight: FontWeight.w500, letterSpacing: 0.5, height: 1.33, textBaseline: TextBaseline.alphabetic, leadingDistribution: TextLeadingDistribution.even),
  labelSmall: TextStyle(debugLabel: 'englishLike labelSmall 2021', inherit: false, fontSize: 11.0, fontWeight: FontWeight.w500, letterSpacing: 0.5, height: 1.45, textBaseline: TextBaseline.alphabetic, leadingDistribution: TextLeadingDistribution.even),
  bodyLarge: TextStyle(debugLabel: 'englishLike bodyLarge 2021', inherit: false, fontSize: 16.0, fontWeight: FontWeight.w400, letterSpacing: 0.5, height: 1.50, textBaseline: TextBaseline.alphabetic, leadingDistribution: TextLeadingDistribution.even),
  bodyMedium: TextStyle(debugLabel: 'englishLike bodyMedium 2021', inherit: false, fontSize: 14.0, fontWeight: FontWeight.w400, letterSpacing: 0.25, height: 1.43, textBaseline: TextBaseline.alphabetic, leadingDistribution: TextLeadingDistribution.even),
  bodySmall: TextStyle(debugLabel: 'englishLike bodySmall 2021', inherit: false, fontSize: 12.0, fontWeight: FontWeight.w400, letterSpacing: 0.4, height: 1.33, textBaseline: TextBaseline.alphabetic, leadingDistribution: TextLeadingDistribution.even),
).apply(displayColor: Colors.black,bodyColor: Colors.black,fontFamily: FontFamily.rubik);

