import 'package:flutter/material.dart';
import 'package:portfolio/utils/strings.dart';
import 'package:portfolio/widgets/cursor_layout.dart';
import 'package:portfolio/widgets/left_sidebar.dart';
import 'package:portfolio/widgets/right_sidebar.dart';

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
            LeftSideBar(pageController: _pageController),
            Expanded(
              child: PageView(
                controller: _pageController,
                scrollDirection: Axis.vertical,
                pageSnapping: false,
                children: AppStrings.pageAppDesktop.map((value) {
                  return value.page;
                }).toList(),
              ),
            ),
            RightSideBar(pageController: _pageController),
          ],
        ),
      ),
    );
  }
}
