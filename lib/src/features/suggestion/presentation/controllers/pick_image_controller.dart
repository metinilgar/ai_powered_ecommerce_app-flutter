import 'dart:io';

import 'package:dio/dio.dart';
import 'package:ecommerce_app/src/features/suggestion/data/pick_image_repository.dart';
import 'package:ecommerce_app/src/utils/providers/shared_preferences_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'pick_image_controller.g.dart';

@riverpod
class PickImageController extends _$PickImageController {
  @override
  FutureOr<void> build() {}

  Future<bool> uploadImage(File imageFile) async {
    try {
      String id = ref.read(sharedPreferencesProvider).getString("userId") ?? "";

      // Form-data hazırlama
      FormData formData = FormData.fromMap({
        "file": await MultipartFile.fromFile(
          imageFile.path,
          filename: imageFile.path.split('/').last,
        ),
      });

      final data =
          await ref.read(pickImageRepositoryProvider).uploadImage(formData, id);

      return data;
    } catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
      return false;
    }
  }
}
