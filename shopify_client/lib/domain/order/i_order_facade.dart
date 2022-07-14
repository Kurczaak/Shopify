import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';
import 'package:shopify_domain/order/order.dart';
import 'package:shopify_domain/order/order_failure.dart';

abstract class IOrderFacade {
  Stream<Either<OrderFailure, KtList<ShopifyOrder>>> watchYourOrders(
      OrderStatus status);
}
