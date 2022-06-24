import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:shopify_domain/cart/cart_item.dart';
import 'package:shopify_domain/cart/cart_failure.dart';
import 'package:shopify_domain/cart/cart.dart';
import 'package:dartz/dartz.dart';
import 'package:shopify_domain/cart/shopify_cart_facade.dart';
import 'package:shopify_domain/core/network/network_info.dart';

@Injectable(as: ShopifyCartFacade)
class FirebaseCartFacadeImpl implements ShopifyCartFacade {
  final FirebaseFirestore firebase;
  final NetworkInfo networkInfo;
  FirebaseCartFacadeImpl({required this.firebase, required this.networkInfo});
  @override
  Future<Either<CartFailure, Unit>> addItemToCart(CartItem item) {
    // TODO: implement addItemToCart
    throw UnimplementedError();
  }

  @override
  Stream<Either<CartFailure, UserCarts>> getUserCarts() {
    // TODO: implement getUserCarts
    throw UnimplementedError();
  }

  @override
  Future<Either<CartFailure, Unit>> removeItemFromCart(CartItem item) {
    // TODO: implement removeItemFromCart
    throw UnimplementedError();
  }

  @override
  Future<Either<CartFailure, Unit>> updateItemInCart(CartItem item) {
    // TODO: implement updateItemInCart
    throw UnimplementedError();
  }
}
