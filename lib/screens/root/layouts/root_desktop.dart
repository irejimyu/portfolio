import 'package:flutter/material.dart';
import 'package:portfolio/screens/introduction/layouts/introduction_desktop.dart';
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
              width: 100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 50,
                    child: VerticalDivider(
                      width: 20,
                      thickness: 3,
                      color: AppTheme.appColors.primary,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                shrinkWrap: true,
                children: const [
                  IntroductionDesktop(),
                ],
              ),
            ),
            SizedBox(
              width: 100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 50,
                    child: VerticalDivider(
                      width: 20,
                      thickness: 3,
                      color: AppTheme.appColors.primary,
                    ),
                  ),
                  const Text('ABOUT'),
                  const Text('WORK'),
                  const Text('CONTACT'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
