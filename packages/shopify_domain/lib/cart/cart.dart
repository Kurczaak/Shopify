import 'package:dartz/dartz.dart';
import 'package:shopify_domain/cart/value_objects.dart';
import 'package:shopify_domain/core.dart';
import 'package:shopify_domain/shop/shop.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'cart.freezed.dart';

@freezed
class Cart with _$Cart {
  const Cart._();

  const factory Cart({
    required UniqueId id,
    required Shop shop,
    required CartItemsList cartItems,
  }) = _Cart;

  double get totalCost {
    double total = 0;
    for (final item in cartItems.getOrCrash().iter) {
      total += item.cost;
    }
    return total;
  }

  Either<ValueFailure, Unit> get failureOrUnit =>
      shop.failureOrUnit.andThen(cartItems.failureOrUnit);
}

@freezed
class UserCarts with _$UserCarts {
  const UserCarts._();
  const factory UserCarts({
    required UniqueId id,
    required NonEmptyList<Cart> carts,
  }) = _UserCarts;
  Either<ValueFailure, Unit> get failureOrUnit => carts.failureOrUnit;
}
