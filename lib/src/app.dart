import 'package:ecommerce_app/src/features/navigation_menu/presentation/navigation_menu.dart';
import 'package:ecommerce_app/src/utils/theme/theme.dart';
import 'package:flutter/material.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      // Light theme
      theme: KAppTheme.kLightTheme,

      // Dark theme
      darkTheme: KAppTheme.kDarkTheme,

      home: const NavigationMenu(),
    );
  }
}
