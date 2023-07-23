import 'package:flutter/material.dart';
import 'package:portfolio/screens/introduction/layouts/introduction_desktop.dart';
import 'package:portfolio/screens/introduction/layouts/introduction_mobile.dart';
import 'package:portfolio/screens/introduction/layouts/introduction_tablet.dart';
import 'package:portfolio/widgets/responsive_layout.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      mobileBody: IntroductionMobile(),
      tabletBody: IntroductionTablet(),
      desktopBody: IntroductionDesktop(),
    );
  }
}
