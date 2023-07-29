import 'package:flutter/material.dart';
import 'package:portfolio/utils/extensions.dart';

class IntroductionDesktop extends StatelessWidget {
  const IntroductionDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Flutter',
          style: TextStyle(
            fontSize: 200,
          ),
        ).addEngraved(),
        const Text(
          'Developer',
          style: TextStyle(
            fontSize: 200,
          ),
        ).addEngraved(),
      ],
    );
  }
}
