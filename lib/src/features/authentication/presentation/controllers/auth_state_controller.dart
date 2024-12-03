import 'package:ecommerce_app/src/features/authentication/data/auth_repository.dart';
import 'package:ecommerce_app/src/utils/providers/shared_preferences_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_state_controller.g.dart';

@riverpod
class AuthStateController extends _$AuthStateController {
  @override
  FutureOr<bool> build() {
    final preferences = ref.read(sharedPreferencesProvider);
    return preferences.getBool('isLoggedIn') ?? false;
  }

  Future<bool> loginUser(
      {required String email, required String password}) async {
    try {
      final preferences = ref.read(sharedPreferencesProvider);

      final data =
          await ref.read(authRepositoryProvider).login(email, password);

      await preferences.setString("userId", data.userId.toString());
      await preferences.setString("name", data.fullName.toString());
      await preferences.setBool("isLoggedIn", true);

      ref.invalidateSelf();
      return true;
    } catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
      return false;
    }
  }

  Future<bool> createAccount({
    required String email,
    required String password,
    required String name,
  }) async {
    try {
      final data = await ref
          .read(authRepositoryProvider)
          .register(name, password, email);

      return data;
    } catch (e) {
      state = AsyncValue.error(e.toString(), StackTrace.current);
      return false;
    }
  }

  void logoutUser() {
    // final preferences = ref.read(sharedPreferencesProvider);

    // preferences.clear();

    // ref.invalidateSelf();
  }
}
