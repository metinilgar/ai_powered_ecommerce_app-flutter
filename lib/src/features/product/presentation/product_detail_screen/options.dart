import 'package:ecommerce_app/src/features/product/presentation/product_detail_screen/option.dart';
import 'package:flutter/material.dart';

class Options extends StatelessWidget {
  const Options({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Renk Seçenekleri
        Option(
          title: "Renk Seçenekleri",
          options: [
            CircleAvatar(
              backgroundColor: Colors.black,
              child: Icon(Icons.check, color: Colors.white),
            ),
            CircleAvatar(backgroundColor: Colors.grey),
            CircleAvatar(backgroundColor: Colors.blue),
            CircleAvatar(backgroundColor: Colors.red),
          ],
        ),
        SizedBox(height: 16),

        // Beden Seçenekleri
        Option(
          title: "Beden",
          options: [
            _SizeButton(size: "US 6"),
            _SizeButton(size: "US 7"),
            _SizeButton(size: "US 8"),
            _SizeButton(size: "US 10"),
          ],
        ),
      ],
    );
  }
}

class _SizeButton extends StatelessWidget {
  final String size;

  const _SizeButton({required this.size});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
        side: const BorderSide(color: Colors.grey),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      ),
      child: Text(size),
    );
  }
}
