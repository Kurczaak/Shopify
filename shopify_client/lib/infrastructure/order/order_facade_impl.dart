import 'package:injectable/injectable.dart';
import 'package:kt_dart/src/collection/kt_list.dart';
import 'package:dartz/dartz.dart';
import 'package:shopify_client/domain/order/i_order_facade.dart';
import 'package:shopify_domain/order/order_failure.dart';
import 'package:shopify_domain/order/order.dart';
import 'package:shopify_domain/order/shopify_order_facade.dart';

@Injectable(as: IOrderFacade)
class OrderFacadeImpl implements IOrderFacade {
  OrderFacadeImpl(this.orderFacade);
  final ShopifyOrderFacade orderFacade;
  @override
  Stream<Either<OrderFailure, KtList<ShopifyOrder>>> watchYourOrders(
      OrderStatus status) {
    return orderFacade.watchUserOrders(status);
  }
}
