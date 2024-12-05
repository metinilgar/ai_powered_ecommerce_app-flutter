import 'package:ecommerce_app/src/features/product/models/product.dart';

class CartProductData {
  final Product product;
  final int quantity;

  CartProductData({
    required this.product,
    required this.quantity,
  });
}
