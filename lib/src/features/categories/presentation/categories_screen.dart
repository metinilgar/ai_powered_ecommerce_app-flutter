import 'package:ecommerce_app/src/features/categories/presentation/category_card.dart';
import 'package:ecommerce_app/src/features/categories/presentation/controllers/category_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CategoriesScreen extends ConsumerWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categories = ref.watch(categoryControllerProvider);

    return categories.when(
      data: (categories) {
        return SafeArea(
          child: GridView.builder(
            padding: const EdgeInsets.all(20.0),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // İki sütun
              crossAxisSpacing: 8.0, // Sütunlar arası boşluk
              mainAxisSpacing: 8.0, // Satırlar arası boşluk
              childAspectRatio: 1.1, // Kartların oranı (genişlik/yükseklik)
            ),
            itemCount: categories.length,
            itemBuilder: (context, index) {
              return CategoryCard(category: categories[index]);
            },
          ),
        );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stackTrace) => Center(
        child: Text('Error: $error'),
      ),
    );
  }
}
