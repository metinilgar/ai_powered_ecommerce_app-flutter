import 'package:ecommerce_app/src/features/home/data/category_repository.dart';
import 'package:ecommerce_app/src/features/home/models/category.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'category_controller.g.dart';

@riverpod
class CategoryController extends _$CategoryController {
  @override
  FutureOr<List<Category>> build() {
    return ref.read(categoryRepositoryProvider).getCategories();
  }
}
