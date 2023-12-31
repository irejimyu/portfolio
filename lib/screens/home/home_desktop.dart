import 'dart:js_interop';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/utils/sizes.dart';
import 'package:portfolio/utils/strings.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/utils/painters.dart';
import 'package:portfolio/widgets/pencil_rive.dart';

enum Coordinate {
  x,
  y,
}

class HomeDesktop extends StatefulWidget {
  const HomeDesktop({super.key});

  @override
  State<HomeDesktop> createState() => _HomeDesktopState();
}

class _HomeDesktopState extends State<HomeDesktop>
    with SingleTickerProviderStateMixin {
  Offset? pointerOffset;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onHover: (e) => setState(() => pointerOffset = e.localPosition),
      onExit: (e) => setState(() => pointerOffset = null),
      child: Stack(
        children: [
          AnimatedPositioned(
            curve: Curves.decelerate,
            duration: const Duration(milliseconds: 200),
            top: position(0.5.sh, 0.05, coordinate: Coordinate.y),
            left: position(
              0.5.sw - AppSizes.sideWidth,
              0.05,
              coordinate: Coordinate.x,
            ),
            child: FractionalTranslation(
              translation: const Offset(-0.5, -0.5),
              child: SizedBox(
                height: 500.h,
                width: 450.w,
                child: CustomPaint(
                  painter: RectanglePainter(),
                ),
              ),
            ),
          ),
          AnimatedPositioned(
            curve: Curves.decelerate,
            duration: const Duration(milliseconds: 200),
            top: position(0.35.sh, 0.02, coordinate: Coordinate.y),
            left: position(
              0.58.sw - AppSizes.sideWidth,
              0.02,
              coordinate: Coordinate.x,
            ),
            child: SizedBox(
              height: 250.sp,
              width: 250.sp,
              child: const PencilRive(),
            ).animate().fadeIn(
                  delay: const Duration(milliseconds: 500),
                  duration: const Duration(seconds: 1),
                ),
          ),
          AnimatedPositioned(
            curve: Curves.decelerate,
            duration: const Duration(milliseconds: 500),
            top: position(0.4.sh, 0.02, coordinate: Coordinate.y),
            left: position(
              0.30.sw - AppSizes.sideWidth,
              0.02,
              coordinate: Coordinate.x,
            ),
            child: Container(
              padding: EdgeInsets.all(2.sp),
              color: AppColors.neutral,
              child: Text(
                AppStrings.portfolio,
                style: TextStyle(
                  fontSize: 100.sp,
                  height: 1,
                ),
              ),
            ).animate().fadeIn(
                  delay: const Duration(milliseconds: 500),
                  duration: const Duration(seconds: 1),
                ),
          ),
          AnimatedPositioned(
            curve: Curves.decelerate,
            duration: const Duration(milliseconds: 500),
            top: position(750.h, 0.04, coordinate: Coordinate.y),
            left: position(
              0.5.sw - AppSizes.sideWidth,
              0.04,
              coordinate: Coordinate.x,
            ),
            child: FractionalTranslation(
              translation: const Offset(-0.5, -0.5),
              child: Text(
                AppStrings.position,
                style: TextStyle(
                  fontSize: 50.sp,
                ),
              ),
            ).animate().fadeIn(
                  delay: const Duration(milliseconds: 500),
                  duration: const Duration(seconds: 1),
                ),
          ),
        ],
      ),
    );
  }

  double position(
    double position,
    double strength, {
    Coordinate coordinate = Coordinate.x,
  }) {
    if (pointerOffset.isNull) {
      return position;
    } else {
      double offset =
          coordinate == Coordinate.x ? pointerOffset!.dx : pointerOffset!.dy;
      return position + ((offset - position) * strength);
    }
  }
}
