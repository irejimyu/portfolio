import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/constants/sizes.dart';
import 'package:portfolio/screens/contact/contact_desktop.dart';
import 'package:portfolio/screens/history/history_desktop.dart';
import 'package:portfolio/screens/home/home_desktop.dart';
import 'package:portfolio/screens/introduction/introduction_desktop.dart';
import 'package:portfolio/utils/themes.dart';
import 'package:portfolio/widgets/cursor_layout.dart';
import 'package:portfolio/widgets/magnetic_widget.dart';
import 'package:portfolio/widgets/smile_rive_widget.dart';

class RootDesktop extends StatefulWidget {
  const RootDesktop({super.key});
  @override
  State<RootDesktop> createState() => _RootDesktopState();
}

class _RootDesktopState extends State<RootDesktop> {
  final PageController _pageController = PageController(initialPage: 0);

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CursorLayout(
      child: Scaffold(
        body: Row(
          children: [
            SizedBox(
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
                          0,
                          duration: const Duration(seconds: 1),
                          curve: Curves.decelerate,
                        );
                      },
                    ),
                  ),
                  const Spacer(),
                  MagneticWidget(
                    duration: const Duration(milliseconds: 200),
                    curve: Curves.decelerate,
                    child: IconButton(
                      icon: const FaIcon(FontAwesomeIcons.github),
                      iconSize: AppSizes.socialIconSize,
                      onPressed: () {},
                    ),
                  ),
                  MagneticWidget(
                    duration: const Duration(milliseconds: 200),
                    curve: Curves.decelerate,
                    child: IconButton(
                      icon: const FaIcon(FontAwesomeIcons.linkedin),
                      iconSize: AppSizes.socialIconSize,
                      onPressed: () {},
                    ),
                  ),
                  MagneticWidget(
                    duration: const Duration(milliseconds: 200),
                    curve: Curves.decelerate,
                    child: IconButton(
                      icon: const FaIcon(FontAwesomeIcons.google),
                      iconSize: AppSizes.socialIconSize,
                      onPressed: () {},
                    ),
                  ),
                  SizedBox(
                    height: AppSizes.sideLineHeight,
                    child: VerticalDivider(
                      thickness: AppSizes.lineThick,
                      color: AppTheme.appColors.accent,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: PageView(
                controller: _pageController,
                scrollDirection: Axis.vertical,
                pageSnapping: false,
                children: const [
                  HomeDesktop(),
                  IntroductionDesktop(),
                  HistoryDesktop(),
                  ContactDesktop()
                ],
              ),
            ),
            SizedBox(
              width: AppSizes.sideWidth,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: AppSizes.sideLineHeight,
                    child: VerticalDivider(
                      thickness: AppSizes.lineThick,
                      color: AppTheme.appColors.accent,
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
                        color: AppTheme.appColors.secondary,
                        fontFamily: 'Futura',
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
                        color: AppTheme.appColors.secondary,
                        fontFamily: 'Futura',
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
                        color: AppTheme.appColors.secondary,
                        fontFamily: 'Futura',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
