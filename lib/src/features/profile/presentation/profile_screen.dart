import 'package:ecommerce_app/src/features/authentication/presentation/controllers/auth_state_controller.dart';
import 'package:ecommerce_app/src/utils/providers/shared_preferences_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final preferences = ref.read(sharedPreferencesProvider);
    final name = preferences.getString('name') ?? '';

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
            'Hoşgeldin, $name',
            style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                  color: Colors.grey.shade400,
                ),
          ),
        ),

        // Button for logout
        const SizedBox(height: 20),

        ElevatedButton(
          onPressed: () {
            ref.read(authStateControllerProvider.notifier).logoutUser();
          },
          child: const Text('Çıkış Yap'),
        ),
      ],
    );
  }
}
