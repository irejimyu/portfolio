import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/utils/themes.dart';
import 'package:portfolio/widgets/separator_widget.dart';

class ContactDesktop extends StatelessWidget {
  const ContactDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(30.h),
                child: const PageSeparator(
                  separatorText: 'WHAT\'S NEXT',
                ),
              ),
              Text(
                'GET IN TOUCH.',
                style: TextStyle(
                  fontSize: 100.sp,
                  color: AppTheme.appColors.accent,
                ),
              ),
              Text.rich(
                TextSpan(
                  style: TextStyle(
                    fontSize: 75.sp,
                    color: AppTheme.appColors.primary,
                  ),
                  children: [
                    const TextSpan(
                      text:
                          'My inbox is constantly open and I\'m eager for any\nfresh opportunities.'
                          ' I will do my best to get back to you\nwhether you have a question or are just looking to ',
                    ),
                    TextSpan(
                      text: 'say hello!',
                      style: TextStyle(
                        color: AppTheme.appColors.accent,
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'irejimyu@gmail.com',
                style: TextStyle(
                  fontSize: 30.sp,
                ),
              ),
              Text(
                'Philippines, Caloocan City',
                style: TextStyle(
                  fontSize: 30.sp,
                ),
              ),
              Text(
                '+63 975 455 3481',
                style: TextStyle(
                  fontSize: 30.sp,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.all(30.sp),
          child: RichText(
            text: TextSpan(
              style: TextStyle(
                fontSize: 20.sp,
                color: AppTheme.appColors.primary,
              ),
              children: [
                const TextSpan(
                  text: 'Designed & Built by ',
                ),
                TextSpan(
                  text: 'Irejim Jeneri Yu',
                  style: TextStyle(
                    color: AppTheme.appColors.accent,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
