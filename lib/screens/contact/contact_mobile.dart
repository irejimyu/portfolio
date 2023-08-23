import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/utils/fonts.dart';
import 'package:portfolio/utils/sizes.dart';
import 'package:portfolio/utils/strings.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:url_launcher/url_launcher.dart';

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
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: AppStrings.socialLinks.map((value) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                color: AppColors.accent,
                icon: value.icon,
                iconSize: 150.sp,
                onPressed: () async {
                  final Uri launchUri = Uri(
                    scheme: value.scheme.name,
                    path: value.link,
                  );
                  if (await canLaunchUrl(launchUri)) {
                    launchUrl(launchUri);
                  }
                },
              ),
            );
          }).toList(),
        )
      ],
    );
  }
}
