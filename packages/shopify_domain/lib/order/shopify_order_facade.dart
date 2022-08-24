import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
import 'package:shopify_domain/core/value_objects.dart';
import 'package:shopify_domain/order/order.dart';
import 'package:shopify_domain/order/order_failure.dart';

abstract class ShopifyOrderFacade {
  Stream<Either<OrderFailure, KtList<ShopifyOrder>>> watchShopOrders(
      UniqueId shopId);
  Stream<Either<OrderFailure, KtList<ShopifyOrder>>> watchUserOrders(
      OrderStatus status);
  Future<Either<OrderFailure, Unit>> changeOrderStatus(
      UniqueId orderId, OrderStatus status);
}
