import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/utils/themes.dart';
import 'package:portfolio/widgets/magnetic_icon_widget.dart';
import 'package:rive/rive.dart';

class UnknownRoute extends StatefulWidget {
  const UnknownRoute({super.key});

  @override
  State<UnknownRoute> createState() => _UnknownRouteState();
}

class _UnknownRouteState extends State<UnknownRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MagneticIcon(
          iconSize: 300.sp,
          icon: Container(
            margin: const EdgeInsets.all(10),
            height: 500.sp,
            width: 500.sp,
            child: RiveAnimation.asset(
              'assets/rive/sad.riv',
              stateMachines: const ['sad'],
              onInit: (Artboard artBoard) {
                artBoard.forEachComponent((child) {
                  if (child is Shape) {
                    final Shape shape = child;
                    if (shape.name == 'Mouth') {
                      shape.strokes.first.paint.color =
                          AppTheme.appColors.accent;
                    }
                    if (shape.name == 'Eye') {
                      shape.fills.first.paint.color = AppTheme.appColors.accent;
                    }
                    // shape.strokes.first.paint.color = Colors.indigo;
                  }
                });
              },
            ),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
