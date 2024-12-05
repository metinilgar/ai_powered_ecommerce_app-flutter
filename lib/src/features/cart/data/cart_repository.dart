import 'package:dio/dio.dart';
import 'package:ecommerce_app/src/network/dio_exception_message.dart';
import 'package:ecommerce_app/src/network/dio_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'cart_repository.g.dart';

class CartRepository {
  final Dio dio;

  CartRepository(this.dio);

  Future<bool> chekout(
      {required double totalAmount,
      required int userId,
      required List<int> orderIdList}) async {
    try {
      final response = await dio.post(
        "/orders",
        data: {
          "totalAmount": totalAmount,
          "userId": userId,
          "orderIdList": orderIdList,
        },
      );

      if (response.statusCode == 200) {
        return true;
      }

      throw "something went wrong";
    } on DioException catch (e) {
      throw DioExceptionMessage.fromDioError(e).errorMessage;
    }
  }
}

@riverpod
CartRepository cartRepository(Ref ref) {
  return CartRepository(ref.read(dioProvider));
}
