import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/utils/themes.dart';
import 'package:portfolio/widgets/history_card_widget.dart';
import 'package:portfolio/widgets/separator_widget.dart';

class HistoryDesktop extends StatelessWidget {
  const HistoryDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.all(30.h),
          child: const PageSeparator(
            separatorText: 'WORK HISTORY',
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HistoryCard(
              startDate: DateTime(2021, 04),
              endDate: DateTime(2023, 07),
              position: 'Flutter Developer',
              company: 'MNK SOFT. CORPORATION',
              skills: const [
                'Flutter',
                'Firebase',
                'Angular',
                'AngularJS',
                'Node.js',
                'MySQL',
                'Python',
                'Git',
              ],
            ),
            const Divider(
              color: Colors.transparent,
            ),
            HistoryCard(
              startDate: DateTime(2019, 10),
              endDate: DateTime(2021, 01),
              position: 'Junior Programmer',
              company: 'Lee Systems Technology Ventures',
              skills: const [
                'Angular',
                'AngularJS',
                'Ionic',
                'Node.js',
                'C#',
                'MySQL',
                'Php',
                'Git',
              ],
            )
          ],
        )
      ],
    );
  }
}
