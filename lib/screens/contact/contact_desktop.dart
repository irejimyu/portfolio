import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/utils/fonts.dart';
import 'package:portfolio/utils/strings.dart';
import 'package:portfolio/utils/colors.dart';

class ContactDesktop extends StatelessWidget {
  const ContactDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          AppStrings.contactTitle,
          style: TextStyle(
            fontSize: 200.sp,
            color: AppColors.primary,
            height: 0.9,
          ),
          textAlign: TextAlign.center,
        ),
        Padding(
          padding: EdgeInsets.all(20.sp),
          child: Column(
            children: [
              Text(
                AppStrings.dropEmail,
                style: TextStyle(
                  fontSize: 25.sp,
                  color: AppColors.primary,
                  fontFamily: AppFonts.secondaryFont,
                ),
              ),
              Text(
                AppStrings.email,
                style: TextStyle(
                  fontSize: 40.sp,
                  color: AppColors.secondary,
                  fontFamily: AppFonts.secondaryFont,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
