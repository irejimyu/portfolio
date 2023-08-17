import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/utils/colors.dart';

@immutable
class AppTheme {
  static const appColors = AppColors();

  const AppTheme._();

  static ThemeData define() {
    return ThemeData(
      primaryColor: appColors.primary,
      canvasColor: appColors.neutral,
      useMaterial3: true,
      textTheme: GoogleFonts.bebasNeueTextTheme().apply(
        displayColor: appColors.primary,
        bodyColor: appColors.primary,
      ),
      iconTheme: IconThemeData(color: appColors.primary),
      scaffoldBackgroundColor: appColors.neutral,
      dividerColor: appColors.primary,
    );
  }
}
