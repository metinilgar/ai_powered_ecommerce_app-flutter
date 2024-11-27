import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.home,
          size: 100,
          color: Colors.grey.shade300,
        ),
        const SizedBox(height: 10),
        Center(
          child: Text(
            'No items in your home',
            style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                  color: Colors.grey.shade400,
                ),
          ),
        ),
      ],
    );
  }
}
