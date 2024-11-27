import 'package:ecommerce_app/src/features/cart/presentation/cart_screen.dart';
import 'package:ecommerce_app/src/features/favorites/presentation/favorites_screen.dart';
import 'package:ecommerce_app/src/features/home/presentation/home_screen.dart';
import 'package:ecommerce_app/src/features/profile/presentation/profile_screen.dart';
import 'package:flutter/material.dart';

class NavigationMenu extends StatefulWidget {
  const NavigationMenu({super.key});

  @override
  State<NavigationMenu> createState() => _NavigationMenuState();
}

class _NavigationMenuState extends State<NavigationMenu> {
  int selectedIndex = 0;

  final List<Widget> _screens = const [
    HomeScreen(),
    FavoritesScreen(),
    CartScreen(),
    ProfileScreen(),
  ];

  final List<NavigationDestination> _destinations = const [
    NavigationDestination(
      icon: Icon(Icons.home_outlined),
      selectedIcon: Icon(Icons.home),
      label: 'Home',
    ),
    NavigationDestination(
      icon: Icon(Icons.favorite_border),
      selectedIcon: Icon(
        Icons.favorite,
        shadows: <Shadow>[Shadow(blurRadius: 2.0)],
      ),
      label: 'Explore',
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
  ];

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: selectedIndex == 0
          ? AppBar(
              leading: Transform(
                transform: Matrix4.translationValues(24.0, 0.0, 0.0),
                child: Image.asset(
                  'assets/images/logo.png',
                  color: isDarkMode ? Colors.white : Colors.black,
                ),
              ),
              actions: [
                Transform(
                  transform: Matrix4.translationValues(-8.0, 0.0, 0.0),
                  child: Row(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.search),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: const Icon(Icons.notifications_active_outlined),
                        onPressed: () {},
                      ),
                    ],
                  ),
                )
              ],
            )
          : null,

      // Navigation Bar
      bottomNavigationBar: NavigationBar(
        selectedIndex: selectedIndex,
        onDestinationSelected: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        destinations: _destinations,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: IndexedStack(
          index: selectedIndex,
          children: _screens,
        ),
      ),
    );
  }
}
