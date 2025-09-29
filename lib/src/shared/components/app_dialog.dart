import 'package:flutter/material.dart';

class AppDialog {
  static Future<T?> show<T>({
    required BuildContext context,
    required Widget Function(BuildContext) builder,
    bool barrierDismissible = true,
  }) =>
      showDialog<T>(
        context: context,
        builder: builder,
        barrierDismissible: barrierDismissible,
      );

  static void showAbout({
    required BuildContext context,
    String? applicationName,
    String? applicationVersion,
    String? applicationLegalese,
    Widget? applicationIcon,
  }) =>
      showAboutDialog(
        context: context,
        applicationName: applicationName,
        applicationVersion: applicationVersion,
        applicationLegalese: applicationLegalese,
        applicationIcon: applicationIcon,
      );

  static Future<bool?> showConfirmation({
    required BuildContext context,
    required String title,
    required String message,
    String confirmText = 'Confirm',
    String cancelText = 'Cancel',
  }) =>
      show<bool>(
        context: context,
        builder: (context) => AlertDialog(
          title: Text(title),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(false),
              child: Text(cancelText),
            ),
            TextButton(
              onPressed: () => Navigator.of(context).pop(true),
              child: Text(confirmText),
            ),
          ],
        ),
      );
}