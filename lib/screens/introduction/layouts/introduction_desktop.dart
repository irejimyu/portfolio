import 'package:flutter/material.dart';
import 'package:portfolio/utils/extensions.dart';
import 'package:portfolio/utils/themes.dart';

class IntroductionDesktop extends StatelessWidget {
  const IntroductionDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Flutter',
          style: TextStyle(
            fontSize: 150,
          ),
        ).addEngraved(),
        Text(
          'Developer',
          style: TextStyle(
            fontSize: 150,
            color: AppTheme.appColors.primary,
            fontWeight: FontWeight.bold,
          ),
        ).addEngraved(),
      ],
    );
  }
}
