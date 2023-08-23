import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/utils/strings.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/widgets/separator/separator_desktop.dart';
import 'package:portfolio/widgets/separator/separator_mobile.dart';

class IntroductionMobile extends StatelessWidget {
  const IntroductionMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const PageSeparatorMobile(separatorText: AppStrings.aboutTitle),
        Text.rich(
          textAlign: TextAlign.center,
          TextSpan(
            style: TextStyle(
              fontSize: 200.sp,
              color: AppColors.primary,
              height: 1,
            ),
            children: const [
              TextSpan(
                text: 'HI! My NAME IS\n',
              ),
              TextSpan(
                text: 'IREJIM JENERI YU,\n',
                style: TextStyle(
                  color: AppColors.accent,
                ),
              ),
              TextSpan(
                text: 'an experienced\n',
              ),
              TextSpan(
                text: 'Flutter developer\n',
                style: TextStyle(
                  color: AppColors.accent,
                ),
              ),
              TextSpan(
                text: 'who focuses a\nsignificant goal\non developing\n',
              ),
              TextSpan(
                text: 'web and mobile\n',
                style: TextStyle(
                  color: AppColors.accent,
                ),
              ),
              TextSpan(
                text: 'experiences.',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
