import 'package:ecommerce_app/src/features/cart/data/cart_repository.dart';
import 'package:ecommerce_app/src/features/cart/presentation/controllers/cart_controller.dart';
import 'package:ecommerce_app/src/utils/providers/shared_preferences_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'chekout_controller.g.dart';

@riverpod
class ChekoutController extends _$ChekoutController {
  @override
  FutureOr<void> build() {}

  Future<bool> chekout() async {
    try {
      final preferences = ref.read(sharedPreferencesProvider);
      final userId = preferences.getString("userId") ?? "0";

      final totalAmount = ref.read(cartControllerProvider.notifier).totalPrice;
      final orderIdList =
          ref.read(cartControllerProvider).map((e) => e.product.id).toList();

      final data = await ref.read(cartRepositoryProvider).chekout(
          totalAmount: totalAmount,
          orderIdList: orderIdList,
          userId: int.parse(userId));

      ref.invalidate(cartControllerProvider);
      return true;
    } catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
      return false;
    }
  }
}
