import 'package:flutter/material.dart';
import 'package:portfolio/screens/home/home_mobile.dart';

class RootMobile extends StatelessWidget {
  const RootMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: ListView(
        children: const [
          HomeMobile(),
        ],
      ),
    );
  }
}
