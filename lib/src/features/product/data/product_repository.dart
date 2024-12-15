import 'package:dio/dio.dart';
import 'package:ecommerce_app/src/features/product/models/product.dart';
import 'package:ecommerce_app/src/network/dio_exception_message.dart';
import 'package:ecommerce_app/src/network/dio_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'product_repository.g.dart';

class ProductRepository {
  final Dio dio;

  ProductRepository(this.dio);

  Future<List<Product>> getCategoryProducts(int id) async {
    try {
      final response = await dio.get("/category/$id/products");

      if (response.statusCode == 200) {
        return List<Product>.from(
          response.data.map((category) => Product.fromMap(category)),
        );
      }

      throw "something went wrong";
    } on DioException catch (e) {
      throw DioExceptionMessage.fromDioError(e).errorMessage;
    }
  }

  Future<List<Product>> getPopularProducts() async {
    try {
      final response = await dio.get("/products");

      if (response.statusCode == 200) {
        return List<Product>.from(
          response.data.map((product) => Product.fromMap(product)),
        );
      }

      throw "something went wrong";
    } on DioException catch (e) {
      throw DioExceptionMessage.fromDioError(e).errorMessage;
    }
  }
}

@riverpod
ProductRepository productRepository(Ref ref) {
  return ProductRepository(ref.read(dioProvider));
}
