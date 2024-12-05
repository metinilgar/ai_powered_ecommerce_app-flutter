import 'package:ecommerce_app/src/features/categories/data/category_repository.dart';
import 'package:ecommerce_app/src/features/categories/models/category.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'category_controller.g.dart';

@riverpod
class CategoryController extends _$CategoryController {
  @override
  FutureOr<List<Category>> build() {
    return ref.read(categoryRepositoryProvider).getCategories();
  }
}
