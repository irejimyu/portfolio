import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/utils/fonts.dart';
import 'package:portfolio/utils/colors.dart';

class SkillChip extends StatelessWidget {
  final String text;
  const SkillChip({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.sp, vertical: 5.sp),
      decoration: const BoxDecoration(
        color: AppColors.secondary,
        borderRadius: BorderRadius.all(
          Radius.circular(50),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: AppColors.neutral,
          fontWeight: FontWeight.bold,
          fontSize: 20.sp,
          fontFamily: AppFonts.secondaryFont,
        ),
      ),
    );
  }
}
