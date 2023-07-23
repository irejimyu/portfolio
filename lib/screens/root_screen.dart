import 'package:flutter/material.dart';
import 'package:portfolio/screens/introduction/introduction_screen.dart';
import 'package:portfolio/widgets/cursor_layout.dart';

class RootScreen extends StatelessWidget {
  const RootScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const CursorLayout(
      body: Column(
        children: [
          IntroScreen(),
        ],
      ),
    );
  }
}
