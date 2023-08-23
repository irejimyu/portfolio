import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/utils/strings.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/utils/painters.dart';
import 'package:portfolio/widgets/pencil_rive.dart';

class HomeMobile extends StatelessWidget {
  const HomeMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 0.5.sh,
          left: 0.5.sw,
          child: FractionalTranslation(
            translation: const Offset(-0.5, -0.5),
            child: SizedBox(
              height: 0.8.sh,
              width: 0.6.sw,
              child: CustomPaint(
                painter: RectanglePainter(),
              ),
            ),
          ),
        ),
        Positioned(
          top: 0.35.sh,
          left: 0.68.sw,
          child: SizedBox(
            height: 600.sp,
            width: 600.sp,
            child: const PencilRive(),
          ).animate().fadeIn(
                delay: const Duration(milliseconds: 500),
                duration: const Duration(seconds: 1),
              ),
        ),
        Positioned(
          top: 0.35.sh,
          left: 0.1.sw,
          child: Container(
            padding: EdgeInsets.all(2.sp),
            color: AppColors.neutral,
            child: Text(
              AppStrings.portfolio,
              style: TextStyle(
                fontSize: 300.sp,
                height: 1,
              ),
            ),
          ).animate().fadeIn(
                delay: const Duration(milliseconds: 500),
                duration: const Duration(seconds: 1),
              ),
        ),
        Positioned(
          top: 0.85.sh,
          left: 0.5.sw,
          child: FractionalTranslation(
            translation: const Offset(-0.5, -0.5),
            child: Text(
              AppStrings.position,
              style: TextStyle(
                fontSize: 150.sp,
              ),
            ),
          ).animate().fadeIn(
                delay: const Duration(milliseconds: 500),
                duration: const Duration(seconds: 1),
              ),
        ),
      ],
    );
  }
}
