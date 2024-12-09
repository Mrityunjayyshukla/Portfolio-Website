import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  colorScheme: const ColorScheme.light(
    primary: Color(0xFFE5E5E5),
    secondary: Color(0xFF000000),
    tertiary: Color(0xFFB4B4B4),
    shadow: Color(0xFFB0B0B0),
  )
);

ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  colorScheme: const ColorScheme.dark(
    primary: Color(0xFF303030),  // Dark primary color
    secondary: Color(0xFFE5E5E5), // Lighter secondary color
    tertiary: Color(0xFFB4B4B4),  // A soft gray
    shadow: Color(0xFF1C1C1C),    // Dark shadow color for contrast
  ),
);
