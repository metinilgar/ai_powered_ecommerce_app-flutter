import 'package:flutter/material.dart';

class ProductHeader extends StatelessWidget {
  const ProductHeader({super.key, required this.name, required this.brand});

  final String name;
  final String brand;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Ürün Karegorisi
        Text(
          brand,
          style: Theme.of(context)
              .textTheme
              .labelLarge!
              .copyWith(color: Colors.grey),
        ),
        const SizedBox(height: 8),

        // Ürün Başlığı
        SizedBox(
          width: 200,
          child: Text(
            name,
            style: Theme.of(context)
                .textTheme
                .headlineMedium!
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
