import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  // App Basic Colors
  static const Color primaryColor = Color(0xFF4b68ff);
  static const Color secondary = Color(0xFFFFE24B);
  static const Color accent = Color(0xFFb0c7ff);

  // Gradient Colors
  static const Gradient linerGradient = LinearGradient(
    begin: Alignment(0.0, 0.0),
    end: Alignment(0.707, -0.707),
    colors: [
      Color(0xFFFF9a9e),
      Color(0xFFfad0c4),
      Color(0xFFfad0c4),
    ],
  );

  // App Text Colors
  static const Color textPrimary = Color(0xFF333333);
  static const Color textSecondary = Color(0xFF6C757D);
  static const Color textWhite = Colors.white;

  // App Background Colors
  static const Color light = Color(0xFFF6F6F6);
  static const Color dark = Color(0xFF272727);
  static const Color primaryBackground = Color(0xFFF3F5FF);

  // Background container color
  static const Color lightContainer = Color(0xFFF5F5F5);
  static Color darkContainer = Colors.white.withOpacity(0.1);

  // Add Button Color
  static const Color buttonPrimary = Color(0xFF4b68ff);
  static const Color buttonSecondary = Color(0xFF6C757D);
  static const Color buttonDisabled = Color(0xFFC4C4C4);

  // Add Boarder Color

  static const Color boarderPrimary = Color(0xFFD9D9D9);
  static const Color boarderSecondary = Color(0xFFE6E6E6);

  // Add Error and Validation Color
  static const Color error = Color(0xFFD32F2F);
  static const Color success = Color(0xFF388E3C);
  static const Color warning = Color(0xFFF57C00);
  static const Color info = Color(0xFF1976D2);

  // Neutral Shades
  static const Color black = Color(0xFF232323);
  static const Color darkerGrey = Color(0xFFF4F4F4);
  static const Color darkGrey = Color(0xFF939393);
  static const Color grey = Color(0xFF0E0E0E);
  static const Color softGrey = Color(0xFFF4F4F4);
  static const Color lightGrey = Color(0xFFF9F9F9);
  static const Color white = Color(0xFFFFFFFF);
}
