import 'package:ecommerce_app/src/common_widgets/see_all_header.dart';
import 'package:ecommerce_app/src/common_widgets/banner_slider.dart';
import 'package:ecommerce_app/src/features/categories/presentation/horizontal_categories_list.dart';
import 'package:ecommerce_app/src/features/navigation_menu/presentation/controllers/navigation_controller.dart';
import 'package:ecommerce_app/src/features/product/presentation/product_layouts/category_preview.dart';
import 'package:ecommerce_app/src/features/product/presentation/product_layouts/scrollable_product_list.dart';
import 'package:ecommerce_app/src/features/product/presentation/product_list_screen/product_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // Banner Görseli
          const BannerSlider(),

          // Kategoriler Başlığı ve Butonu
          SeeAllHeader(
            title: "Kategoriler",
            onPressed: () =>
                ref.read(navigationControllerProvider.notifier).changeScreen(3),
          ),

          // Yatay kategori sekmesi
          const HorizontalCategoriesList(),
          const SizedBox(height: 16),

          // Ürün Grid Düzeni
          const CategoryPreview(),

          // Popüler Ürünler
          SeeAllHeader(
            title: "Popüler Ürünler",
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ProductListScreen(
                    title: "Popüler Ürünler",
                    description:
                        "En çok tercih edilen ve sevilen ürünleri keşfedin!",
                  ),
                ),
              );
            },
          ),

          // Popüler Ürünler Listesi
          const ScrollableProductList(),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
