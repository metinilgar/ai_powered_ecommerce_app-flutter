import 'package:ecommerce_app/src/features/product/models/product.dart';
import 'package:ecommerce_app/src/features/product/presentation/product_layouts/product_item.dart';
import 'package:flutter/material.dart';

class ProductGridView extends StatelessWidget {
  const ProductGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final List<Product> products = [
      Product(
          name: "Ürün 1",
          imageUrl: "https://fakeimg.pl/150x150/?text=Ürün1",
          price: "₺50.00"),
      Product(
          name: "Ürün 2",
          imageUrl: "https://fakeimg.pl/150x150/?text=Ürün2",
          price: "₺75.00"),
      Product(
          name: "Ürün 3",
          imageUrl: "https://fakeimg.pl/150x150/?text=Ürün3",
          price: "₺120.00"),
      Product(
          name: "Ürün 4",
          imageUrl: "https://fakeimg.pl/150x150/?text=Ürün4",
          price: "₺200.00"),
    ];

    return GridView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: products.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        childAspectRatio: 0.7,
      ),
      itemBuilder: (context, index) {
        final product = products[index];
        return ProductItem(product: product);
      },
    );
  }
}
