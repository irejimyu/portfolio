import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/utils/strings.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/widgets/separator.dart';

class IntroductionDesktop extends StatelessWidget {
  const IntroductionDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const PageSeparator(separatorText: AppStrings.aboutTitle),
        Text.rich(
          textAlign: TextAlign.center,
          TextSpan(
            style: TextStyle(
              fontSize: 100.sp,
              color: AppColors.primary,
              height: 1,
            ),
            children: const [
              TextSpan(
                text: 'HI! My NAME IS ',
              ),
              TextSpan(
                text: 'IREJIM JENERI YU,',
                style: TextStyle(
                  color: AppColors.accent,
                ),
              ),
              TextSpan(
                text: '\nan experienced ',
              ),
              TextSpan(
                text: 'Flutter developer\n',
                style: TextStyle(
                  color: AppColors.accent,
                ),
              ),
              TextSpan(
                text: 'who focuses a significant goal on\ndeveloping ',
              ),
              TextSpan(
                text: 'web and mobile',
                style: TextStyle(
                  color: AppColors.accent,
                ),
              ),
              TextSpan(
                text: ' experiences.',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
