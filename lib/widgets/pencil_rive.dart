import 'package:flutter/material.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:rive/rive.dart';

class PencilRive extends StatelessWidget {
  const PencilRive({
    super.key,
  });

  final assetPath = 'assets/rive/pencil.riv';

  @override
  Widget build(BuildContext context) {
    return RiveAnimation.asset(
      assetPath,
      stateMachines: const ['pencil'],
      onInit: (Artboard artBoard) {
        artBoard.forEachComponent((child) {
          if (child is Shape) {
            final Shape shape = child;
            if (shape.name == 'Line') {
              shape.strokes.first.paint.color = AppColors.accent;
            }
            if (shape.name == 'Pen') {
              shape.fills.first.paint.color = AppColors.accent;
            }
          }
        });
      },
    );
  }
}
