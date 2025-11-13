import 'package:flutter/material.dart';

import 'bar_button.dart';
import '../utils/extensions.dart';

class DialogConfirmation extends StatelessWidget {
  const DialogConfirmation({
    super.key,
    required this.icon,
    required this.title,
    required this.content,
    required this.agreeText,
    required this.disagreeText,
  });

  final Widget icon;
  final String title;
  final String content;
  final String agreeText;
  final String disagreeText;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      insetPadding: const EdgeInsets.symmetric(horizontal: 12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      title: Row(
        children: [
          icon,
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              title,
              style: context.textTheme.titleMedium?.copyWith(
                color: context.colorScheme.onSurface,
              ),
            ),
          ),
        ],
      ),
      content: SizedBox(
        width: context.sizeOf.width * 0.8,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              content,
              style: context.textTheme.titleMedium?.copyWith(
                color: context.colorExtension.lightGrey,
              ),
            ),
          ],
        ),
      ),
      actions: [
        Row(
          children: [
            Expanded(
              child: ThemedOutlinedButton(
                onPressed: () {
                  // context.router.maybePop(true);
                },
                child: Text(
                  agreeText,
                  style: context.textTheme.titleMedium?.copyWith(
                    color: context.colorScheme.onSurface,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: ThemedFilledButton(
                onPressed: () {
                  // context.router.maybePop(false);
                },
                child: Text(
                  disagreeText,
                  style: context.textTheme.titleMedium?.copyWith(
                    color: context.colorScheme.onSurface,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}