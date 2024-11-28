import 'package:ecommerce_app/src/features/product/presentation/product_detail_screen/product_features.dart';
import 'package:flutter/material.dart';

class ProductInfo extends StatelessWidget {
  const ProductInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Ürün Açıklaması
        const Text(
          "Açıklama",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          "Bu bölümde, ürünle ilgili teknik özellikleri ve detayları bulabilirsiniz. "
          "Özellikler, ürünün kalitesi ve kullanım amacına göre belirlenmiştir.",
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .copyWith(color: Colors.grey),
        ),
        const SizedBox(height: 16),

        // Ürün Özellikleri
        const ProductFeatures(),
      ],
    );
  }
}
