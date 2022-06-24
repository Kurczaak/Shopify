import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/kt.dart';
import 'package:shopify_domain/cart/cart_item.dart';
import 'package:shopify_domain/cart/value_validators.dart';
import 'package:shopify_domain/core.dart';
import 'package:shopify_domain/product.dart';

import '../utils/fixture_reader.dart';

void main() {
  final Map<String, dynamic> jsonPricedProduct =
      json.decode(fixture('priced_product.json'));

  late PricedProduct tProduct;
  late NonnegativeInt correctQuantity;
  late NonnegativeInt incorrectQuantity;
  late CartItem tCorrectCartItem1;
  late CartItem tCorrectCartItem2;
  late CartItem tCorrectCartItem3;
  late CartItem tIncorrectCartItem1;
  late CartItem tIncorrectCartItem2;
  late CartItem tIncorrectCartItem3;
  late KtList<CartItem> tOnlyCorrectCartItems;
  late KtList<CartItem> tOnlyIncorrectCartItems;
  late KtList<CartItem> tMixedCartItems;

  setUp(() {
    tProduct = PricedProductDto.fromJson(jsonPricedProduct).toDomain();
    correctQuantity = NonnegativeInt(5);
    incorrectQuantity = NonnegativeInt(0);
    tCorrectCartItem2 = CartItem(product: tProduct, quantity: correctQuantity);
    tCorrectCartItem1 = CartItem(product: tProduct, quantity: correctQuantity);
    tCorrectCartItem3 = CartItem(product: tProduct, quantity: correctQuantity);
    tIncorrectCartItem1 =
        CartItem(product: tProduct, quantity: incorrectQuantity);
    tIncorrectCartItem2 =
        CartItem(product: tProduct, quantity: incorrectQuantity);
    tIncorrectCartItem3 =
        CartItem(product: tProduct, quantity: incorrectQuantity);
    tOnlyCorrectCartItems =
        KtList.from([tCorrectCartItem1, tCorrectCartItem2, tCorrectCartItem3]);
    tOnlyIncorrectCartItems = KtList.from(
        [tIncorrectCartItem2, tIncorrectCartItem1, tIncorrectCartItem3]);
    tMixedCartItems = KtList.from([
      tCorrectCartItem1,
      tCorrectCartItem2,
      tIncorrectCartItem2,
      tIncorrectCartItem1,
      tCorrectCartItem3,
      tIncorrectCartItem3
    ]);
  });
  group('validateCartItems', () {
    test(
      'should return the correct list',
      () async {
        // act
        final result = validateCartItems(tOnlyCorrectCartItems);
        // assert
        expect(result, right(tOnlyCorrectCartItems));
      },
    );

    test(
      'should return the correct list given the mixed one',
      () async {
        // act
        final result = validateCartItems(tMixedCartItems);
        // assert
        expect(result, right(tOnlyCorrectCartItems));
      },
    );

    test(
      'should return a value failure given incorrect list',
      () async {
        // act
        final result = validateCartItems(tOnlyIncorrectCartItems);
        // assert
        expect(result,
            isA<Left<ValueFailure<KtList<CartItem>>, KtList<CartItem>>>());
      },
    );
  });
}
