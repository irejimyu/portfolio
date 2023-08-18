import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/constants/sizes.dart';
import 'package:portfolio/screens/contact/contact_desktop.dart';
import 'package:portfolio/screens/history/history_desktop.dart';
import 'package:portfolio/screens/home/home_desktop.dart';
import 'package:portfolio/screens/introduction/introduction_desktop.dart';
import 'package:portfolio/utils/themes.dart';
import 'package:portfolio/widgets/cursor_layout.dart';
import 'package:portfolio/widgets/magnetic_icon_widget.dart';
import 'package:rive/rive.dart';

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
                  MagneticIcon(
                    iconSize: AppSizes.mainIconSize,
                    icon: Container(
                      margin: const EdgeInsets.all(10),
                      height: AppSizes.mainIconSize,
                      width: AppSizes.mainIconSize,
                      child: RiveAnimation.asset(
                        'assets/smile.riv',
                        stateMachines: const ['smile'],
                        onInit: (Artboard artBoard) {
                          artBoard.forEachComponent((child) {
                            if (child is Shape) {
                              final Shape shape = child;
                              if (shape.name == 'Mouth') {
                                shape.strokes.first.paint.color =
                                    AppTheme.appColors.accent;
                              }
                              if (shape.name == 'Eye') {
                                shape.fills.first.paint.color =
                                    AppTheme.appColors.accent;
                              }
                              // shape.strokes.first.paint.color = Colors.indigo;
                            }
                          });
                        },
                      ),
                    ),
                    onPressed: () {
                      _pageController.animateToPage(
                        0,
                        duration: const Duration(seconds: 1),
                        curve: Curves.decelerate,
                      );
                    },
                  ),
                  const Spacer(),
                  MagneticIcon(
                    icon: const FaIcon(FontAwesomeIcons.github),
                    iconSize: AppSizes.socialIconSize,
                    onPressed: () {},
                  ),
                  MagneticIcon(
                    icon: const FaIcon(FontAwesomeIcons.linkedin),
                    iconSize: AppSizes.socialIconSize,
                    onPressed: () {},
                  ),
                  MagneticIcon(
                    icon: const FaIcon(FontAwesomeIcons.google),
                    iconSize: AppSizes.socialIconSize,
                    onPressed: () {},
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
                      style: GoogleFonts.lato(
                        fontSize: AppSizes.navigationFontSize,
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
                      style: GoogleFonts.lato(
                        fontSize: AppSizes.navigationFontSize,
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
                      style: GoogleFonts.lato(
                        fontSize: AppSizes.navigationFontSize,
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
