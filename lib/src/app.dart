import 'package:ecommerce_app/src/features/authentication/presentation/controllers/auth_state_controller.dart';
import 'package:ecommerce_app/src/features/authentication/presentation/screens/sign_in_screen.dart';
import 'package:ecommerce_app/src/features/authentication/presentation/screens/splash_screen.dart';
import 'package:ecommerce_app/src/features/navigation_menu/presentation/navigation_menu.dart';
import 'package:ecommerce_app/src/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      // Light theme
      theme: KAppTheme.kLightTheme,

      // Dark theme
      darkTheme: KAppTheme.kDarkTheme,

      home: ref.watch(authStateControllerProvider).when(
            data: (isLoggedIn) {
              if (isLoggedIn) {
                return const NavigationMenu();
              } else {
                return const SignInScreen();
              }
            },
            loading: () => const SplashScreen(),
            error: (error, _) => const SignInScreen(),
          ),
    );
  }
}
