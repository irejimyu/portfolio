import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/utils/themes.dart';
import 'package:portfolio/widgets/separator_widget.dart';

class IntroductionDesktop extends StatelessWidget {
  const IntroductionDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const PageSeparator(
          separatorText: 'ABOUT ME',
        ),
        Text.rich(
          textAlign: TextAlign.center,
          TextSpan(
            style: TextStyle(
              fontSize: 100.sp,
              color: AppTheme.appColors.primary,
              height: 1,
            ),
            children: [
              const TextSpan(
                text: 'HI! My NAME IS ',
              ),
              TextSpan(
                text: 'IREJIM JENERI YU,',
                style: TextStyle(
                  color: AppTheme.appColors.accent,
                ),
              ),
              const TextSpan(
                text: '\nan experienced ',
              ),
              TextSpan(
                text: 'Flutter developer\n',
                style: TextStyle(
                  color: AppTheme.appColors.accent,
                ),
              ),
              const TextSpan(
                text: 'who focuses a significant goal on\ndeveloping ',
              ),
              TextSpan(
                text: 'web and mobile',
                style: TextStyle(
                  color: AppTheme.appColors.accent,
                ),
              ),
              const TextSpan(
                text: ' experiences.',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
