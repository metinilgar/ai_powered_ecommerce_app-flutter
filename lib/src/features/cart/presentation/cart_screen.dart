import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.shopping_cart,
          size: 100,
          color: Colors.grey.shade300,
        ),
        const SizedBox(height: 10),
        Center(
          child: Text(
            'No items in your cart',
            style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                  color: Colors.grey.shade400,
                ),
          ),
        ),
      ],
    );
  }
}
