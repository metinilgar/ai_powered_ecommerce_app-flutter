import 'package:ecommerce_app/src/features/product/presentation/controllers/popular_product_controller.dart';
import 'package:ecommerce_app/src/features/product/presentation/controllers/product_controller.dart';
import 'package:ecommerce_app/src/features/product/presentation/product_layouts/product_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProductListScreen extends ConsumerWidget {
  const ProductListScreen({
    super.key,
    required this.title,
    required this.description,
    this.id,
  });

  final int? id;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final products = id != null
        ? ref.watch(productControllerProvider(id!))
        : ref.watch(popularProductControllerProvider);

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
                top: 5,
                bottom: 5,
              ),
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .displayMedium!
                    .copyWith(fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
                top: 5,
                bottom: 30,
              ),
              child: Text(
                description,
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(fontSize: 18),
              ),
            ),
            ProductGridView(products: products),
          ],
        ),
      ),
    );
  }
}
