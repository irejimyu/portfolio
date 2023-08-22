import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/utils/themes.dart';

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
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(50),
        ),
        color: AppTheme.appColors.secondary,
      ),
      child: Text(
        text,
        style: TextStyle(
          color: AppTheme.appColors.neutral,
          fontWeight: FontWeight.bold,
          fontSize: 20.sp,
          fontFamily: 'Futura',
        ),
      ),
    );
  }
}
