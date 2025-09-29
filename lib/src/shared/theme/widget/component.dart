import 'package:flutter/material.dart';

import '../../../../gen/fonts.gen.dart';

final AppBarTheme lightAppBarTheme = AppBarTheme(
  backgroundColor: Colors.transparent,
  surfaceTintColor: Colors.transparent,
  elevation: 0,
  centerTitle: false,
  titleTextStyle: TextStyle(
    color: Color(0xFF0D0D0D),
    fontFamily: FontFamily.rubik,
    fontSize: 16,
    fontWeight: FontWeight.w500,
  ),
  foregroundColor: Color(0xFF0D0D0D),
  iconTheme: IconThemeData(color: Color(0xFF0D0D0D)),
);

final TabBarThemeData lightTabBarTheme = TabBarThemeData(
  labelColor: Color(0xFF0D0D0D),
  unselectedLabelColor: Color(
    0xFF9E9E9E,
  ), // This should match your lightGrey extension
  overlayColor: WidgetStateProperty.all(Colors.transparent),
  dividerHeight: 0,
  dividerColor: Colors.transparent,
  indicatorSize: TabBarIndicatorSize.tab,
  labelStyle: TextStyle(
    fontFamily: FontFamily.rubik,
    fontSize: 14,
    fontWeight: FontWeight.w600,
  ),
  unselectedLabelStyle: TextStyle(
    fontFamily: FontFamily.rubik,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  ),
  labelPadding: EdgeInsets.symmetric(horizontal: 0),
  indicator: BoxDecoration(
    border: Border(bottom: BorderSide(color: Color(0xFFC3D700), width: 3)),
  ),
);

final AppBarTheme darkAppBarTheme = AppBarTheme(
  backgroundColor: Colors.transparent,
  centerTitle: false,
  titleTextStyle: TextStyle(
    color: Color(0xFFF2F2F2),
    fontFamily: FontFamily.rubik,
    fontSize: 16,
    fontWeight: FontWeight.w500,
  ),
);
