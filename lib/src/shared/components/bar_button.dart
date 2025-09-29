import 'package:flutter/material.dart';
import '../utils/extensions.dart';

class ThemedFilledButton extends StatelessWidget {
  const ThemedFilledButton({
    super.key,
    required this.onPressed,
    required this.child,
    this.width,
    this.height = 48,
    this.backgroundColor,
    this.foregroundColor,
    this.shape,
    this.padding,
  }) : _isDialog = false;

  const ThemedFilledButton.dialog({
    super.key,
    required this.onPressed,
    required this.child,
    this.width,
    this.height = 35,
    this.backgroundColor,
    this.foregroundColor,
    this.shape,
    this.padding,
  }) : _isDialog = true;

  final VoidCallback? onPressed;
  final Widget child;
  final double? width;
  final double height;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final RoundedRectangleBorder? shape;
  final EdgeInsets? padding;

  final bool _isDialog;

  @override
  Widget build(BuildContext context) {
    final textStyle = _isDialog
        ? context.textTheme.bodyMedium
        : context.textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w600);

    final filledButtonTheme = FilledButtonThemeData(
      style: FilledButton.styleFrom(
        backgroundColor: backgroundColor ?? context.colorScheme.primary,
        foregroundColor: foregroundColor ?? context.colorScheme.onPrimary,
        minimumSize: width != null
            ? Size(width!, height)
            : Size(double.infinity, height),
        shape:
            shape ??
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        padding: padding ?? const EdgeInsets.symmetric(horizontal: 24),
        textStyle: textStyle,
      ),
    );

    return Theme(
      data: Theme.of(context).copyWith(filledButtonTheme: filledButtonTheme),
      child: FilledButton(onPressed: onPressed, child: child),
    );
  }
}

class ThemedOutlinedButton extends StatelessWidget {
  const ThemedOutlinedButton({
    super.key,
    required this.onPressed,
    required this.child,
    this.width,
    this.height = 48,
    this.backgroundColor,
    this.foregroundColor,
    this.shape,
    this.padding,
  }) : _isDialog = false;

  const ThemedOutlinedButton.dialog({
    super.key,
    required this.onPressed,
    required this.child,
    this.width,
    this.height = 35,
    this.backgroundColor,
    this.foregroundColor,
    this.shape,
    this.padding,
  }) : _isDialog = true;

  final VoidCallback? onPressed;
  final Widget child;
  final double? width;
  final double height;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final RoundedRectangleBorder? shape;
  final EdgeInsets? padding;

  final bool _isDialog;

  @override
  Widget build(BuildContext context) {
    final borderColor = _isDialog
        ? context.colorScheme.primary
        : (shape != null && shape?.side != null)
        ? shape!.side.color
        : context.colorScheme.primary;
    final textStyle = _isDialog
        ? context.textTheme.bodyMedium
        : context.textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w600);

    final outlinedButtonTheme = OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        backgroundColor: backgroundColor ?? context.colorScheme.onPrimary,
        foregroundColor: foregroundColor ?? borderColor,
        disabledBackgroundColor: context.colorScheme.surface,
        disabledForegroundColor: context.colorExtension.silver,
        minimumSize: width != null
            ? Size(width!, height)
            : Size(double.infinity, height),
        shape:
            shape ??
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        side: BorderSide(
          color: onPressed == null
              ? context.colorExtension.silver
              : borderColor,
        ),
        padding: padding ?? const EdgeInsets.symmetric(horizontal: 24),
        textStyle: textStyle,
      ),
    );

    return Theme(
      data: Theme.of(
        context,
      ).copyWith(outlinedButtonTheme: outlinedButtonTheme),
      child: OutlinedButton(onPressed: onPressed, child: child),
    );
  }
}
