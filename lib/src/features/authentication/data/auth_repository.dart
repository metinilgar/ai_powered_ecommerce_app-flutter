import 'package:dio/dio.dart';
import 'package:ecommerce_app/src/features/authentication/models/user_data.dart';
import 'package:ecommerce_app/src/network/dio_exception_message.dart';
import 'package:ecommerce_app/src/network/dio_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_repository.g.dart';

class AuthRepository {
  final Dio dio;

  AuthRepository(this.dio);

  Future<bool> register(String fullName, String password, String email) async {
    try {
      final response = await dio.post(
        "/auth/register",
        data: {
          "fullName": fullName,
          "email": email,
          "password": password,
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

  Future<UserData> login(String email, String password) async {
    try {
      final response = await dio.post(
        "/auth/login",
        data: {
          "email": email,
          "password": password,
        },
      );

      if (response.statusCode == 200) {
        return UserData.fromMap(response.data);
      }

      throw "something went wrong";
    } on DioException catch (e) {
      throw DioExceptionMessage.fromDioError(e).errorMessage;
    }
  }
}

@riverpod
AuthRepository authRepository(Ref ref) {
  return AuthRepository(ref.read(dioProvider));
}
