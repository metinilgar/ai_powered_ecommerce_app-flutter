import 'package:ecommerce_app/src/features/product/data/product_repository.dart';
import 'package:ecommerce_app/src/features/product/models/product.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'popular_product_controller.g.dart';

@riverpod
class PopularProductController extends _$PopularProductController {
  @override
  FutureOr<List<Product>> build() {
    return ref.read(productRepositoryProvider).getPopularProducts();
  }
}
