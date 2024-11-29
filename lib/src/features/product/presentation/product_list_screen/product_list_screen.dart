import 'package:ecommerce_app/src/features/product/presentation/product_layouts/product_grid_view.dart';
import 'package:flutter/material.dart';

class ProductListScreen extends StatelessWidget {
  const ProductListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Transform(
          transform: Matrix4.translationValues(8.0, 0.0, 0.0),
          child: IconButton(
            icon: const Icon(Icons.arrow_back_ios_new, size: 24),
            onPressed: () => Navigator.pop(context),
          ),
        ),
        actions: [
          Transform(
            transform: Matrix4.translationValues(-8.0, 0.0, 0.0),
            child: Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.search, size: 24),
                  onPressed: () {},
                ),
              ],
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 80,
                right: 80,
                top: 10,
                bottom: 20,
              ),
              child: Text(
                "Popüler Ürünler",
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .displayMedium!
                    .copyWith(fontWeight: FontWeight.w500),
              ),
            ),
            const ProductGridView(),
          ],
        ),
      ),
    );
  }
}
