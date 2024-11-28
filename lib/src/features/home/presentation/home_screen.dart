import 'package:ecommerce_app/src/common_widgets/see_all_header.dart';
import 'package:ecommerce_app/src/features/home/presentation/banner_slider.dart';
import 'package:ecommerce_app/src/features/home/presentation/horizontal_categories_list.dart';
import 'package:ecommerce_app/src/features/product/presentation/product_layouts/product_grid_view.dart';
import 'package:ecommerce_app/src/features/product/presentation/product_layouts/scrollable_product_list.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          // Banner Görseli
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            child: BannerSlider(),
          ),

          // Kategoriler Başlığı ve Butonu
          SeeAllHeader(title: "Kategoriler"),

          // Yatay kategori sekmesi
          HorizontalCategoriesList(),
          SizedBox(height: 16),

          // Ürün Grid Düzeni
          ProductGridView(),

          // Popüler Ürünler
          SeeAllHeader(title: "Popüler Ürünler"),

          // Popüler Ürünler Listesi
          ScrollableProductList(),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}
