import 'package:ecommerce_app/src/features/cart/presentation/cart_item.dart';
import 'package:ecommerce_app/src/features/cart/presentation/controllers/cart_controller.dart';
import 'package:ecommerce_app/src/features/cart/presentation/controllers/chekout_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CartScreen extends ConsumerWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cartItems = ref.watch(cartControllerProvider);

    return cartItems.isEmpty
        ? _emptyCart(context)
        : SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemCount: cartItems.length,
                      itemBuilder: (context, index) {
                        return CartItem(cartProduct: cartItems[index]);
                      },
                    ),
                  ),
                  const SizedBox(height: 20),
                  _buildPriceDetails(context, ref),
                  const SizedBox(height: 20),
                  _buildCheckoutButton(context, ref),
                ],
              ),
            ),
          );
  }

  Column _emptyCart(BuildContext context) {
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

  Widget _buildPriceDetails(BuildContext context, WidgetRef ref) {
    final subtotal = ref.watch(cartControllerProvider.notifier).totalPrice;
    const shippingCost = 20.0;
    final total = subtotal + shippingCost;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _priceDetailRow('Subtotal', subtotal, context),
        _priceDetailRow('Shipping', shippingCost, context),
        const Divider(),
        _priceDetailRow('Total', total, context, isTotal: true),
      ],
    );
  }

  Widget _priceDetailRow(String label, double amount, BuildContext context,
      {bool isTotal = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: isTotal ? Colors.black : Colors.grey.shade600,
                  fontWeight: isTotal ? FontWeight.bold : FontWeight.normal,
                ),
          ),
          Text(
            '₺${amount.toStringAsFixed(2)}',
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: isTotal ? Colors.black : Colors.grey.shade600,
                  fontWeight: isTotal ? FontWeight.bold : FontWeight.normal,
                ),
          ),
        ],
      ),
    );
  }

  Widget _buildCheckoutButton(BuildContext context, WidgetRef ref) {
    return ElevatedButton(
      onPressed: () async {
        final status =
            await ref.read(chekoutControllerProvider.notifier).chekout();

        if (!context.mounted) return;

        if (status) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Order placed successfully!'),
              backgroundColor: Colors.green,
            ),
          );
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Failed to place order!'),
              backgroundColor: Colors.red,
            ),
          );
        }
      },
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 16),
      ),
      child: const Text('Checkout'),
    );
  }
}
