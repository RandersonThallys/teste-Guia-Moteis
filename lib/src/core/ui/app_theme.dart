
import 'package:flutter/material.dart';
import 'package:teste_seguimentos_moteis/src/core/ui/app_colors.dart';
import 'package:teste_seguimentos_moteis/src/core/ui/app_fonts.dart';

class AppTheme {
  final AppColors colors = AppColors();

  final AppFonts typography = AppFonts();

  ThemeData get lightTheme {
    return ThemeData(
      brightness: Brightness.light,
    );
  }
}
