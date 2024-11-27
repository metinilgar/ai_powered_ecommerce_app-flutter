import 'package:ecommerce_app/src/features/home/presentation/banner_slider.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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

    final List<Map<String, String>> products = [
      {
        "image": "https://fakeimg.pl/150x150/?text=Ürün1",
        "name": "Ürün 1",
        "price": "₺50.00",
      },
      {
        "image": "https://fakeimg.pl/150x150/?text=Ürün2",
        "name": "Ürün 2",
        "price": "₺75.00",
      },
      {
        "image": "https://fakeimg.pl/150x150/?text=Ürün3",
        "name": "Ürün 3",
        "price": "₺120.00",
      },
      {
        "image": "https://fakeimg.pl/150x150/?text=Ürün4",
        "name": "Ürün 4",
        "price": "₺200.00",
      },
    ];

    return SingleChildScrollView(
      child: Column(
        children: [
          // Banner Görseli
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            child: BannerSlider(),
          ),

          // Kategoriler Başlığı ve Butonu
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Text(
                  "Kategoriler",
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const Spacer(),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    textStyle: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  child: const Text("Tümünü Gör"),
                ),
              ],
            ),
          ),

          // Yatay kategori sekmesi
          Container(
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
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                    child: Text(categories[index]),
                  ),
                );
              },
            ),
          ),

          const SizedBox(height: 16),

          // Ürün Grid Düzeni
          GridView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            shrinkWrap: true, // Yalnızca içerik kadar alan kaplar
            physics:
                const NeverScrollableScrollPhysics(), // Kendi kaydırmasını engeller
            itemCount: products.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // İki sütun
              crossAxisSpacing: 16, // Sütunlar arası boşluk
              mainAxisSpacing: 16, // Satırlar arası boşluk
              childAspectRatio: 0.7, // Kartların boyut oranı
            ),
            itemBuilder: (context, index) {
              final product = products[index];
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(18.0),
                    child: Image.network(
                      product["image"]!,
                      height: 200,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 8), // Görsel ile metin arası boşluk
                  Text(product["name"]!,
                      style: Theme.of(context).textTheme.titleLarge),
                  Text(
                    product["price"]!,
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
