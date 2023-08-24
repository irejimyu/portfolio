/// Demonstrates playing a one-shot animation on demand

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/screens/root/root_screen.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:rive/rive.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final assetPath = 'assets/rive/smile.riv';

  late RiveAnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = OneShotAnimation(
      'loading',
      autoplay: true,
      onStop: () {
        Navigator.pushReplacement<void, void>(
          context,
          MaterialPageRoute<void>(
            builder: (BuildContext context) => const RootScreen(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 100.h,
          width: 100.h,
          child: RiveAnimation.asset(
            assetPath,
            controllers: [_controller],
            onInit: (Artboard artBoard) {
              artBoard.forEachComponent((child) {
                if (child is Shape) {
                  final Shape shape = child;
                  if (shape.name == 'Line') {
                    shape.strokes.first.paint.color = AppColors.accent;
                  }
                  if (shape.name == 'Pen') {
                    shape.fills.first.paint.color = AppColors.accent;
                  }
                }
              });
            },
          ),
        ),
      ),
    );
  }
}
