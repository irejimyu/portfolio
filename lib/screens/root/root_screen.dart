import 'package:flutter/material.dart';
import 'package:portfolio/screens/root/layouts/root_desktop.dart';
import 'package:portfolio/screens/root/layouts/root_mobile.dart';
import 'package:portfolio/widgets/responsive_layout.dart';

class RootScreen extends StatelessWidget {
  const RootScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      mobileBody: RootMobile(),
      desktopBody: RootDesktop(),
    );
  }
}
