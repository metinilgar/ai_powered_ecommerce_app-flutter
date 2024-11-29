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
        name: "Nike Air Zoom Pegasus",
        imageUrl: "https://fakeimg.pl/500x500/?text=Ürün1",
        price: "₺50.00",
        category: "Category 1",
      ),
      Product(
        name: "Nike Air Zoom Pegasus",
        imageUrl: "https://fakeimg.pl/500x500/?text=Ürün2",
        price: "₺75.00",
        category: "Category 2",
      ),
      Product(
        name: "Nike Air Zoom Pegasus",
        imageUrl: "https://fakeimg.pl/500x500/?text=Ürün3",
        price: "₺120.00",
        category: "Category 3",
      ),
      Product(
        name: "Nike Air Zoom Pegasus",
        imageUrl: "https://fakeimg.pl/500x500/?text=Ürün4",
        price: "₺200.00",
        category: "Category 4",
      ),
      Product(
        name: "Nike Air Zoom Pegasus",
        imageUrl: "https://fakeimg.pl/500x500/?text=Ürün1",
        price: "₺50.00",
        category: "Category 1",
      ),
      Product(
        name: "Nike Air Zoom Pegasus",
        imageUrl: "https://fakeimg.pl/500x500/?text=Ürün2",
        price: "₺75.00",
        category: "Category 2",
      ),
      Product(
        name: "Nike Air Zoom Pegasus",
        imageUrl: "https://fakeimg.pl/500x500/?text=Ürün3",
        price: "₺120.00",
        category: "Category 3",
      ),
      Product(
        name: "Nike Air Zoom Pegasus",
        imageUrl: "https://fakeimg.pl/500x500/?text=Ürün4",
        price: "₺200.00",
        category: "Category 4",
      ),
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
        childAspectRatio: 0.6,
      ),
      itemBuilder: (context, index) {
        final product = products[index];
        return ProductItem(product: product);
      },
    );
  }
}
