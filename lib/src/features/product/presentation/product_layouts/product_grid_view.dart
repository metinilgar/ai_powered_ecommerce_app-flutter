import 'package:ecommerce_app/src/features/product/models/product.dart';
import 'package:ecommerce_app/src/features/product/presentation/product_layouts/product_item.dart';
import 'package:flutter/material.dart';

class ProductGridView extends StatelessWidget {
  const ProductGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<Product> products = [
      Product(
        id: '1',
        name: 'Basic Beyaz Tişört',
        size: 'M',
        category: 'Tişört',
        material: 'Pamuk',
        brand: 'Zara',
        price: '199',
        imageName: 'https://fakeimg.pl/500x500/?text=Ürün',
      ),
      Product(
        id: '2',
        name: 'Slim Fit Kot Pantolon',
        size: '32',
        category: 'Kot Pantolon',
        material: 'Denim',
        brand: 'Levi\'s',
        price: '599',
        imageName: 'https://fakeimg.pl/500x500/?text=Ürün',
      ),
      Product(
        id: '3',
        name: 'Kapüşonlu Şişme Ceket',
        size: 'M',
        category: 'Ceket',
        material: 'Polyester',
        brand: 'The North Face',
        price: '1499',
        imageName: 'https://fakeimg.pl/500x500/?text=Ürün',
      ),
      Product(
        id: '4',
        name: 'Dizüstü Siyah Elbise',
        size: '38',
        category: 'Elbise',
        material: 'Polyester',
        brand: 'Koton',
        price: '249',
        imageName: 'https://fakeimg.pl/500x500/?text=Ürün',
      ),
      Product(
        id: '5',
        name: 'Spor Ayakkabı',
        size: '42',
        category: 'Ayakkabı',
        material: 'File Kumaş',
        brand: 'Nike',
        price: '899',
        imageName: 'https://fakeimg.pl/500x500/?text=Ürün',
      ),
      Product(
        id: '6',
        name: 'Balıkçı Yaka Kazak',
        size: 'M',
        category: 'Kazak',
        material: 'Yün',
        brand: 'Massimo Dutti',
        price: '549',
        imageName: 'https://fakeimg.pl/500x500/?text=Ürün',
      ),
      Product(
        id: '7',
        name: 'Spor Şort',
        size: 'L',
        category: 'Şort',
        material: 'Polyester',
        brand: 'Nike',
        price: '299',
        imageName: 'https://fakeimg.pl/500x500/?text=Ürün',
      ),
      Product(
        id: '8',
        name: 'Pileli Mini Etek',
        size: '36',
        category: 'Etek',
        material: 'Polyester',
        brand: 'Zara',
        price: '349',
        imageName: 'https://fakeimg.pl/500x500/?text=Ürün',
      ),
      Product(
        id: '9',
        name: 'Örgü Atkı',
        size: 'Standart',
        category: 'Atkı',
        material: 'Yün',
        brand: 'Columbia',
        price: '249',
        imageName: 'https://fakeimg.pl/500x500/?text=Ürün',
      ),
      Product(
        id: '10',
        name: 'Kamuflaj Desenli Şapka',
        size: 'M',
        category: 'Şapka',
        material: 'Polyester',
        brand: 'Under Armour',
        price: '249',
        imageName: 'https://fakeimg.pl/500x500/?text=Ürün',
      ),
    ];

    return GridView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: products.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        childAspectRatio: 0.6,
      ),
      itemBuilder: (context, index) {
        final product = products[index];
        return ProductItem(product: product);
      },
    );
  }
}
