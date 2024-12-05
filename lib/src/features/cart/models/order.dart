import 'package:ecommerce_app/src/features/product/models/product.dart';

class Order {
  final int totalAmount;
  final int userId;
  final List<Product> orderIdList;

  Order({
    required this.totalAmount,
    required this.userId,
    required this.orderIdList,
  });
}
