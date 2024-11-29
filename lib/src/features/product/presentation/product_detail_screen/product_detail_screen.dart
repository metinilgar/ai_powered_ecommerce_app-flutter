import 'package:ecommerce_app/src/features/product/models/product.dart';
import 'package:ecommerce_app/src/features/product/presentation/product_detail_screen/options.dart';
import 'package:ecommerce_app/src/features/product/presentation/product_detail_screen/product_header.dart';
import 'package:ecommerce_app/src/features/product/presentation/product_detail_screen/product_info.dart';
import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // -- AppBar
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
                  icon: const Icon(Icons.favorite_border, size: 24),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.more_vert, size: 24),
                  onPressed: () {},
                ),
              ],
            ),
          )
        ],
      ),

      // -- Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Product Header
              ProductHeader(name: product.name, category: product.category),
              const SizedBox(height: 16),

              // Ürün Görseli
              Center(
                child: Image.network(
                  width: double.infinity,
                  product.imageUrl,
                ),
              ),
              const SizedBox(height: 16),

              const Options(),
              const SizedBox(height: 16),

              // Ürün Bilgisi
              const ProductInfo(),
              const SizedBox(height: 16),

              // Fiyat ve Sepet Düğmesi
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    product.price,
                    style: Theme.of(context).textTheme.displaySmall!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Theme.of(context).colorScheme.primary,
                      elevation: 0,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(18),
                        ),
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 36, vertical: 16),
                    ),
                    child: Text("Sepete Ekle",
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              color: Theme.of(context).colorScheme.onPrimary,
                            )),
                  ),
                ],
              ),
              const SizedBox(height: 8),
            ],
          ),
        ),
      ),
    );
  }
}
