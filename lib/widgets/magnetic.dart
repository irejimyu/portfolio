import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MagneticWidget extends StatefulWidget {
  final Widget child;
  final Duration duration;
  final Curve curve;
  final EdgeInsets? padding;
  final double? height;
  final double? width;
  const MagneticWidget({
    super.key,
    this.curve = Curves.linear,
    required this.duration,
    required this.child,
    this.padding,
    this.height,
    this.width,
  });

  @override
  State<MagneticWidget> createState() => _MagneticWidgetState();
}

class _MagneticWidgetState extends State<MagneticWidget> {
  final _sad = GlobalKey();

  Offset pointerOffset = Offset.zero;
  Size containerSize = Size.zero;
  bool hovered = false;

  @override
  Widget build(BuildContext context) {
    return FocusableActionDetector(
      onShowHoverHighlight: _handleHover,
      child: MouseRegion(
        onHover: (e) => hovered ? _setPointer(e) : null,
        onExit: (e) => _resetPointer(),
        child: AnimatedContainer(
          padding: widget.padding,
          width: widget.width,
          height: widget.height,
          key: _sad,
          curve: widget.curve,
          transform: Matrix4.identity()
            ..translate(
              _getOffsetX,
              _getOffsetY,
            ),
          duration: widget.duration,
          child: widget.child,
        ),
      ),
    );
  }

  void _handleHover(bool value) => setState(() => hovered = value);

  void _setPointer(PointerHoverEvent e) {
    return setState(() {
      pointerOffset = e.localPosition;
      if (mounted) {
        containerSize = _sad.currentContext?.size ?? Size.zero;
      }
    });
  }

  void _resetPointer() => setState(() => pointerOffset = Offset.zero);

  double get _getOffsetX =>
      pointerOffset.dy != 0 ? pointerOffset.dx - (containerSize.width / 2) : 0;

  double get _getOffsetY =>
      pointerOffset.dy != 0 ? pointerOffset.dy - (containerSize.height / 2) : 0;
}
