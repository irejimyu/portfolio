import 'package:flutter/material.dart';
import 'package:portfolio/screens/introduction/layouts/introduction_desktop.dart';
import 'package:portfolio/widgets/cursor_layout.dart';

class RootDesktop extends StatelessWidget {
  const RootDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return CursorLayout(
      child: Scaffold(
        body: Row(
          children: [
            const SizedBox(
              width: 100,
            ),
            Expanded(
              child: ListView(
                children: const [
                  IntroductionDesktop(),
                ],
              ),
            ),
            const SizedBox(
              width: 100,
              child: Column(
                children: [
                  SizedBox(
                    height: 50,
                    child: VerticalDivider(
                      width: 20,
                      thickness: 3,
                      color: Colors.grey,
                    ),
                  ),
                  Text('ABOUT'),
                  Text('WORK'),
                  Text('CONTACT'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
