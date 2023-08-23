import 'package:flutter/material.dart';
import 'package:portfolio/utils/fonts.dart';
import 'package:portfolio/utils/sizes.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/utils/strings.dart';

class RightSideBar extends StatelessWidget {
  final PageController pageController;
  // final int index;

  const RightSideBar({
    super.key,
    // required this.index,
    required this.pageController,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: AppSizes.sideWidth,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: AppSizes.sideLineHeight,
            child: VerticalDivider(
              thickness: AppSizes.lineThick,
              color: AppColors.accent,
            ),
          ),
          ...AppStrings.pageAppDesktop
              .asMap()
              .entries
              .where((element) => element.key != 0)
              .map((value) {
            return GestureDetector(
              onTap: () {
                pageController.animateToPage(
                  value.key,
                  duration: const Duration(seconds: 1),
                  curve: Curves.decelerate,
                );
              },
              child: Text(
                value.value.text.toUpperCase(),
                style: TextStyle(
                  fontSize: AppSizes.navigationFontSize,
                  color: AppColors.secondary,
                  fontFamily: AppFonts.secondaryFont,
                  // decoration: index == value.key
                  //     ? TextDecoration.lineThrough
                  //     : TextDecoration.none,
                  decorationColor: AppColors.accent,
                  decorationThickness: 4,
                ),
              ),
            );
          }),
        ],
      ),
    );
  }
}
