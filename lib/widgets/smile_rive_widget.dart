import 'package:rive/rive.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/utils/themes.dart';

class SmileRive extends StatelessWidget {
  const SmileRive({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return RiveAnimation.asset(
      'assets/rive/smile.riv',
      stateMachines: const ['smiley'],
      onInit: (Artboard artBoard) {
        artBoard.forEachComponent((child) {
          if (child is Shape) {
            final Shape shape = child;
            if (shape.name == 'mouth') {
              shape.strokes.first.paint.color = AppTheme.appColors.accent;
            }
            if (shape.name == 'right eye' || shape.name == 'left eye') {
              shape.fills.first.paint.color = AppTheme.appColors.accent;
            }
          }
        });
      },
    );
  }
}
