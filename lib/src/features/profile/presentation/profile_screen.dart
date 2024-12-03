import 'package:ecommerce_app/src/utils/providers/shared_preferences_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
          child: Consumer(
            builder: (context, ref, child) {
              final preferences = ref.read(sharedPreferencesProvider);
              final name = preferences.getString('name') ?? '';

              return Text(
                'Hoşgeldin, $name',
                style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                      color: Colors.grey.shade400,
                    ),
              );
            },
          ),
        ),
      ],
    );
  }
}
