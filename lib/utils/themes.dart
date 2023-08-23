import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/utils/fonts.dart';
import 'package:portfolio/utils/colors.dart';

@immutable
class AppTheme {
  const AppTheme._();

  static ThemeData define() {
    return ThemeData(
      primaryColor: AppColors.primary,
      canvasColor: AppColors.neutral,
      useMaterial3: true,
      textTheme: GoogleFonts.bebasNeueTextTheme().apply(
        displayColor: AppColors.primary,
        bodyColor: AppColors.primary,
        fontFamily: AppFonts.primaryFont,
      ),
      iconTheme: const IconThemeData(color: AppColors.primary),
      scaffoldBackgroundColor: AppColors.neutral,
      dividerColor: AppColors.primary,
    );
  }
}
