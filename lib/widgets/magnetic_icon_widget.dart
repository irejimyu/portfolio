import 'package:flutter/material.dart';

class MagneticIcon extends StatefulWidget {
  final Widget icon;
  final double iconSize;
  final VoidCallback onPressed;
  const MagneticIcon({
    super.key,
    required this.iconSize,
    required this.onPressed,
    required this.icon,
  });

  @override
  State<MagneticIcon> createState() => _MagneticIconState();
}

class _MagneticIconState extends State<MagneticIcon> {
  Offset? pointerOffset;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onHover: (e) => setState(() => pointerOffset = e.localPosition),
      onExit: (e) => setState(() => pointerOffset = null),
      child: AnimatedContainer(
        curve: Curves.decelerate,
        transform: Matrix4.identity()
          ..translate(
            pointerOffset == null ? 0 : pointerOffset!.dx - widget.iconSize,
            pointerOffset == null ? 0 : pointerOffset!.dy - widget.iconSize,
          ),
        duration: const Duration(milliseconds: 200),
        child: IconButton(
          iconSize: widget.iconSize,
          icon: widget.icon,
          onPressed: widget.onPressed,
        ),
      ),
    );
  }
}
