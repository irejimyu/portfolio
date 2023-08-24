import 'package:flutter/material.dart';
import 'package:portfolio/utils/sizes.dart';
import 'package:portfolio/utils/strings.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/widgets/magnetic.dart';
import 'package:portfolio/widgets/smile_rive.dart';
import 'package:url_launcher/link.dart';

class LeftSideBar extends StatelessWidget {
  const LeftSideBar({
    super.key,
    required PageController pageController,
  }) : _pageController = pageController;

  final PageController _pageController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: AppSizes.sideWidth,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          MagneticWidget(
            duration: const Duration(milliseconds: 200),
            curve: Curves.decelerate,
            child: IconButton(
              icon: Container(
                margin: const EdgeInsets.all(10),
                height: AppSizes.mainIconSize,
                width: AppSizes.mainIconSize,
                child: const SmileRive(),
              ),
              onPressed: () {
                _pageController.animateToPage(
                  duration: const Duration(seconds: 1),
                  curve: Curves.decelerate,
                  0,
                );
              },
            ),
          ),
          const Spacer(),
          ...AppStrings.socialLinks.map((value) {
            return MagneticWidget(
              duration: const Duration(milliseconds: 200),
              curve: Curves.decelerate,
              child: Link(
                target: LinkTarget.blank,
                uri: Uri.parse('${value.scheme.name}://${value.link}'),
                builder: (context, followLink) {
                  return IconButton(
                    icon: value.icon,
                    iconSize: AppSizes.socialIconSize,
                    onPressed: followLink,
                  );
                },
              ),
            );
          }),
          SizedBox(
            height: AppSizes.sideLineHeight,
            child: VerticalDivider(
              thickness: AppSizes.lineThick,
              color: AppColors.accent,
            ),
          ),
        ],
      ),
    );
  }
}
