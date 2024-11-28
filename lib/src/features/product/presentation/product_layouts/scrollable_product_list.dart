import 'package:ecommerce_app/src/features/product/models/product.dart';
import 'package:ecommerce_app/src/features/product/presentation/product_layouts/product_item.dart';
import 'package:flutter/material.dart';

class ScrollableProductList extends StatelessWidget {
  const ScrollableProductList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final popularProducts = [
      Product(
        name: "Ürün 1",
        imageUrl: "https://fakeimg.pl/150x150/?text=Ürün1",
        price: "₺50.00",
        category: "Category 1",
      ),
      Product(
        name: "Ürün 2",
        imageUrl: "https://fakeimg.pl/150x150/?text=Ürün2",
        price: "₺75.00",
        category: "Category 2",
      ),
      Product(
        name: "Ürün 3",
        imageUrl: "https://fakeimg.pl/150x150/?text=Ürün3",
        price: "₺120.00",
        category: "Category 3",
      ),
      Product(
        name: "Ürün 4",
        imageUrl: "https://fakeimg.pl/150x150/?text=Ürün4",
        price: "₺200.00",
        category: "Category 4",
      ),
      Product(
        name: "Ürün 5",
        imageUrl: "https://fakeimg.pl/150x150/?text=Ürün4",
        price: "₺300.00",
        category: "Category 5",
      ),
      Product(
        name: "Ürün 6",
        imageUrl: "https://fakeimg.pl/150x150/?text=Ürün4",
        price: "₺100.00",
        category: "Category 6",
      ),
    ];

    return SizedBox(
      height: 260, // Ürün görseli boyutuna göre ayarlanır
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
