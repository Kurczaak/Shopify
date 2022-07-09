import 'dart:convert';

import 'package:kt_dart/kt.dart';
import 'package:shopify_domain/cart/cart.dart';
import 'package:shopify_domain/cart/cart_item.dart';
import 'package:shopify_domain/cart/value_objects.dart';
import 'package:shopify_domain/core.dart';
import 'package:shopify_domain/product.dart';
import 'package:shopify_domain/shop/shop.dart';

import '../utils/fixture_reader.dart';

final Map<String, dynamic> jsonPricedProduct =
    json.decode(fixture('priced_product.json'));

final Map<String, dynamic> jsonShop = json.decode(fixture('shop.json'));

final tProduct = PricedProductDto.fromJson(jsonPricedProduct).toDomain();
final correctQuantity = NonnegativeInt(5);
final incorrectQuantity = NonnegativeInt(0);
final tCorrectCartItem2 =
    CartItem(id: UniqueId(), product: tProduct, quantity: correctQuantity);
final tCorrectCartItem1 =
    CartItem(id: UniqueId(), product: tProduct, quantity: correctQuantity);
final tCorrectCartItem3 =
    CartItem(id: UniqueId(), product: tProduct, quantity: correctQuantity);
final tIncorrectCartItem1 =
    CartItem(id: UniqueId(), product: tProduct, quantity: incorrectQuantity);
final tIncorrectCartItem2 =
    CartItem(id: UniqueId(), product: tProduct, quantity: incorrectQuantity);
final tIncorrectCartItem3 =
    CartItem(id: UniqueId(), product: tProduct, quantity: incorrectQuantity);
final tOnlyCorrectCartItems =
    KtList.from([tCorrectCartItem1, tCorrectCartItem2, tCorrectCartItem3]);
final tOnlyIncorrectCartItems = KtList.from(
    [tIncorrectCartItem2, tIncorrectCartItem1, tIncorrectCartItem3]);
final tMixedCartItems = KtList.from([
  tCorrectCartItem1,
  tCorrectCartItem2,
  tIncorrectCartItem2,
  tIncorrectCartItem1,
  tCorrectCartItem3,
  tIncorrectCartItem3
]);

final tCart = Cart(
    id: UniqueId(),
    shop: Shop.empty(),
    cartItems: CartItemsList(tOnlyCorrectCartItems));
