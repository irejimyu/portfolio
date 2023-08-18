import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/themes.dart';

class PageSeparator extends StatelessWidget {
  final String separatorText;
  const PageSeparator({super.key, required this.separatorText});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          separatorText,
          style: TextStyle(
            fontSize: 40.sp,
            letterSpacing: 2,
            color: AppTheme.appColors.accent,
          ),
        ),
        Expanded(
          child: Divider(
            indent: 50.sp,
            thickness: 3,
            color: AppTheme.appColors.primary,
          ),
        ),
      ],
    );
  }
}
