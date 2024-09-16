import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:system/app/colors.dart';

/// The theme of the system.
ThemeData getThemeData() {
  final baseTheme = ThemeData.dark();
  return baseTheme.copyWith(
    colorScheme: baseTheme.colorScheme.copyWith(
      primary: SystemColors.primary,
      onPrimary: SystemColors.secondary,
      secondary: SystemColors.secondary,
      onSecondary: SystemColors.primary,
      surface: SystemColors.surface,
      onSurface: SystemColors.primary,
      error: SystemColors.error,
      onError: SystemColors.secondary,
    ),
    textTheme: GoogleFonts.victorMonoTextTheme().apply(
      bodyColor: SystemColors.secondary,
      displayColor: SystemColors.secondary,
    ),
  );
}
