import 'package:ecommerce_app/src/features/product/models/product.dart';
import 'package:ecommerce_app/src/features/product/presentation/product_layouts/product_item.dart';
import 'package:flutter/material.dart';

class CategoryPreview extends StatelessWidget {
  const CategoryPreview({super.key});

  @override
  Widget build(BuildContext context) {
    List<Product> products = [
      Product(
        id: 1,
        name: 'Basic Beyaz Tişört',
        size: 'M',
        material: 'Pamuk',
        brand: 'Zara',
        price: 199,
      ),
      Product(
        id: 2,
        name: 'Slim Fit Kot Pantolon',
        size: '32',
        material: 'Denim',
        brand: 'Levi\'s',
        price: 599,
      ),
      Product(
        id: 3,
        name: 'Kapüşonlu Şişme Ceket',
        size: 'M',
        material: 'Polyester',
        brand: 'The North Face',
        price: 1499,
      ),
      Product(
        id: 4,
        name: 'Dizüstü Siyah Elbise',
        size: '38',
        material: 'Polyester',
        brand: 'Koton',
        price: 249,
      ),
      Product(
        id: 5,
        name: 'Spor Ayakkabı',
        size: '42',
        material: 'File Kumaş',
        brand: 'Nike',
        price: 899,
      ),
      Product(
        id: 6,
        name: 'Balıkçı Yaka Kazak',
        size: 'M',
        material: 'Yün',
        brand: 'Massimo Dutti',
        price: 549,
      ),
      Product(
        id: 7,
        name: 'Spor Şort',
        size: 'L',
        material: 'Polyester',
        brand: 'Nike',
        price: 299,
      ),
      Product(
        id: 8,
        name: 'Pileli Mini Etek',
        size: '36',
        material: 'Polyester',
        brand: 'Zara',
        price: 349,
      ),
      Product(
        id: 9,
        name: 'Örgü Atkı',
        size: 'Standart',
        material: 'Yün',
        brand: 'Columbia',
        price: 249,
      ),
      Product(
        id: 10,
        name: 'Kamuflaj Desenli Şapka',
        size: 'M',
        material: 'Polyester',
        brand: 'Under Armour',
        price: 249,
      ),
    ];

    return GridView.count(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      crossAxisCount: 2,
      crossAxisSpacing: 16,
      mainAxisSpacing: 16,
      childAspectRatio: 0.6,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: List.generate(4, (index) {
        return ProductItem(product: products[index]);
      }),
    );
  }
}
