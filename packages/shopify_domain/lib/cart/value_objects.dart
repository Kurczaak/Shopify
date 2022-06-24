import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
import 'package:shopify_domain/cart/cart_item.dart';
import 'package:shopify_domain/cart/value_validators.dart';
import 'package:shopify_domain/core/failures.dart';
import 'package:shopify_domain/core/value_objects.dart';
import 'package:shopify_domain/core/value_validators.dart';

class CartItemsList extends ValueObject<KtList<CartItem>> {
  const CartItemsList._(this.value);
  static const maxLength = 100;
  @override
  final Either<ValueFailure<KtList<CartItem>>, KtList<CartItem>> value;

  factory CartItemsList(KtList<CartItem> cartItems) =>
      CartItemsList._(validateListLength(cartItems, maxLength)
          .flatMap((passedValue) => validateCartItems(passedValue)));

  int get length {
    return value.getOrElse(() => emptyList()).size;
  }

  bool get isFull {
    return length == maxLength;
  }
}
