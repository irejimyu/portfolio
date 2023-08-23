import 'package:flutter/material.dart';
import 'package:portfolio/utils/fonts.dart';
import 'package:portfolio/utils/sizes.dart';
import 'package:portfolio/utils/colors.dart';

class RightSideBar extends StatelessWidget {
  const RightSideBar({
    super.key,
    required PageController pageController,
  }) : _pageController = pageController;

  final PageController _pageController;

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
          GestureDetector(
            onTap: () {
              _pageController.animateToPage(
                1,
                duration: const Duration(seconds: 1),
                curve: Curves.decelerate,
              );
            },
            child: Text(
              'ABOUT',
              style: TextStyle(
                fontSize: AppSizes.navigationFontSize,
                color: AppColors.secondary,
                fontFamily: AppFonts.secondaryFont,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              _pageController.animateToPage(
                2,
                duration: const Duration(seconds: 1),
                curve: Curves.decelerate,
              );
            },
            child: Text(
              'WORK',
              style: TextStyle(
                fontSize: AppSizes.navigationFontSize,
                color: AppColors.secondary,
                fontFamily: AppFonts.secondaryFont,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              _pageController.animateToPage(
                3,
                duration: const Duration(seconds: 1),
                curve: Curves.decelerate,
              );
            },
            child: Text(
              'CONTACT',
              style: TextStyle(
                fontSize: AppSizes.navigationFontSize,
                color: AppColors.secondary,
                fontFamily: AppFonts.secondaryFont,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
