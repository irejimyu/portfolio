import 'package:portfolio/utils/colors.dart';
import 'package:rive/rive.dart';
import 'package:flutter/material.dart';

class SmileRive extends StatelessWidget {
  const SmileRive({
    super.key,
  });

  final assetPath = 'assets/rive/smile.riv';
  @override
  Widget build(BuildContext context) {
    return RiveAnimation.asset(
      assetPath,
      stateMachines: const ['smiley'],
      onInit: (Artboard artBoard) {
        artBoard.forEachComponent((child) {
          if (child is Shape) {
            final Shape shape = child;
            if (shape.name == 'mouth') {
              shape.strokes.first.paint.color = AppColors.accent;
            }
            if (shape.name == 'right eye' || shape.name == 'left eye') {
              shape.fills.first.paint.color = AppColors.accent;
            }
          }
        });
      },
    );
  }
}
