import 'package:ecommerce_app/src/features/categories/models/category.dart';
import 'package:ecommerce_app/src/features/product/presentation/product_list_screen/product_list_screen.dart';
import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.category});

  final Category category;

  @override
  Widget build(BuildContext context) {
    final categoriesImages = [
      "shirt",
      "pants",
      "jacket",
      "dress",
      "shoe",
      "hat",
      "sweater",
      "shorts",
      "skirt",
      "scarf"
    ];

    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductListScreen(
              id: category.id,
              title: category.name,
              description: category.description,
            ),
          ),
        );
      },
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        child: Stack(
          children: [
            // Yarım daire arka plan with CustomPaint
            Positioned(
              bottom: 10,
              left: -20,
              right: -20,
              child: CustomPaint(
                size: const Size(
                    double.infinity, 30), // Height of the half-circle
                painter: HalfCirclePainter(),
              ),
            ),

            // Kategori adı
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                category.name,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),

            // Resim
            Positioned(
              bottom: 10,
              left: 0,
              right: 0,
              child: Center(
                child: Image.asset(
                  "assets/category_images/${categoriesImages[category.id - 1]}.png",
                  fit: BoxFit.cover,
                  height: 120,
                  width: 120,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HalfCirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = Colors.blue.shade100
      ..style = PaintingStyle.fill;

    // Adjust the rect to be at the top of the card
    final Rect rect = Rect.fromLTWH(0, 0, size.width, 80); // Height is 60
    final double startAngle = 3.14; // π (for the arc to start from the top)
    final double sweepAngle = 3.14; // π (half-circle)
    final bool useCenter = false;

    // Draw the half circle at the top
    canvas.drawArc(rect, startAngle, sweepAngle, useCenter, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false; // No need to repaint if nothing changes
  }
}
