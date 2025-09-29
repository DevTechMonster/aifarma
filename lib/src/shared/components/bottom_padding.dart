import 'package:flutter/material.dart';

import '../utils/extensions.dart';

class BottomPadding extends StatelessWidget {
  const BottomPadding({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: _calculateBottomPadding(context));
  }
}

double bottomPaddingValue(BuildContext context) =>
    _calculateBottomPadding(context);

double _calculateBottomPadding(BuildContext context) {
  final bottomPadding = context.paddingOf.bottom;
  return bottomPadding > 0 ? bottomPadding : 16;
}
