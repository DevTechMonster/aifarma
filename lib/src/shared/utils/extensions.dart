import '../../localization/app_localizations.dart';
import 'package:flutter/material.dart';
// import '../../localization/app_localizations.dart';
import '../theme/colors.dart';

extension ContextEx on BuildContext {
  ThemeData get theme => Theme.of(this);

  ColorScheme get colorScheme => theme.colorScheme;

  TextTheme get textTheme => theme.textTheme;

  L10n get l10n => L10n.of(this)!;

  AppColorsExtension get colorExtension =>
      theme.extension<AppColorsExtension>()!;

  Size get sizeMediaquery => MediaQuery.of(this).size;
  Size get sizeOf => MediaQuery.sizeOf(this);

  EdgeInsets get paddingOf => MediaQuery.paddingOf(this);

  EdgeInsets get padding => MediaQuery.of(this).padding;

  EdgeInsets get viewInsets => MediaQuery.of(this).viewInsets;

  ScaffoldMessengerState get scaffoldMessenger => ScaffoldMessenger.of(this);

  NavigatorState get navigator => Navigator.of(this);
}
