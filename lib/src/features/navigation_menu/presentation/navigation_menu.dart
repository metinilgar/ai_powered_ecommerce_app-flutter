import 'package:ecommerce_app/src/features/cart/presentation/cart_screen.dart';
import 'package:ecommerce_app/src/features/categories/presentation/categories_screen.dart';
import 'package:ecommerce_app/src/features/navigation_menu/presentation/home_screen.dart';
import 'package:ecommerce_app/src/features/navigation_menu/presentation/controllers/navigation_controller.dart';
import 'package:ecommerce_app/src/features/profile/presentation/profile_screen.dart';
import 'package:ecommerce_app/src/features/suggestion/presentation/pick_image_button.dart';
import 'package:ecommerce_app/src/utils/constants/image_sitrings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NavigationMenu extends ConsumerWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    int selectedIndex = ref.watch(navigationControllerProvider);

    const List<Widget> screens = [
      HomeScreen(),
      CartScreen(),
      ProfileScreen(),
      CategoriesScreen(),
    ];

    const List<NavigationDestination> destinations = [
      NavigationDestination(
        icon: Icon(Icons.home_outlined),
        selectedIcon: Icon(Icons.home),
        label: 'Home',
      ),
      NavigationDestination(
        icon: Icon(Icons.shopping_cart_outlined),
        selectedIcon: Icon(Icons.shopping_cart),
        label: 'Chat',
      ),
      NavigationDestination(
        icon: Icon(Icons.person_outline),
        selectedIcon: Icon(Icons.person),
        label: 'Profile',
      ),
      NavigationDestination(
        icon: Icon(Icons.menu),
        selectedIcon: Icon(
          Icons.menu,
          shadows: <Shadow>[Shadow(blurRadius: 2.0)],
        ),
        label: 'Explore',
      ),
    ];

    return Scaffold(
      appBar: selectedIndex == 0
          ? AppBar(
              leading: Transform(
                transform: Matrix4.translationValues(24.0, 0.0, 0.0),
                child: Image.asset(
                  KImages.appLogo,
                  color: isDarkMode ? Colors.white : Colors.black,
                ),
              ),
              actions: [
                Transform(
                  transform: Matrix4.translationValues(-16.0, 0.0, 0.0),
                  child: const Row(
                    children: [PickImageButton()],
                  ),
                )
              ],
            )
          : null,

      // Navigation Bar
      bottomNavigationBar: NavigationBar(
        selectedIndex: selectedIndex,
        onDestinationSelected: (index) {
          ref.read(navigationControllerProvider.notifier).changeScreen(index);
        },
        destinations: destinations,
      ),
      body: IndexedStack(
        index: selectedIndex,
        children: screens,
      ),
    );
  }
}
