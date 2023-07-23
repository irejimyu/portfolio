import 'package:flutter/material.dart';

class CursorLayout extends StatefulWidget {
  final Widget body;
  const CursorLayout({super.key, required this.body});

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
      cursor: SystemMouseCursors.none,
      onHover: (e) => setState(() => pointerOffset = e.localPosition),
      onExit: (e) => setState(() => pointerOffset = null),
      child: Stack(
        children: [
          Scaffold(
            appBar: AppBar(
              title: Text('asdf'),
            ),
            body: widget.body,
          ),
          if (pointerOffset != null) ...[
            AnimatedBuilder(
                animation: pointerSizeController,
                builder: (context, snapshot) {
                  return AnimatedPointer(
                    pointerOffset: pointerOffset!,
                    radius: 20 + 100 * pointerAnimation.value,
                  );
                }),
            AnimatedPointer(
              pointerOffset: pointerOffset!,
              movementDuration: const Duration(milliseconds: 200),
              radius: 5,
            ),
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
    this.radius = 30,
    required this.pointerOffset,
  }) : super(key: key);
  final Duration movementDuration;
  final Offset pointerOffset;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: movementDuration,
      curve: Curves.easeOutExpo,
      top: pointerOffset.dy,
      left: pointerOffset.dx,
      child: CustomPaint(
        painter: Pointer(radius),
      ),
    );
  }
}

class Pointer extends CustomPainter {
  final double radius;

  Pointer(this.radius);
  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawCircle(
      const Offset(0, 0),
      radius,
      Paint()
        ..color = Colors.white
        ..blendMode = BlendMode.difference,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
