import 'package:ecommerce_app/src/features/product/models/product.dart';
import 'package:ecommerce_app/src/features/product/presentation/product_layouts/product_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProductGridView extends StatelessWidget {
  const ProductGridView({
    super.key,
    required this.products,
  });

  final AsyncValue<List<Product>> products;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final aspectRatio = screenWidth / (screenHeight / 1.4);

    return products.when(
      data: (products) {
        return _buildGridView(products, aspectRatio);
      },
      error: (error, stackTrace) => Text(error.toString()),
      loading: () => const CircularProgressIndicator(),
    );
  }

  GridView _buildGridView(List<Product> products, double aspectRatio) {
    return GridView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: products.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        childAspectRatio: aspectRatio,
      ),
      itemBuilder: (context, index) {
        final product = products[index];
        return ProductItem(product: product);
      },
    );
  }
}
