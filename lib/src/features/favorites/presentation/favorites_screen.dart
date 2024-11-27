import 'package:flutter/material.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.favorite,
          size: 100,
          color: Colors.grey.shade300,
        ),
        const SizedBox(height: 10),
        Center(
          child: Text(
            'No favorites yet',
            style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                  color: Colors.grey.shade400,
                ),
          ),
        ),
      ],
    );
  }
}
