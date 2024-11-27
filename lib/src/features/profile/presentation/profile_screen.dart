import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.person,
          size: 100,
          color: Colors.grey.shade300,
        ),
        const SizedBox(height: 10),
        Center(
          child: Text(
            'User Profile',
            style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                  color: Colors.grey.shade400,
                ),
          ),
        ),
      ],
    );
  }
}
