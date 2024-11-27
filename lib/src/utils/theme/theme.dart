import 'package:ecommerce_app/src/utils/theme/custom_theme/app_bar_theme.dart';
import 'package:ecommerce_app/src/utils/theme/custom_theme/navigation_bar_theme.dart';
import 'package:flutter/material.dart';

class KAppTheme {
  KAppTheme._();

  // Light theme
  static ThemeData kLightTheme = ThemeData.light(useMaterial3: true).copyWith(
    // Scaffold background color
    scaffoldBackgroundColor: const Color(0xFFFFFFFF),

    // Color scheme
    colorScheme: ColorScheme.fromSeed(
      seedColor: const Color(0xFFFFFFFF),
      brightness: Brightness.light,
    ),

    // AppBar theme
    appBarTheme: KAppBarTheme.kLightAppBarTheme,

    // Navigation bar theme
    navigationBarTheme: KNavigationBarTheme.kLightNavigationBarTheme,
  );

  // Dark theme
  static ThemeData kDarkTheme = ThemeData.dark(useMaterial3: true).copyWith(
    // Scaffold background color
    scaffoldBackgroundColor: const Color(0xFF111111),

    // Color scheme
    colorScheme: ColorScheme.fromSeed(
      seedColor: const Color(0xFF111111),
      brightness: Brightness.dark,
    ),

    // AppBar theme
    appBarTheme: KAppBarTheme.kDarkAppBarTheme,

    // Navigation bar theme
    navigationBarTheme: KNavigationBarTheme.kDarkNavigationBarTheme,
  );
}
