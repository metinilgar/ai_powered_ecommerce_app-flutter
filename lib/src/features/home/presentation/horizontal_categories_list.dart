import 'package:flutter/material.dart';

class HorizontalCategoriesList extends StatelessWidget {
  const HorizontalCategoriesList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final List<String> categories = [
      "Elektronik",
      "Giyim",
      "Ev & Yaşam",
      "Kitap",
      "Oyuncak",
      "Spor",
      "Kozmetik"
    ];

    return Container(
      height: 40,
      margin: const EdgeInsets.only(top: 8.0),
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
              ),
              child: Text(categories[index]),
            ),
          );
        },
      ),
    );
  }
}
