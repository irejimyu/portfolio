import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/utils/strings.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:url_launcher/link.dart';

class ContactMobile extends StatelessWidget {
  const ContactMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          AppStrings.contactTitle,
          style: TextStyle(
            fontSize: 350.sp,
            color: AppColors.primary,
            height: 0.9,
          ),
          textAlign: TextAlign.center,
        ),
        Padding(
          padding: EdgeInsets.only(top: 50.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: AppStrings.socialLinks.map((value) {
              return Link(
                target: LinkTarget.blank,
                uri: Uri.parse('${value.scheme.name}://${value.link}'),
                builder: (context, followLink) {
                  return IconButton(
                    color: AppColors.accent,
                    icon: value.icon,
                    iconSize: 150.sp,
                    onPressed: followLink,
                  );
                },
              );
            }).toList(),
          ),
        )
      ],
    );
  }
}
