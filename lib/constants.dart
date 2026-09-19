import 'package:flutter/material.dart';

class AppColors {
  static const Color background = Color(0xFF0A0E12); // Deep Navy Black
  static const Color surface = Color(0xFF15191E);
  static const Color primary = Color(0xFF6366F1); // Indigo
  static const Color secondary = Color(0xFFFACC15); // gold/yellow for highlights
  static const Color textPrimary = Color(0xFFF1F5F9);
  static const Color textSecondary = Color(0xFF94A3B8);
  static const Color accent = Color(0xFF2DD4BF); // Teal
}

class AppTheme {
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.background,
    cardColor: AppColors.surface,
    colorScheme: ColorScheme.dark(
      primary: AppColors.primary,
      secondary: AppColors.secondary,
      surface: AppColors.surface,
    ),
    useMaterial3: true,
  );
}
