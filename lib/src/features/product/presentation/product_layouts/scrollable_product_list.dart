import 'package:ecommerce_app/src/features/product/models/product.dart';
import 'package:ecommerce_app/src/features/product/presentation/controllers/popular_product_controller.dart';
import 'package:ecommerce_app/src/features/product/presentation/product_layouts/product_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ScrollableProductList extends ConsumerWidget {
  const ScrollableProductList({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final products = ref.watch(popularProductControllerProvider);

    return products.when(
      data: (products) {
        return _scrollableProduct(products);
      },
      error: (error, stackTrace) => Text(error.toString()),
      loading: () => const CircularProgressIndicator(),
    );
  }

  SizedBox _scrollableProduct(List<Product> popularProducts) {
    return SizedBox(
      height: 320, // Ürün görseli boyutuna göre ayarlanır
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        itemCount: popularProducts.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 16), // Aralık eklemek için
            child: SizedBox(
              width: 200, // Ürün genişliği
              child: ProductItem(product: popularProducts[index]),
            ),
          );
        },
      ),
    );
  }
}
