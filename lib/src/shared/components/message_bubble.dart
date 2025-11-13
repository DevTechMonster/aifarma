import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:gpt_markdown/gpt_markdown.dart';
import '../../chat/models/message.dart';
import '../utils/extensions.dart';

class MessageBubble extends StatelessWidget {
  const MessageBubble({
    required this.message,
    super.key,
  });

  final Message message;

  String sanitizeMarkdown(String input) {
    // First, remove citations globally
    final citationRegex = RegExp(r'\[\d+\](\(\))+');
    String text = input.replaceAll(citationRegex, '');

    // Find and sanitize only table blocks
    final tableBlockRegex =
        RegExp(r'\n\n(\|.+\|(?:\n\|.+\|)+)\n\n', multiLine: true, dotAll: true);

    text = text.replaceAllMapped(tableBlockRegex, (match) {
      String tableContent = match.group(1)!;

      // Apply sanitization only to table content
      final internalNewlineBulletRegex = RegExp(r'\n\s*-');
      final excessiveNewlineBetweenRowsRegex = RegExp(r'(?<=\|)\n{2,}\s*\|');

      tableContent = tableContent
          .replaceAll(internalNewlineBulletRegex, ' ; -')
          .replaceAll(excessiveNewlineBetweenRowsRegex, '\n|');

      return '\n\n$tableContent\n\n';
    });

    log('formatted text = $text');
    return text.trim();
  }

  @override
  Widget build(BuildContext context) {
    final isUser = message.type == MessageType.user;

    // User messages: bubble style, right-aligned
    if (isUser) {
      return Align(
        alignment: Alignment.centerRight,
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          constraints: BoxConstraints(
            maxWidth: context.sizeOf.width * 0.75,
          ),
          decoration: BoxDecoration(
            color: context.colorScheme.primary,
            borderRadius: BorderRadius.circular(20).copyWith(
              bottomRight: const Radius.circular(4),
            ),
          ),
          child: Text(
            message.content,
            style: context.textTheme.bodyMedium?.copyWith(
              color: context.colorScheme.onPrimary,
            ),
          ),
        ),
      );
    }

    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 4),
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          GptMarkdown(
            message.content, // sanitizeMarkdown(message.content),
            style: context.textTheme.bodyMedium?.copyWith(
              color: context.colorScheme.onSurfaceVariant,
            ),
            tableBuilder: (context, tableRows, textStyle, config) {
              return ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 600),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Table(
                    defaultColumnWidth: const IntrinsicColumnWidth(),
                    border: TableBorder.all(
                      width: 1,
                      color: context.colorScheme.outline.withValues(alpha: 0.3),
                    ),
                    children: [
                      for (final row in tableRows)
                        TableRow(
                          decoration: BoxDecoration(
                            color: row.isHeader
                                ? context.colorScheme.surfaceContainerHighest
                                : Colors.transparent,
                          ),
                          children: [
                            for (int i = 0; i < row.fields.length; i++)
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 8,
                                  vertical: 4,
                                ),
                                child: _buildTableCell(
                                  text: row.fields[i].data,
                                  isHeader: row.isHeader,
                                  context: context,
                                  maxWidth: row.fields.length == 2
                                      ? i == 0
                                          ? ((context.sizeOf.width - 48) / 3)
                                          : ((context.sizeOf.width - 48) / 3) *
                                              2
                                      : 300,
                                ),
                              ),
                          ],
                        ),
                    ],
                  ),
                ),
              );
            },
          ),
          // MarkdownBody(
          //   data: markdownDatamorecolumn, //_fixMarkdownTables(rawData),
          //   selectable: true,
          //   styleSheet: MarkdownStyleSheet(
          //     p: context.textTheme.bodyMedium?.copyWith(
          //       color: context.colorScheme.onSurfaceVariant,
          //     ),
          //     h1: context.textTheme.headlineMedium?.copyWith(
          //       color: context.colorScheme.onSurfaceVariant,
          //     ),
          //     h2: context.textTheme.headlineSmall?.copyWith(
          //       color: context.colorScheme.onSurfaceVariant,
          //     ),
          //     h3: context.textTheme.titleLarge?.copyWith(
          //       color: context.colorScheme.onSurfaceVariant,
          //     ),
          //     code: context.textTheme.bodySmall?.copyWith(
          //       color: context.colorScheme.onSurfaceVariant,
          //       fontFamily: 'monospace',
          //       backgroundColor: context.colorScheme.surfaceContainerHigh,
          //     ),
          //     codeblockDecoration: BoxDecoration(
          //       color: context.colorScheme.surfaceContainerHigh,
          //       borderRadius: BorderRadius.circular(8),
          //     ),
          //     tableBorder: TableBorder.all(
          //       color: context.colorScheme.outline.withValues(alpha: 0.3),
          //       width: 1,
          //     ),
          //     tableHead: context.textTheme.bodyMedium?.copyWith(
          //       color: context.colorScheme.onSurfaceVariant,
          //       fontWeight: FontWeight.bold,
          //     ),
          //     tableBody: context.textTheme.bodyMedium?.copyWith(
          //       color: context.colorScheme.onSurfaceVariant,
          //     ),
          //     blockquote: context.textTheme.bodyMedium?.copyWith(
          //       color:
          //           context.colorScheme.onSurfaceVariant.withValues(alpha: 0.7),
          //       fontStyle: FontStyle.italic,
          //     ),
          //     listBullet: context.textTheme.bodyMedium?.copyWith(
          //       color: context.colorScheme.onSurfaceVariant,
          //     ),
          //   ),
          // ),

          if (message.isStreaming) ...[
            const SizedBox(height: 8),
            SizedBox(
              width: 16,
              height: 16,
              child: CircularProgressIndicator(
                strokeWidth: 2,
                valueColor: AlwaysStoppedAnimation<Color>(
                  context.colorScheme.primary,
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildTableCell({
    required String text,
    bool isHeader = false,
    required BuildContext context,
    double maxWidth = 300,
  }) {
    Widget content;
    final minWidth = 100.0;

    // Check if text contains bullet point pattern
    // if (text.contains(';')) {
    //   final parts = text
    //       .split(';')
    //       .map((part) => part.trim())
    //       .where((part) => part.isNotEmpty)
    //       .toList();

    //   content = Column(
    //     crossAxisAlignment: CrossAxisAlignment.start,
    //     mainAxisSize: MainAxisSize.min,
    //     children: [
    //       for (final part in parts)
    //         Padding(
    //           padding: const EdgeInsets.only(bottom: 2),
    //           child: Row(
    //             crossAxisAlignment: CrossAxisAlignment.start,
    //             children: [
    //               if (part.startsWith('-')) ...[
    //                 Text(
    //                   '• ',
    //                   style: context.textTheme.bodyMedium?.copyWith(
    //                     color: context.colorScheme.onSurfaceVariant,
    //                     fontWeight:
    //                         isHeader ? FontWeight.bold : FontWeight.normal,
    //                   ),
    //                 ),
    //                 Expanded(
    //                   child: Text(
    //                     part.substring(1).trim(),
    //                     style: context.textTheme.bodyMedium?.copyWith(
    //                       color: context.colorScheme.onSurfaceVariant,
    //                       fontWeight:
    //                           isHeader ? FontWeight.bold : FontWeight.normal,
    //                     ),
    //                   ),
    //                 ),
    //               ] else
    //                 Expanded(
    //                   child: GptMarkdown(
    //                     part,
    //                     style: context.textTheme.bodyMedium?.copyWith(
    //                       color: context.colorScheme.onSurfaceVariant,
    //                       fontWeight:
    //                           isHeader ? FontWeight.bold : FontWeight.normal,
    //                     ),
    //                   ),
    //                 ),
    //             ],
    //           ),
    //         ),
    //     ],
    //   );
    // } else {
    // Regular text without bullet points
    // content = Text(
    //   text,
    //   style: context.textTheme.bodyMedium?.copyWith(
    //     color: context.colorScheme.onSurfaceVariant,
    //     fontWeight: isHeader ? FontWeight.bold : FontWeight.normal,
    //   ),
    //   textAlign: TextAlign.left,
    // );
    // }

    // Wrap content with max width constraint

    content = Html(
      data: text,
      // style: {
      //   'p': Style(
      //     color: context.colorScheme.onSurfaceVariant,
      //   ),
      // },
    );
    return ConstrainedBox(
      constraints: BoxConstraints(
        minWidth: minWidth,
        maxWidth: maxWidth < minWidth ? minWidth : maxWidth,
      ),
      child: content,
    );
  }

  final String rawData =
      'Based on the provided ICU Management Protocols documentation, I can precisely outline the distinctions between ICU admission priorities:\n\nICU admission prioritization defines those who will benefit most from ICU (Priority 1) to those who will not benefit at all (Priority 3).[2]()()\n\n| Priority Level | Key Characteristics |\n|---------------|---------------------|\n| Priority 1 | - Critically ill, unstable patients requiring life support for organ failure and intensive monitoring[1]()()\n- No limitations of treatment[1]()()\n- High likelihood of benefit[1]()() |\n\n| Priority 2A | - Acutely ill, relatively stable patients requiring intensive monitoring and/or therapies for organ dysfunction that can be managed in intermediate care facilities[1]()()\n- Examples include post-operative patients needing close monitoring and respiratory insufficiency on intermittent non-invasive ventilation[1]()() |\n\n| Priority 2B | - Critically ill, unstable patients requiring life support for organ failure[1]()()\n- Significantly lower probability of recovery due to advanced underlying disease[1]()()\n- May have specific limitations of care[1]()()\n- Lower likelihood of potential benefit[1]()() |\n\n| Priority 3 | - Terminally ill or moribund patients with no possibility of recovery[1]()()\n- Not appropriate for ICU admission[1]()()\n- May benefit from palliative care rather than intensive care[1]()() |\n\nThese distinctions are crucial for ensuring appropriate resource allocation and patient care optimization within intensive care settings.';

  final testFix1 =
      'Based on the provided ICU Management Protocols documentation, I can precisely outline the distinctions between ICU admission priorities:\n\nICU admission prioritization defines those who will benefit most from ICU (Priority 1) to those who will not benefit at all (Priority 3).\n\n| Priority Level | Key Characteristics |\n|---------------|---------------------|\n| Priority 1 | - Critically ill, unstable patients requiring life support for organ failure and intensive monitoring; - No limitations of treatment ; - High likelihood of benefit |\n| Priority 2A | - Acutely ill, relatively stable patients requiring intensive monitoring and/or therapies for organ dysfunction that can be managed in intermediate care facilities ; - Examples include post-operative patients needing close monitoring and respiratory insufficiency on intermittent non-invasive ventilation |\n| Priority 2B | - Critically ill, unstable patients requiring life support for organ failure ; - Significantly lower probability of recovery due to advanced underlying disease ; - May have specific limitations of care ; - Lower likelihood of potential benefit |\n| Priority 3 | - Terminally ill or moribund patients with no possibility of recovery ; - Not appropriate for ICU admission ; - May benefit from palliative care rather than intensive care |\n\nThese distinctions are crucial for ensuring appropriate resource allocation and patient care optimization within intensive care settings.';

  final testFix2 =
      'test table.\n\n| header1 | header 2 |\n| :--- | :--- |\n| **1** | - example text 1 \\n- example text 2 |\n| **2** | - example text |\n| **3** | - example text |\n| **4** | - example text |';

  final testFix = '''
    | header1 | header2 |
    | :--- | :--- |
    | **1** | - example text 1-1|
    |       | - example text 1-2|
    | **2** | - example text 2-1|
''';
}

