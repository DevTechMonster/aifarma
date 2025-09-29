import 'package:flutter/material.dart';

ColorScheme defaultLightColorTheme() {
  const colorScheme = ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xFFC3D700),
    onPrimary: Colors.white,
    secondary: Color(0xFFACBE00),
    onSecondary: Colors.white,
    error: Color(0xFFEB5757),
    onError: Colors.white,
    // background: Colors.white,
    // onBackground: Colors.black,
    surface: Color(0XFFF6F6F6),
    onSurface: Colors.black,
    surfaceTint: Colors.white,
  );

  return colorScheme;
}

ColorScheme defaultDarkColorTheme() {
  const colorScheme = ColorScheme(
    brightness: Brightness.dark,
    primary: Color(0xFFC3D700),
    onPrimary: Colors.black,
    secondary: Color(0xFFACBE00),
    onSecondary: Colors.black,
    error: Color(0xFFEB5757),
    onError: Colors.black,
    // background: Colors.white,
    // onBackground: Colors.black,
    surface: Color(0XFF090909),
    onSurface: Colors.white,
    surfaceTint: Colors.black,
  );

  return colorScheme;
}

final List<AppColorsExtension> colorsExtension = [
  AppColorsExtension(
    lightYellowGreen: const Color(0xFFEBF0B4),
    darkYellowGreen: const Color(0xFF79850A),
    softViolet: const Color(0xFFC3BDEA),
    lightViolet: const Color(0xFFD6D0FD),
    softOrange: const Color(0xFFEBD9A8),
    lightOrange: const Color(0xFFFEECBA),
    softBlue: const Color(0xFFB4C6EC),
    lightBlue: const Color(0xFFC6D8FF),
    softPink: const Color(0xFFE7C3BB),
    lightPink: const Color(0xFFFDD8D0),
    blushPink: const Color(0xFFFF7373),
    lightGrey: const Color(0xFFA6A6A6),
    fadeLightGrey: const Color(0xFFF0F0F0),
    agedGrey: const Color(0xFF666666),
    wolfGrey: const Color(0xFFC3C3C3),
    alto: const Color(0xFFDDDDDD),
    tusk: const Color(0xFFEBF0B4),
    pistachio: const Color(0xFFACBD05),
    sage: const Color(0xFFA3A783),
    gallery: const Color(0xFFECECEC),
    pippin: const Color(0xFFFFE3E3),
    burntSienna: const Color(0xFFEB5757),
    brightGrey: const Color(0xFFE6E6E6),
    dustyGrey: const Color(0xFFE8E8E8),
    mercury: const Color(0xFFE9E9E9),
    silver: const Color(0xFFBDBDBD),
    darkSkyBlue: const Color(0xFF3585E3),
    darkGreenBlack: const Color(0xFF79850A),
    transparentBlack: Colors.black.withValues(alpha: 0.6),
    transparentBlack2: Colors.black.withValues(alpha: 0.3),
    smokeWhite: const Color(0xFFEAEAEA),
    smokeGrey: const Color(0xFFD9D9D9),
    codGray: const Color(0xFF0D0D0D),
    madras: const Color(0xFF383D00),
    whiteGrey: const Color(0xFFF2F2F2),
    fieldGrey: const Color(0xFFFAF9F6),
    cameraGrey: const Color(0xFF414141),
    disabledGrey: const Color(0xFFBABABA),
    hazeGrey: const Color(0xFFE3E3E3),
  ),
];

class AppColorsExtension extends ThemeExtension<AppColorsExtension> {
  final Color lightYellowGreen;
  final Color darkYellowGreen;
  final Color softViolet;
  final Color lightViolet;
  final Color softOrange;
  final Color lightOrange;
  final Color softBlue;
  final Color lightBlue;
  final Color softPink;
  final Color lightPink;
  final Color blushPink;
  final Color alto;
  final Color tusk;
  final Color pistachio;
  final Color lightGrey;
  final Color fadeLightGrey;
  final Color agedGrey;
  final Color wolfGrey;
  final Color sage;
  final Color gallery;
  final Color pippin;
  final Color burntSienna;
  final Color brightGrey;
  final Color dustyGrey;
  final Color mercury;
  final Color silver;
  final Color darkSkyBlue;
  final Color madras;
  final Color darkGreenBlack;
  final Color transparentBlack;
  final Color transparentBlack2;
  final Color smokeWhite;
  final Color smokeGrey;
  final Color codGray;
  final Color whiteGrey;
  final Color fieldGrey;
  final Color cameraGrey;
  final Color disabledGrey;
  final Color hazeGrey;

  const AppColorsExtension({
    required this.lightYellowGreen,
    required this.darkYellowGreen,
    required this.softViolet,
    required this.lightViolet,
    required this.softOrange,
    required this.lightOrange,
    required this.softBlue,
    required this.lightBlue,
    required this.softPink,
    required this.lightPink,
    required this.blushPink,
    required this.alto,
    required this.tusk,
    required this.pistachio,
    required this.lightGrey,
    required this.fadeLightGrey,
    required this.agedGrey,
    required this.wolfGrey,
    required this.sage,
    required this.gallery,
    required this.pippin,
    required this.burntSienna,
    required this.brightGrey,
    required this.dustyGrey,
    required this.mercury,
    required this.silver,
    required this.darkSkyBlue,
    required this.madras,
    required this.darkGreenBlack,
    required this.transparentBlack,
    required this.transparentBlack2,
    required this.smokeWhite,
    required this.smokeGrey,
    required this.codGray,
    required this.whiteGrey,
    required this.fieldGrey,
    required this.cameraGrey,
    required this.disabledGrey,
    required this.hazeGrey,
  });

  @override
  ThemeExtension<AppColorsExtension> copyWith({
    Color? primary,
    Color? secondary,
    Color? error,
    Color? lightYellowGreen,
    Color? darkYellowGreen,
    Color? softViolet,
    Color? lightViolet,
    Color? softOrange,
    Color? lightOrange,
    Color? softBlue,
    Color? lightBlue,
    Color? softPink,
    Color? lightPink,
    Color? blushPink,
    Color? alto,
    Color? tusk,
    Color? pistachio,
    Color? lightGrey,
    Color? fadeLightGrey,
    Color? agedGrey,
    Color? wolfGrey,
    Color? sage,
    Color? gallery,
    Color? pippin,
    Color? burntSienna,
    Color? brightGrey,
    Color? dustyGrey,
    Color? mercury,
    Color? silver,
    Color? darkSkyBlue,
    Color? madras,
    Color? darkGreenBlack,
    Color? transparentBlack,
    Color? transparentBlack2,
    Color? smokeWhite,
    Color? smokeGrey,
    Color? codGray,
    Color? whiteGrey,
    Color? fieldGrey,
    Color? cameraGrey,
    Color? disabledGrey,
    Color? hazeGrey,
  }) {
    return AppColorsExtension(
      lightYellowGreen: lightYellowGreen ?? this.lightYellowGreen,
      darkYellowGreen: darkYellowGreen ?? this.darkYellowGreen,
      softViolet: softViolet ?? this.softViolet,
      lightViolet: lightViolet ?? this.lightViolet,
      softOrange: softOrange ?? this.softOrange,
      lightOrange: lightOrange ?? this.lightOrange,
      softBlue: softBlue ?? this.softBlue,
      lightBlue: lightBlue ?? this.lightBlue,
      softPink: softPink ?? this.softPink,
      lightPink: lightPink ?? this.lightPink,
      blushPink: blushPink ?? this.blushPink,
      alto: alto ?? this.alto,
      tusk: tusk ?? this.tusk,
      pistachio: pistachio ?? this.pistachio,
      lightGrey: lightGrey ?? this.lightGrey,
      fadeLightGrey: fadeLightGrey ?? this.fadeLightGrey,
      agedGrey: agedGrey ?? this.agedGrey,
      wolfGrey: wolfGrey ?? this.wolfGrey,
      sage: sage ?? this.sage,
      gallery: gallery ?? this.gallery,
      pippin: pippin ?? this.pippin,
      burntSienna: burntSienna ?? this.burntSienna,
      brightGrey: brightGrey ?? this.brightGrey,
      dustyGrey: dustyGrey ?? this.dustyGrey,
      mercury: mercury ?? this.mercury,
      silver: silver ?? this.silver,
      darkSkyBlue: darkSkyBlue ?? this.darkSkyBlue,
      madras: madras ?? this.madras,
      darkGreenBlack: darkGreenBlack ?? this.darkGreenBlack,
      transparentBlack: transparentBlack ?? this.transparentBlack,
      transparentBlack2: transparentBlack2 ?? this.transparentBlack2,
      smokeWhite: smokeWhite ?? this.smokeWhite,
      smokeGrey: smokeGrey ?? this.smokeGrey,
      codGray: codGray ?? this.codGray,
      whiteGrey: whiteGrey ?? this.whiteGrey,
      fieldGrey: fieldGrey ?? this.fieldGrey,
      cameraGrey: cameraGrey ?? this.cameraGrey,
      disabledGrey: disabledGrey ?? this.disabledGrey,
      hazeGrey: hazeGrey ?? this.hazeGrey,
    );
  }

  @override
  ThemeExtension<AppColorsExtension> lerp(
    ThemeExtension<AppColorsExtension>? other,
    double t,
  ) {
    if (other is! AppColorsExtension) {
      return this;
    }
    return AppColorsExtension(
      lightYellowGreen: Color.lerp(
        lightYellowGreen,
        other.lightYellowGreen,
        t,
      )!,

      darkYellowGreen: Color.lerp(darkYellowGreen, other.darkYellowGreen, t)!,
      softViolet: Color.lerp(softViolet, other.softViolet, t)!,
      lightViolet: Color.lerp(lightViolet, other.lightViolet, t)!,
      softOrange: Color.lerp(softOrange, other.softOrange, t)!,
      lightOrange: Color.lerp(lightOrange, other.lightOrange, t)!,
      softBlue: Color.lerp(softBlue, other.softBlue, t)!,
      lightBlue: Color.lerp(lightBlue, other.lightBlue, t)!,
      softPink: Color.lerp(softPink, other.softPink, t)!,
      lightPink: Color.lerp(lightPink, other.lightPink, t)!,
      blushPink: Color.lerp(blushPink, other.blushPink, t)!,
      alto: Color.lerp(alto, other.alto, t)!,
      tusk: Color.lerp(tusk, other.tusk, t)!,
      pistachio: Color.lerp(pistachio, other.pistachio, t)!,
      lightGrey: Color.lerp(lightGrey, other.lightGrey, t)!,
      fadeLightGrey: Color.lerp(fadeLightGrey, other.fadeLightGrey, t)!,
      agedGrey: Color.lerp(agedGrey, other.agedGrey, t)!,
      wolfGrey: Color.lerp(wolfGrey, other.wolfGrey, t)!,
      sage: Color.lerp(sage, other.sage, t)!,
      gallery: Color.lerp(gallery, other.gallery, t)!,
      pippin: Color.lerp(pippin, other.pippin, t)!,
      burntSienna: Color.lerp(burntSienna, other.burntSienna, t)!,
      brightGrey: Color.lerp(brightGrey, other.brightGrey, t)!,
      dustyGrey: Color.lerp(dustyGrey, other.brightGrey, t)!,
      mercury: Color.lerp(mercury, other.mercury, t)!,
      silver: Color.lerp(silver, other.silver, t)!,
      darkSkyBlue: Color.lerp(darkSkyBlue, other.darkSkyBlue, t)!,
      madras: Color.lerp(madras, other.madras, t)!,
      darkGreenBlack: Color.lerp(darkGreenBlack, other.darkGreenBlack, t)!,
      transparentBlack: Color.lerp(
        transparentBlack,
        other.transparentBlack,
        t,
      )!,
      transparentBlack2: Color.lerp(
        transparentBlack2,
        other.transparentBlack2,
        t,
      )!,
      smokeWhite: Color.lerp(smokeWhite, other.smokeWhite, t)!,
      smokeGrey: Color.lerp(smokeGrey, other.smokeGrey, t)!,
      codGray: Color.lerp(codGray, other.codGray, t)!,
      whiteGrey: Color.lerp(whiteGrey, other.whiteGrey, t)!,
      fieldGrey: Color.lerp(fieldGrey, other.fieldGrey, t)!,
      cameraGrey: Color.lerp(cameraGrey, other.cameraGrey, t)!,
      disabledGrey: Color.lerp(disabledGrey, other.disabledGrey, t)!,
      hazeGrey: Color.lerp(hazeGrey, other.hazeGrey, t)!,
    );
  }
}
