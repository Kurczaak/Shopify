import 'package:dartz/dartz.dart';
import 'package:shopify_domain/core.dart';
import 'package:shopify_domain/product/product_snippets.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
part 'cart_item.freezed.dart';

@freezed
class CartItem with _$CartItem {
  const CartItem._();
  const factory CartItem({
    required UniqueId id,
    required PricedProduct product,
    required NonnegativeInt quantity,
  }) = _CartItem;

  double get cost => product.price.price.getOrCrash() * quantity.getOrCrash();
  Either<ValueFailure, Unit> get failureOrUnit =>
      product.failureOrUnit.andThen(quantity.failureOrUnit);
}
