import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/utils/themes.dart';
import 'package:intl/intl.dart';

class HistoryCard extends StatelessWidget {
  final DateTime startDate;
  final DateTime endDate;
  final String position;
  final String company;
  final List<String> skills;

  const HistoryCard({
    super.key,
    required this.startDate,
    required this.endDate,
    required this.position,
    required this.company,
    required this.skills,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30.sp),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '${DateFormat('MMMM yyyy').format(startDate)} - ${DateFormat('MMMM yyyy').format(endDate)}',
            style: TextStyle(
              fontSize: 50.sp,
            ),
          ),
          Text.rich(
            TextSpan(
              style: TextStyle(
                fontSize: 75.sp,
                color: AppTheme.appColors.primary,
              ),
              children: [
                TextSpan(
                  text: '$position - ',
                  style: TextStyle(
                    color: AppTheme.appColors.accent,
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
              return Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 2,
                ),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10),
                  ),
                  color: AppTheme.appColors.primary,
                ),
                child: Text(
                  skill,
                  style: TextStyle(
                    color: AppTheme.appColors.neutral,
                  ),
                ),
              );
            }).toList(),
          )
        ],
      ),
    );
  }
}
