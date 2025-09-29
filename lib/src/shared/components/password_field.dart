import 'package:flutter/material.dart';

import 'package:flutter_hooks/flutter_hooks.dart';

import '../utils/extensions.dart';
import '../utils/validations.dart';

const kPasswordMinLength = 8;

class PasswordField extends HookWidget {
  const PasswordField({
    super.key,
    required this.controller,
    this.autofillHints,
    this.labelText,
    this.validator,
    this.textInputAction,
    this.onEditingComplete,
    this.focusNode,
    this.validatePasswordRequirement = false,
    this.helperText,
    this.helperTextMaxLines,
    this.canToggleVisibility = false,
    this.onChanged,
    this.isSubmitted = false,
  });

  final TextEditingController controller;
  final Iterable<String>? autofillHints;
  final String? labelText;
  final FormFieldValidator<String?>? validator;
  final TextInputAction? textInputAction;
  final VoidCallback? onEditingComplete;
  final FocusNode? focusNode;
  final bool validatePasswordRequirement;
  final String? helperText;
  final int? helperTextMaxLines;
  final bool canToggleVisibility;
  final Function(String)? onChanged;
  final bool isSubmitted;

  @override
  Widget build(BuildContext context) {
    final obscureText = useState(true);

    return TextFormField(
      focusNode: focusNode,
      controller: controller,
      obscureText: obscureText.value,
      keyboardType: obscureText.value ? TextInputType.visiblePassword : null,
      autofillHints: autofillHints,
      textInputAction: textInputAction,
      onEditingComplete: onEditingComplete,
      autovalidateMode: isSubmitted
          ? AutovalidateMode.always
          : AutovalidateMode.disabled,
      validator: (text) {
        if (text == null || text.isEmpty) {
          return context.l10n.errorFieldRequired;
        }

        if (validatePasswordRequirement) {
          return _validatePasswordRequirement(context, text);
        }
        return validator?.call(text);
      },
      onChanged: onChanged,
      decoration: InputDecoration(
        labelStyle: context.textTheme.bodyMedium?.copyWith(
          color: (controller.text.isEmpty && isSubmitted)
              ? context.colorScheme.error
              : context.colorExtension.lightGrey,
        ),
        labelText: labelText,
        errorStyle: const TextStyle(height: 0, fontSize: 0),
        helperMaxLines: helperTextMaxLines,
        helperText: helperText,
        suffixIcon: canToggleVisibility
            ? IconButton(
                onPressed: () {
                  obscureText.value = !obscureText.value;
                },
                icon: Icon(
                  obscureText.value
                      ? Icons.visibility_off_outlined
                      : Icons.visibility_outlined,
                ),
              )
            : null,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(
            color: controller.text.isEmpty
                ? context.colorExtension.lightGrey
                : context.colorScheme.onSurface,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: context.colorScheme.onSurface),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: context.colorScheme.error),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: context.colorScheme.error),
        ),
      ),
    );
  }

  String? _validatePasswordRequirement(BuildContext context, String text) {
    if (!hasMinLength(text, 8)) {
      return context.l10n.errorPasswordMinLength(kPasswordMinLength.toString());
    }

    if (!hasMinLowercase(text)) {
      return context.l10n.errorPasswordLowercase;
    }

    if (!hasMinUppercase(text)) {
      return context.l10n.errorPasswordUppercase;
    }

    if (!hasMinNumericChar(text)) {
      return context.l10n.errorPasswordNumber;
    }

    if (!hasMinSpecialChar(text)) {
      return context.l10n.errorPasswordSpecialCharacter;
    }

    return null;
  }
}
