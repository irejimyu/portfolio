import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/utils/themes.dart';
import 'package:portfolio/widgets/separator_widget.dart';

class ContactDesktop extends StatelessWidget {
  const ContactDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Interested in\nWorking Together?',
                style: TextStyle(
                  fontSize: 200.sp,
                  color: AppTheme.appColors.primary,
                  height: 0.9,
                ),
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: EdgeInsets.all(20.sp),
                child: Column(
                  children: [
                    Text(
                      'Drop me an email:',
                      style: GoogleFonts.poppins(
                        fontSize: 20.sp,
                        color: AppTheme.appColors.primary,
                      ),
                    ),
                    Text(
                      'irejimyu@gmail.com',
                      style: GoogleFonts.poppins(
                        fontSize: 40.sp,
                        color: AppTheme.appColors.secondary,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        // Column(
        //   crossAxisAlignment: CrossAxisAlignment.start,
        //   children: [
        //     Text(
        //       'Phone',
        //       style: GoogleFonts.poppins(
        //         fontSize: 20.sp,
        //         color: AppTheme.appColors.primary,
        //         fontWeight: FontWeight.bold,
        //       ),
        //     ),
        //     Text(
        //       '+63 975 455 3481',
        //       style: GoogleFonts.poppins(
        //         fontSize: 20.sp,
        //         color: AppTheme.appColors.secondary,
        //         fontWeight: FontWeight.bold,
        //       ),
        //     ),
        //   ],
        // ),
        // RichText(
        //   text: TextSpan(
        //     style: GoogleFonts.montserrat(
        //       fontSize: 20.sp,
        //       color: AppTheme.appColors.primary,
        //     ),
        //     children: [
        //       const TextSpan(
        //         text: 'Designed & Built by ',
        //       ),
        //       TextSpan(
        //         text: 'Irejim Jeneri Yu',
        //         style: TextStyle(
        //           color: AppTheme.appColors.accent,
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
      ],
    );
  }
}
