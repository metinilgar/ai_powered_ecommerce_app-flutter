import 'package:ecommerce_app/src/features/authentication/presentation/controllers/auth_state_controller.dart';
import 'package:ecommerce_app/src/features/authentication/presentation/controllers/validation_controller.dart';
import 'package:ecommerce_app/src/features/authentication/presentation/screens/sign_in_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignUpScreen extends ConsumerWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = GlobalKey<FormState>();
    final validation = ref.read(validationControllerProvider.notifier);

    final isLoading = ref.watch(authStateControllerProvider).isLoading;

    String? email;
    String? password;
    String? name;

    ref.listen<AsyncValue>(
      authStateControllerProvider,
      (previous, state) {
        if (state.isRefreshing == false && state.hasError) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.error.toString()),
            ),
          );
        }
      },
    );

    return Scaffold(
      body: Center(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                // Text for sign up
                Text(
                  "SIGN UP",
                  style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const SizedBox(height: 40),

                // TextFormField for email
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Name',
                    prefixIcon: Icon(Icons.person_outline),
                  ),
                  validator: (value) => validation.nameValidation(value),
                  onSaved: (value) => name = value,
                ),
                const SizedBox(height: 20),

                // TextFormField for password
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Email',
                    prefixIcon: Icon(Icons.email_outlined),
                  ),
                  validator: (value) => validation.emailValidation(value),
                  onSaved: (value) => email = value,
                ),
                const SizedBox(height: 20),

                // TextFormField for confirm password
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    hintText: 'Password',
                    prefixIcon: Icon(Icons.lock_outline),
                  ),
                  validator: (value) => validation.passwordValidation(value),
                  onSaved: (value) => password = value,
                ),
                const SizedBox(height: 10),

                // TextButton for sign in
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account? ",
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    TextButton(
                      onPressed: () => Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => const SignInScreen(),
                        ),
                      ),
                      style: TextButton.styleFrom(
                        minimumSize: const Size(0, 0),
                        padding: const EdgeInsets.all(0),
                      ),
                      child: Text(
                        'Sign in here.',
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 40),

                // ElevatedButton for sign up
                ElevatedButton(
                  onPressed: isLoading
                      ? null
                      : () async {
                          if (formKey.currentState!.validate()) {
                            formKey.currentState!.save();
                            final status = await ref
                                .read(authStateControllerProvider.notifier)
                                .createAccount(
                                  email: email!,
                                  password: password!,
                                  name: name!,
                                );

                            if (status && context.mounted) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text("Account created successfully"),
                                ),
                              );
                            }
                          }
                        },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(180, 50),
                  ),
                  child: isLoading
                      ? const CircularProgressIndicator()
                      : const Text(
                          'SIGN UP',
                          style: TextStyle(fontSize: 20),
                        ),
                ),
              ],
            ),
          ),
        ),
      )),
    );
  }
}
