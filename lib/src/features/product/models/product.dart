// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Product {
  final int id;
  final String name;
  final String size;
  final String material;
  final String brand;
  final double price;
  final String? imageName;

  Product({
    required this.id,
    required this.name,
    required this.size,
    required this.material,
    required this.brand,
    required this.price,
    required this.imageName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'size': size,
      'material': material,
      'brand': brand,
      'price': price,
      'imageName': imageName,
    };
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      id: map['id'] as int,
      name: map['name'] as String,
      size: map['size'] as String,
      material: map['material'] as String,
      brand: map['brand'] as String,
      price: map['price'] as double,
      imageName: map['imageName'] != null ? map['imageName'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Product.fromJson(String source) =>
      Product.fromMap(json.decode(source) as Map<String, dynamic>);
}
