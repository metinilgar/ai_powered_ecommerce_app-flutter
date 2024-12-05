import 'package:ecommerce_app/src/features/product/data/product_repository.dart';
import 'package:ecommerce_app/src/features/product/models/product.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'product_controller.g.dart';

@riverpod
class ProductController extends _$ProductController {
  @override
  FutureOr<List<Product>> build(int id) {
    return ref.read(productRepositoryProvider).getProducts(id);
  }
}
