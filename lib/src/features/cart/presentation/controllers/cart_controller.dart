import 'package:ecommerce_app/src/features/cart/models/cart_product_data.dart';
import 'package:ecommerce_app/src/features/product/models/product.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'cart_controller.g.dart';

@riverpod
class CartController extends _$CartController {
  @override
  List<CartProductData> build() {
    return [];
  }

  void addToCart(Product product) {
    if (state.any((element) => element.product.id == product.id)) {
      state = state.map((e) {
        if (e.product.id == product.id) {
          return CartProductData(product: e.product, quantity: e.quantity + 1);
        }
        return e;
      }).toList();
    } else {
      state = [CartProductData(product: product, quantity: 1), ...state];
    }
  }

  void removeFromCart(Product product) {
    state = state.where((element) => element.product.id != product.id).toList();
  }

  void addQuantity(CartProductData cartProduct) {
    state = state.map((e) {
      if (e.product.id == cartProduct.product.id) {
        return CartProductData(product: e.product, quantity: e.quantity + 1);
      }
      return e;
    }).toList();
  }

  void removeQuantity(CartProductData cartProduct) {
    state = state.map((e) {
      if (e.product.id == cartProduct.product.id) {
        if (e.quantity == 1) {
          return e;
        }

        return CartProductData(product: e.product, quantity: e.quantity - 1);
      }
      return e;
    }).toList();
  }

  double get totalPrice {
    return state.fold(0, (previousValue, element) {
      return previousValue + element.product.price * element.quantity;
    });
  }
}
