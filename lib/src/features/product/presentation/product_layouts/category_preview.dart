import 'package:ecommerce_app/src/features/product/models/product.dart';
import 'package:ecommerce_app/src/features/product/presentation/product_layouts/product_item.dart';
import 'package:flutter/material.dart';

class CategoryPreview extends StatelessWidget {
  const CategoryPreview({super.key});

  @override
  Widget build(BuildContext context) {
    List<Product> products = [];

    return GridView.count(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      crossAxisCount: 2,
      crossAxisSpacing: 16,
      mainAxisSpacing: 16,
      childAspectRatio: 0.6,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: List.generate(products.length, (index) {
        return ProductItem(product: products[index]);
      }),
    );
  }
}
