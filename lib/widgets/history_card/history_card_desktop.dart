import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/utils/fonts.dart';

class HistoryCardDesktop extends StatelessWidget {
  final DateTime start;
  final DateTime end;
  final String position;
  final String company;
  final List<String> skills;

  const HistoryCardDesktop({
    super.key,
    required this.start,
    required this.end,
    required this.position,
    required this.company,
    required this.skills,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 50.sp, horizontal: 30.sp),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '${DateFormat('MMMM yyyy').format(start)} - ${DateFormat('MMMM yyyy').format(end)}',
            style: TextStyle(
              fontSize: 50.sp,
            ),
          ),
          Text.rich(
            TextSpan(
              style: TextStyle(
                fontSize: 75.sp,
                color: AppColors.primary,
                height: 1,
              ),
              children: [
                TextSpan(
                  text: '$position - ',
                  style: const TextStyle(
                    color: AppColors.accent,
                  ),
                ),
                TextSpan(
                  text: company,
                ),
              ],
            ),
          ),
          Wrap(
            spacing: 5,
            runSpacing: 5,
            children: skills.map((skill) {
              return SkillChip(text: skill);
            }).toList(),
          )
        ],
      ),
    );
  }
}

class SkillChip extends StatelessWidget {
  final String text;
  const SkillChip({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.sp, vertical: 5.sp),
      decoration: const BoxDecoration(
        color: AppColors.secondary,
        borderRadius: BorderRadius.all(
          Radius.circular(50),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: AppColors.neutral,
          fontWeight: FontWeight.bold,
          fontSize: 20.sp,
          fontFamily: AppFonts.secondaryFont,
        ),
      ),
    );
  }
}
