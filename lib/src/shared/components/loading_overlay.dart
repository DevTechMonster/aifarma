import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_portal/flutter_portal.dart';

import '../utils/extensions.dart';

class LoadingOverlay extends StatefulWidget {
  const LoadingOverlay({super.key, required this.visible});
  final bool visible;
  static const _kDuration = Duration(milliseconds: 500);

  @override
  State<LoadingOverlay> createState() => _LoadingOverlayState();
}

class _LoadingOverlayState extends State<LoadingOverlay>
    with SingleTickerProviderStateMixin {
  late AnimationController dotsJumpController;

  @override
  void initState() {
    super.initState();
    dotsJumpController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    )..repeat();
  }

  @override
  void didUpdateWidget(LoadingOverlay oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.visible && !dotsJumpController.isAnimating) {
      dotsJumpController.repeat();
    } else if (!widget.visible && dotsJumpController.isAnimating) {
      dotsJumpController.stop();
    }
  }

  @override
  void dispose() {
    dotsJumpController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PortalTarget(
      visible: widget.visible,
      closeDuration: LoadingOverlay._kDuration,
      portalFollower: TweenAnimationBuilder<double>(
        curve: Curves.bounceIn,
        tween: Tween(begin: 0, end: widget.visible ? 1 : 0),
        duration: LoadingOverlay._kDuration,
        builder: (context, opacityValue, child) {
          return Opacity(
            opacity: opacityValue,
            child: Container(
              color: context.colorExtension.transparentBlack,
              child: Center(child: _buildColorJumpingDots(context)),
            ),
          );
        },
      ),
      child: Container(),
    );
  }

  Widget _buildColorJumpingDots(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(4, (index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: AnimatedBuilder(
            animation: dotsJumpController,
            builder: (context, child) {
              final sineProgress =
                  (math.sin(dotsJumpController.value * 2 * math.pi) + 1) / 2;

              final position = sineProgress * 3;

              final distance = (position - index).abs();

              double opacity;
              if (distance <= 1.0) {
                opacity = math.cos(distance * math.pi / 2);
              } else {
                opacity = 0.0;
              }
              final scale = distance <= 0.5 ? 1.2 : 1.0;

              return Transform.scale(
                scale: scale,
                child: Container(
                  width: 18,
                  height: 18,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.lerp(
                      context.colorExtension.smokeWhite,
                      context.colorScheme.primary,
                      opacity,
                    ),
                  ),
                ),
              );
            },
          ),
        );
      }),
    );
  }
}
