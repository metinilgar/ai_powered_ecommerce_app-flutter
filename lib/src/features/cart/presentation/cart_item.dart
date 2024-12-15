import 'package:ecommerce_app/src/features/cart/models/cart_product_data.dart';
import 'package:ecommerce_app/src/features/cart/presentation/controllers/cart_controller.dart';
import 'package:ecommerce_app/src/utils/constants/network_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CartItem extends ConsumerWidget {
  const CartItem({
    super.key,
    required this.cartProduct,
  });

  final CartProductData cartProduct;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          // Product image
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.network(
              cartProduct.product.imageName != null
                  ? "${KNetworkConstants.kBaseUrl}/products/file/${cartProduct.product.imageName}"
                  : "https://fakeimg.pl/500x500/?text=Ürün",
              width: 180,
              height: 200,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 16),

          // Product details
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Product Name
                Text(
                  cartProduct.product.name,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),

                // Size and Brand
                Row(
                  children: [
                    // Size
                    Text(
                      cartProduct.product.size,
                      style: Theme.of(context).textTheme.labelLarge!.copyWith(
                            color: Colors.grey.shade500,
                          ),
                    ),

                    const Spacer(),

                    // Brand
                    Text(
                      cartProduct.product.brand,
                      style: Theme.of(context).textTheme.labelLarge!.copyWith(
                            color: Colors.grey.shade500,
                          ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),

                // Price
                Text(
                  '₺${cartProduct.product.price}',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const SizedBox(height: 20),

                // Quantity
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade300),
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Row(
                        children: [
                          IconButton(
                            icon: const Icon(Icons.remove),
                            onPressed: () => ref
                                .read(cartControllerProvider.notifier)
                                .removeQuantity(cartProduct),
                          ),
                          Text(
                            cartProduct.quantity.toString(),
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                          IconButton(
                            icon: const Icon(Icons.add),
                            onPressed: () => ref
                                .read(cartControllerProvider.notifier)
                                .addQuantity(cartProduct),
                          ),
                        ],
                      ),
                    ),

                    const Spacer(),

                    // Remove button
                    IconButton(
                      icon: const Icon(Icons.close),
                      onPressed: () => ref
                          .read(cartControllerProvider.notifier)
                          .removeFromCart(cartProduct.product),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
