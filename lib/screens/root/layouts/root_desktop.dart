import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/screens/contact/introduction_desktop.dart';
import 'package:portfolio/screens/history/history_desktop.dart';
import 'package:portfolio/screens/home/home_desktop.dart';
import 'package:portfolio/screens/introduction/introduction_desktop.dart';
import 'package:portfolio/utils/themes.dart';
import 'package:portfolio/widgets/cursor_layout.dart';

class RootDesktop extends StatelessWidget {
  const RootDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return CursorLayout(
      child: Scaffold(
        body: Row(
          children: [
            SizedBox(
              width: 200.w,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FaIcon(
                      FontAwesomeIcons.github,
                      size: 40.sp,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FaIcon(
                      FontAwesomeIcons.linkedin,
                      size: 40.sp,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FaIcon(
                      FontAwesomeIcons.google,
                      size: 40.sp,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                    child: VerticalDivider(
                      width: 20,
                      thickness: 3,
                      color: AppTheme.appColors.accent,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: PageView(
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
              width: 200.w,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 30,
                    child: VerticalDivider(
                      width: 20,
                      thickness: 3,
                      color: AppTheme.appColors.accent,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Text(
                      'ABOUT',
                      style: TextStyle(
                        fontSize: 30.sp,
                        letterSpacing: 2,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Text(
                      'WORK',
                      style: TextStyle(
                        fontSize: 30.sp,
                        letterSpacing: 2,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Text(
                      'CONTACT',
                      style: TextStyle(
                        fontSize: 30.sp,
                        letterSpacing: 2,
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

// class CustomPageViewScrollPhysics extends ScrollPhysics {
//   const CustomPageViewScrollPhysics({ScrollPhysics? parent})
//       : super(parent: parent);
//
//   @override
//   CustomPageViewScrollPhysics applyTo(ScrollPhysics? ancestor) {
//     return CustomPageViewScrollPhysics(parent: buildParent(ancestor)!);
//   }
//
//   @override
//   SpringDescription get spring => const SpringDescription(
//         mass: 50,
//         stiffness: 100,
//         damping: 0.2,
//       );
// }
