import 'package:flutter/material.dart';
import 'package:portfolio/utils/strings.dart';

class RootMobile extends StatelessWidget {
  const RootMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: PageView(
        scrollDirection: Axis.vertical,
        pageSnapping: true,
        children: AppStrings.pageAppMobile.map((value) {
          return value.page;
        }).toList(),
      ),
    );
  }
}
