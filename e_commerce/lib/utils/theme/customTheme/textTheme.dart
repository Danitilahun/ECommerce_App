import 'package:flutter/material.dart';

class TextThemeData {
  TextThemeData._();
  static TextTheme lightTextTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(
      color: Colors.black,
      fontSize: 32,
      fontWeight: FontWeight.bold,
    ),
    headlineMedium: const TextStyle().copyWith(
      color: Colors.black,
      fontSize: 24,
      fontWeight: FontWeight.w600,
    ),
    headlineSmall: const TextStyle().copyWith(
      color: Colors.black,
      fontSize: 28,
      fontWeight: FontWeight.w600,
    ),
    titleLarge: const TextStyle().copyWith(
      color: Colors.black,
      fontSize: 16,
      fontWeight: FontWeight.w600,
    ),
    titleMedium: const TextStyle().copyWith(
      color: Colors.black,
      fontSize: 16,
      fontWeight: FontWeight.w500,
    ),
    titleSmall: const TextStyle().copyWith(
      color: Colors.black,
      fontSize: 16,
      fontWeight: FontWeight.w400,
    ),
    bodyLarge: const TextStyle().copyWith(
      color: Colors.black,
      fontSize: 14,
      fontWeight: FontWeight.w500,
    ),
    bodyMedium: const TextStyle().copyWith(
      color: Colors.black,
      fontSize: 14,
      fontWeight: FontWeight.normal,
    ),
    bodySmall: const TextStyle().copyWith(
      color: Colors.black.withOpacity(0.5),
      fontSize: 14,
      fontWeight: FontWeight.w500,
    ),
    labelLarge: const TextStyle().copyWith(
      color: Colors.black,
      fontSize: 12,
      fontWeight: FontWeight.normal,
    ),
    labelMedium: const TextStyle().copyWith(
      color: Colors.black.withOpacity(0.5),
      fontSize: 12,
      fontWeight: FontWeight.normal,
    ),
  );

  static TextTheme darkTextTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(
      color: Colors.white,
      fontSize: 32,
      fontWeight: FontWeight.bold,
    ),
    headlineMedium: const TextStyle().copyWith(
      color: Colors.white,
      fontSize: 24,
      fontWeight: FontWeight.w600,
    ),
    headlineSmall: const TextStyle().copyWith(
      color: Colors.white,
      fontSize: 28,
      fontWeight: FontWeight.w600,
    ),
    titleLarge: const TextStyle().copyWith(
      color: Colors.white,
      fontSize: 16,
      fontWeight: FontWeight.w600,
    ),
    titleMedium: const TextStyle().copyWith(
      color: Colors.white,
      fontSize: 16,
      fontWeight: FontWeight.w500,
    ),
    titleSmall: const TextStyle().copyWith(
      color: Colors.white,
      fontSize: 16,
      fontWeight: FontWeight.w400,
    ),
    bodyLarge: const TextStyle().copyWith(
      color: Colors.white,
      fontSize: 14,
      fontWeight: FontWeight.w500,
    ),
    bodyMedium: const TextStyle().copyWith(
      color: Colors.white,
      fontSize: 14,
      fontWeight: FontWeight.normal,
    ),
    bodySmall: const TextStyle().copyWith(
      color: Colors.white.withOpacity(0.5),
      fontSize: 14,
      fontWeight: FontWeight.w500,
    ),
    labelLarge: const TextStyle().copyWith(
      color: Colors.white,
      fontSize: 12,
      fontWeight: FontWeight.normal,
    ),
    labelMedium: const TextStyle().copyWith(
      color: Colors.white.withOpacity(0.5),
      fontSize: 12,
      fontWeight: FontWeight.normal,
    ),
  );
}
