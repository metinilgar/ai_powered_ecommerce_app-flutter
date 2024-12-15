import 'package:ecommerce_app/src/features/product/data/product_repository.dart';
import 'package:ecommerce_app/src/features/product/models/product.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'suggestion_product_controller.g.dart';

@riverpod
class SuggestionProductController extends _$SuggestionProductController {
  @override
  FutureOr<List<Product>> build(int id) {
    return ref.read(productRepositoryProvider).getSuggestionProducts(id);
  }
}
