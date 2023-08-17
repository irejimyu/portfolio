import 'dart:js_interop';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/utils/extensions.dart';
import 'package:portfolio/utils/themes.dart';

class HomeDesktop extends StatefulWidget {
  const HomeDesktop({super.key});

  @override
  State<HomeDesktop> createState() => _HomeDesktopState();
}

class _HomeDesktopState extends State<HomeDesktop>
    with SingleTickerProviderStateMixin {
  Offset? pointerOffset;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onHover: (e) => setState(() => pointerOffset = e.localPosition),
      child: Stack(
        children: [
          AnimatedPositioned(
            curve: Curves.decelerate,
            duration: const Duration(milliseconds: 200),
            top: 180.h + (pointerOffset.isNull ? 0 : pointerOffset!.dy / 50),
            left: 550.w + (pointerOffset.isNull ? 0 : pointerOffset!.dx / 50),
            child: SizedBox(
              height: 500.h,
              width: 450.w,
              child: CustomPaint(
                painter: RectanglePainter(),
              ),
            ),
          ),
          AnimatedPositioned(
            curve: Curves.decelerate,
            duration: const Duration(milliseconds: 200),
            top: 70.h + (pointerOffset.isNull ? 0 : pointerOffset!.dy / 60),
            left: 890.w + (pointerOffset.isNull ? 0 : pointerOffset!.dx / 60),
            child: SizedBox(
              height: 220.h,
              width: 220.w,
              child: CustomPaint(
                painter: CirclePainter(),
              ),
            ),
          ),
          AnimatedPositioned(
            curve: Curves.decelerate,
            duration: const Duration(milliseconds: 200),
            top: 500.h + (pointerOffset.isNull ? 0 : pointerOffset!.dy / 80),
            left: 780.w + (pointerOffset.isNull ? 0 : pointerOffset!.dx / 80),
            child: SizedBox(
              height: 400.h,
              width: 480.w,
              child: CustomPaint(
                painter: TrianglePainter(),
              ),
            ),
          ),
          AnimatedPositioned(
            curve: Curves.decelerate,
            duration: const Duration(milliseconds: 200),
            top: 400.h + (pointerOffset.isNull ? 0 : pointerOffset!.dy / 30),
            left: 405.w + (pointerOffset.isNull ? 0 : pointerOffset!.dx / 30),
            child: Text(
              'PERSONAL\nPORFOLIO',
              style: TextStyle(
                fontSize: 100.sp,
                height: 1,
              ),
            ),
          ),
          AnimatedPositioned(
            curve: Curves.decelerate,
            duration: const Duration(milliseconds: 200),
            top: 750.h + (pointerOffset.isNull ? 0 : pointerOffset!.dy / 20),
            left: 590.w + (pointerOffset.isNull ? 0 : pointerOffset!.dx / 20),
            child: Text(
              'FLUTTER DEVELOPER',
              style: TextStyle(
                fontSize: 50.sp,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RectanglePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..strokeWidth = 2
      ..color = AppTheme.appColors.accent
      ..style = PaintingStyle.stroke;

    const a = Offset(0, 0);
    final b = Offset(size.width, size.height);
    final rect = Rect.fromPoints(a, b);
    canvas.drawRect(rect, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}

class CirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..strokeWidth = 2
      ..color = AppTheme.appColors.accent
      ..style = PaintingStyle.stroke;

    final center = Offset(size.width / 2, size.height / 2);
    canvas.drawCircle(center, size.width / 2, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}

class TrianglePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..strokeWidth = 2
      ..color = AppTheme.appColors.accent
      ..style = PaintingStyle.stroke;

    final path = Path();
    path.moveTo(0, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width / 2, size.height);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
