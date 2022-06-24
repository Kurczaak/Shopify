import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
import 'package:shopify_client/domain/cart/cart_item.dart';
import 'package:shopify_domain/cart/value_failures.dart';
import 'package:shopify_domain/core.dart';

Either<ValueFailure<KtList<CartItem>>, KtList<CartItem>> validateCartItems(
    KtList<CartItem> items) {
  KtList<CartItem> validatedList = const KtList.empty();
  for (final item in items.iter) {
    if (item.quantity.getOrCrash() > 0) {
      validatedList = validatedList.plusElement(item);
    }
  }
  if (validatedList.size == 0) {
    return left(
        const ValueFailure.cart(CartValueFailure.emptyyCartItemsList()));
  } else {
    return right(validatedList);
  }
}
