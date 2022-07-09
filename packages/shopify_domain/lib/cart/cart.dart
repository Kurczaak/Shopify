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

  Either<ValueFailure, Unit> get failureOrUnit =>
      shop.failureOrUnit.andThen(cartItems.failureOrUnit);

  double get totalCost {
    double total = 0;

    return failureOrUnit.fold((_) => total, (_) {
      for (final item in cartItems.getOrCrash().iter) {
        total += item.cost;
      }
      return total;
    });
  }

  int get numOfItems {
    int total = 0;

    return failureOrUnit.fold((_) => total, (_) {
      for (final item in cartItems.getOrCrash().iter) {
        total += item.quantity.getOrCrash();
      }
      return total;
    });
  }
}

@freezed
class UserCarts with _$UserCarts {
  const UserCarts._();
  const factory UserCarts({
    required UniqueId id,
    required NonEmptyList<Cart> carts,
  }) = _UserCarts;
  Either<ValueFailure, Unit> get failureOrUnit => carts.failureOrUnit;
  double get totalSum {
    return failureOrUnit.fold((_) => 0, (_) {
      double sum = 0;
      for (final cart in carts.getOrCrash().iter) {
        sum += cart.totalCost;
      }
      return sum;
    });
  }
}
