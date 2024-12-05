import 'package:dio/dio.dart';
import 'package:ecommerce_app/src/features/home/models/category.dart';
import 'package:ecommerce_app/src/network/dio_exception_message.dart';
import 'package:ecommerce_app/src/network/dio_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'category_repository.g.dart';

class CategoryRepository {
  final Dio dio;

  CategoryRepository(this.dio);

  Future<List<Category>> getCategories() async {
    try {
      final response = await dio.get("/category");

      if (response.statusCode == 200) {
        return List<Category>.from(
          response.data.map((category) => Category.fromMap(category)),
        );
      }

      throw "something went wrong";
    } on DioException catch (e) {
      throw DioExceptionMessage.fromDioError(e).errorMessage;
    }
  }
}

@riverpod
CategoryRepository categoryRepository(Ref ref) {
  return CategoryRepository(ref.read(dioProvider));
}
