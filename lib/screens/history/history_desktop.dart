import 'package:flutter/material.dart';
import 'package:portfolio/utils/strings.dart';
import 'package:portfolio/widgets/history_card/history_card_desktop.dart';
import 'package:portfolio/widgets/separator/separator_desktop.dart';

class HistoryDesktop extends StatelessWidget {
  const HistoryDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const PageSeparatorDesktop(separatorText: AppStrings.historyTitle),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: AppStrings.workHistory.map((value) {
            return HistoryCardDesktop(
              start: value.start,
              end: value.end,
              position: value.position,
              company: value.company,
              skills: value.skills,
            );
          }).toList(),
        )
      ],
    );
  }
}
