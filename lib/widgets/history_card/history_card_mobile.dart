import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/utils/fonts.dart';

class HistoryCardMobile extends StatelessWidget {
  final DateTime start;
  final DateTime end;
  final String position;
  final String company;
  final List<String> skills;

  const HistoryCardMobile({
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
      padding: EdgeInsets.symmetric(vertical: 100.sp, horizontal: 250.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            '${DateFormat('MMMM yyyy').format(start)} - ${DateFormat('MMMM yyyy').format(end)}',
            style: TextStyle(
              fontSize: 90.sp,
            ),
            textAlign: TextAlign.center,
          ),
          Text.rich(
            TextSpan(
              style: TextStyle(
                fontSize: 180.sp,
                color: AppColors.primary,
                height: 1,
              ),
              children: [
                TextSpan(
                  text: '$position\n',
                  style: const TextStyle(
                    color: AppColors.accent,
                  ),
                ),
                TextSpan(
                  text: company,
                ),
              ],
            ),
            textAlign: TextAlign.center,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.h),
            child: Wrap(
              spacing: 5,
              runSpacing: 5,
              alignment: WrapAlignment.center,
              children: skills.map((skill) {
                return SkillChip(text: skill);
              }).toList(),
            ),
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
      padding: EdgeInsets.symmetric(horizontal: 30.sp, vertical: 10.sp),
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
          fontSize: 50.sp,
          fontFamily: AppFonts.secondaryFont,
        ),
      ),
    );
  }
}
