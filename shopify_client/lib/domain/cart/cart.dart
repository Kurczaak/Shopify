import 'package:shopify_client/domain/cart/value_objects.dart';
import 'package:shopify_domain/shop/shop.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'cart.freezed.dart';

@freezed
class Cart with _$Cart {
  const Cart._();

  const factory Cart({
    required Shop shop,
    required CartItemsList cartItems,
  }) = _Cart;
}
