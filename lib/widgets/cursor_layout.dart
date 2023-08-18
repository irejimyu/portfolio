import 'package:flutter/material.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/utils/themes.dart';

class CursorLayout extends StatefulWidget {
  final Widget child;
  const CursorLayout({super.key, required this.child});

  @override
  State<CursorLayout> createState() => _CursorLayoutState();
}

class _CursorLayoutState extends State<CursorLayout>
    with SingleTickerProviderStateMixin {
  Offset? pointerOffset;
  late AnimationController pointerSizeController;
  late Animation<double> pointerAnimation;

  @override
  void initState() {
    pointerSizeController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    pointerAnimation = CurvedAnimation(
      curve: Curves.easeOut,
      parent: Tween<double>(begin: 0, end: 1).animate(pointerSizeController),
    );
    super.initState();
  }

  void togglePointerSize(bool hovering) async {
    if (hovering) {
      pointerSizeController.forward();
    } else {
      pointerSizeController.reverse();
    }
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      // cursor: SystemMouseCursors.none,
      onHover: (e) => setState(() => pointerOffset = e.localPosition),
      onExit: (e) => setState(() => pointerOffset = null),
      child: Stack(
        children: [
          widget.child,
          if (pointerOffset != null) ...[
            // AnimatedBuilder(
            //     animation: pointerSizeController,
            //     builder: (context, snapshot) {
            //       return AnimatedPointer(
            //         pointerOffset: pointerOffset!,
            //         pointer: OuterPointer(15 + 100 * pointerAnimation.value),
            //       );
            //     }),
            // AnimatedPointer(
            //   pointerOffset: pointerOffset!,
            //   movementDuration: const Duration(milliseconds: 200),
            //   pointer: InnerPointer(4),
            // ),
          ],
        ],
      ),
    );
  }
}

class AnimatedPointer extends StatelessWidget {
  const AnimatedPointer({
    Key? key,
    this.movementDuration = const Duration(milliseconds: 700),
    required this.pointer,
    required this.pointerOffset,
  }) : super(key: key);
  final Duration movementDuration;
  final CustomPainter pointer;
  final Offset pointerOffset;

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: movementDuration,
      curve: Curves.easeOutExpo,
      top: pointerOffset.dy,
      left: pointerOffset.dx,
      child: CustomPaint(
        painter: pointer,
      ),
    );
  }
}

class InnerPointer extends CustomPainter {
  final double radius;

  InnerPointer(this.radius);
  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawCircle(
      const Offset(0, 0),
      radius,
      Paint()
        ..color = AppTheme.appColors.accent
        ..blendMode = BlendMode.src,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class OuterPointer extends CustomPainter {
  final double radius;

  OuterPointer(this.radius);
  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawCircle(
      const Offset(0, 0),
      radius,
      Paint()
        ..strokeWidth = 2
        ..color = AppTheme.appColors.accent
        ..blendMode = BlendMode.screen,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
