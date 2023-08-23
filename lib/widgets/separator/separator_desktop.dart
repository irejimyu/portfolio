import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/utils/fonts.dart';
import 'package:portfolio/utils/sizes.dart';
import 'package:portfolio/utils/colors.dart';

class PageSeparatorDesktop extends StatelessWidget {
  final String separatorText;
  const PageSeparatorDesktop({super.key, required this.separatorText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(30.h),
      child: Row(
        children: [
          Text(
            separatorText,
            style: TextStyle(
              fontSize: 40.sp,
              letterSpacing: 2,
              color: AppColors.accent,
              fontFamily: AppFonts.secondaryFont,
            ),
          ),
          Expanded(
            child: Divider(
              indent: 50.sp,
              thickness: AppSizes.lineThick,
              color: AppColors.secondary,
            ),
          ),
        ],
      ),
    );
  }
}
