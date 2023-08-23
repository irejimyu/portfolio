import 'package:flutter/material.dart';
import 'package:portfolio/utils/strings.dart';
import 'package:portfolio/widgets/history_card/history_card_mobile.dart';
import 'package:portfolio/widgets/separator/separator_mobile.dart';

class HistoryMobile extends StatelessWidget {
  const HistoryMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const PageSeparatorMobile(separatorText: AppStrings.historyTitle),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: AppStrings.workHistory.map((value) {
            return HistoryCardMobile(
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
