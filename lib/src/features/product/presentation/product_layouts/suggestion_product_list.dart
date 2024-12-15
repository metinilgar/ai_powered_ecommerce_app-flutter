import 'package:ecommerce_app/src/features/product/models/product.dart';
import 'package:ecommerce_app/src/features/product/presentation/controllers/suggestion_product_controller.dart';
import 'package:ecommerce_app/src/features/product/presentation/product_layouts/product_item.dart';
import 'package:ecommerce_app/src/features/suggestion/presentation/pick_image_button.dart';
import 'package:ecommerce_app/src/utils/providers/shared_preferences_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SuggestionProductList extends ConsumerWidget {
  const SuggestionProductList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final preferences = ref.read(sharedPreferencesProvider);
    final name = preferences.getString('name') ?? '';
    final id = int.parse((preferences.getString('userId') ?? '0'));
    final products = ref.watch(suggestionProductControllerProvider(id));

    return products.when(
      data: (products) => _productsList(products, context),
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stackTrace) => _info(name, context),
    );
  }

  Widget _info(String name, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          const Icon(
            Icons.photo_camera_front_outlined,
            size: 128,
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Merhaba $name,",
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const SizedBox(height: 8),
                Text(
                  "Önerilen ürünlerinizi görmek için lütfen fotoğraf yükleyin.",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const SizedBox(height: 16),
                const PickImageButton(iconOnly: false),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _productsList(List<Product> products, BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            "Önerilen Ürünler",
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
        const SizedBox(height: 16),
        GridView.count(
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
        ),
      ],
    );
  }
}
