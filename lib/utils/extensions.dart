import 'package:flutter/material.dart';
import 'package:portfolio/utils/themes.dart';

extension ExtensionWidget on Widget {
  addNeumorphism({
    double borderRadius = 5,
    Offset offset = const Offset(2, 2),
    double blurRadius = 5,
    Color topShadowColor = const Color(0xffffffff),
    Color bottomShadowColor = const Color(0x54000000),
  }) {
    return Container(
      decoration: BoxDecoration(
        color: AppTheme.appColors.neutral,
        borderRadius: BorderRadius.all(
          Radius.circular(borderRadius),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(-offset.dx, -offset.dy),
            blurRadius: blurRadius,
            color: topShadowColor,
          ),
          BoxShadow(
            offset: offset,
            blurRadius: blurRadius,
            color: bottomShadowColor,
          ),
        ],
      ),
      child: this,
    );
  }
}

extension ExtensionText on Text {
  addEngraved() {
    return Text(
      data!,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: AppTheme.appColors.primary,
        shadows: const [
          Shadow(
            offset: Offset(0, 1),
            blurRadius: 5,
            color: Colors.white,
          ),
          Shadow(
            offset: Offset(0, -2),
            blurRadius: 2,
            color: Colors.black,
          ),
        ],
      ).merge(style),
    );
  }
}
