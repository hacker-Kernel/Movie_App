import 'package:flutter/material.dart';

class ThemeConfig {
  static final darkThemeConfig = ThemeData(
    colorScheme: const ColorScheme.dark(
      primary: Colors.black,
      secondary: Colors.white,
      brightness: Brightness.dark,
    ),
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        color: Colors.white,
      ),
      titleMedium: TextStyle(
        color: Colors.white,
      ),
      titleSmall: TextStyle(
        color: Colors.white,
      ),
      bodyLarge: TextStyle(
        color: Colors.white,
      ),
      bodyMedium: TextStyle(
        color: Colors.white,
      ),
      bodySmall: TextStyle(
        color: Colors.white,
      ),
      labelLarge: TextStyle(
        color: Colors.white,
      ),
      labelMedium: TextStyle(
        color: Colors.white,
      ),
      labelSmall: TextStyle(
        color: Colors.white,
      ),
      headlineLarge: TextStyle(
        color: Colors.white,
      ),
      headlineMedium: TextStyle(
        color: Colors.white,
      ),
      headlineSmall: TextStyle(
        color: Colors.white,
      ),
    ),
  );
  static final lightThemeConfig = ThemeData(
    colorScheme: const ColorScheme.light(
      primary: Colors.white,
      secondary: Colors.black,
      brightness: Brightness.light,
    ),
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        color: Colors.black,
      ),
      titleMedium: TextStyle(
        color: Colors.black,
      ),
      titleSmall: TextStyle(
        color: Colors.black,
      ),
      bodyLarge: TextStyle(
        color: Colors.black,
      ),
      bodyMedium: TextStyle(
        color: Colors.black,
      ),
      bodySmall: TextStyle(
        color: Colors.black,
      ),
      labelLarge: TextStyle(
        color: Colors.black,
      ),
      labelMedium: TextStyle(
        color: Colors.black,
      ),
      labelSmall: TextStyle(
        color: Colors.black,
      ),
      headlineLarge: TextStyle(
        color: Colors.black,
      ),
      headlineMedium: TextStyle(
        color: Colors.black,
      ),
      headlineSmall: TextStyle(
        color: Colors.black,
      ),
    ),
  );
}
