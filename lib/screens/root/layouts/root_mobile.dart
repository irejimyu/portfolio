import 'package:flutter/material.dart';
import 'package:portfolio/screens/introduction/layouts/introduction_mobile.dart';
import 'package:portfolio/widgets/cursor_layout.dart';

class RootMobile extends StatelessWidget {
  const RootMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: ListView(
        children: const [
          IntroductionMobile(),
        ],
      ),
    );
  }
}
