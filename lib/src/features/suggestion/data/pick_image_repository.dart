import 'package:dio/dio.dart';
import 'package:ecommerce_app/src/network/dio_exception_message.dart';
import 'package:ecommerce_app/src/network/dio_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'pick_image_repository.g.dart';

class PickImageRepository {
  Dio dio;

  PickImageRepository(this.dio);

  Future<bool> uploadImage(FormData formData, String id) async {
    try {
      final response = await dio.post(
        "/users/file/${id}",
        data: formData,
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
PickImageRepository pickImageRepository(Ref ref) {
  return PickImageRepository(ref.read(dioProvider));
}
