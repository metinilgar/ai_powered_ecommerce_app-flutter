import 'package:ecommerce_app/src/features/product/models/product.dart';
import 'package:ecommerce_app/src/features/product/presentation/product_layouts/product_item.dart';
import 'package:flutter/material.dart';

class ScrollableProductList extends StatelessWidget {
  const ScrollableProductList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<Product> popularProducts = [
      Product(
        id: 1,
        name: 'Basic Beyaz Tişört',
        size: 'M',
        material: 'Pamuk',
        brand: 'Zara',
        price: 199,
        imageName: 'https://fakeimg.pl/500x500/?text=Ürün',
      ),
      Product(
        id: 2,
        name: 'Slim Fit Kot Pantolon',
        size: '32',
        material: 'Denim',
        brand: 'Levi\'s',
        price: 599,
        imageName: 'https://fakeimg.pl/500x500/?text=Ürün',
      ),
      Product(
        id: 3,
        name: 'Kapüşonlu Şişme Ceket',
        size: 'M',
        material: 'Polyester',
        brand: 'The North Face',
        price: 1499,
        imageName: 'https://fakeimg.pl/500x500/?text=Ürün',
      ),
      Product(
        id: 4,
        name: 'Dizüstü Siyah Elbise',
        size: '38',
        material: 'Polyester',
        brand: 'Koton',
        price: 249,
        imageName: 'https://fakeimg.pl/500x500/?text=Ürün',
      ),
      Product(
        id: 5,
        name: 'Spor Ayakkabı',
        size: '42',
        material: 'File Kumaş',
        brand: 'Nike',
        price: 899,
        imageName: 'https://fakeimg.pl/500x500/?text=Ürün',
      ),
      Product(
        id: 6,
        name: 'Balıkçı Yaka Kazak',
        size: 'M',
        material: 'Yün',
        brand: 'Massimo Dutti',
        price: 549,
        imageName: 'https://fakeimg.pl/500x500/?text=Ürün',
      ),
      Product(
        id: 7,
        name: 'Spor Şort',
        size: 'L',
        material: 'Polyester',
        brand: 'Nike',
        price: 299,
        imageName: 'https://fakeimg.pl/500x500/?text=Ürün',
      ),
      Product(
        id: 8,
        name: 'Pileli Mini Etek',
        size: '36',
        material: 'Polyester',
        brand: 'Zara',
        price: 349,
        imageName: 'https://fakeimg.pl/500x500/?text=Ürün',
      ),
    ];

    return SizedBox(
      height: 320, // Ürün görseli boyutuna göre ayarlanır
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        itemCount: popularProducts.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 16), // Aralık eklemek için
            child: SizedBox(
              width: 200, // Ürün genişliği
              child: ProductItem(product: popularProducts[index]),
            ),
          );
        },
      ),
    );
  }
}
