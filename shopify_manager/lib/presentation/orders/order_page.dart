import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/collection.dart';
import 'package:shopify_domain/cart/cart_item.dart';
import 'package:shopify_domain/core.dart';
import 'package:shopify_domain/order/order.dart';
import 'package:shopify_manager/application/order_actor/order_actor_bloc.dart';
import 'package:shopify_manager/injection.dart';
import 'package:shopify_manager/presentation/orders/widgets/order_status_widget.dart';
import 'package:shopify_presentation/core/shopify_appbar.dart';
import 'package:shopify_presentation/core/shopify_image.dart';

class OrderPage extends StatelessWidget {
  final KtList<CartItem> orderItems;
  final OrderStatus status;
  final UniqueId orderId;
  final String title;
  const OrderPage({
    Key? key,
    required this.orderItems,
    required this.title,
    required this.status,
    required this.orderId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<OrderActorBloc>(
      create: (context) => getIt<OrderActorBloc>()
        ..add(
            OrderActorEvent.initialize(orderStatus: status, orderId: orderId)),
      child: BlocConsumer<OrderActorBloc, OrderActorState>(
        listener: (_, __) {},
        builder: (context, state) => Scaffold(
          appBar: ShopifyAppBar(
            appBar: AppBar(),
            title: title,
          ),
          body: Column(
            children: [
              Expanded(
                child: ListView.builder(
                    itemCount: orderItems.size,
                    itemBuilder: (context, index) {
                      final item = orderItems[index];
                      return Card(
                        child: Row(
                          children: [
                            SizedBox(
                                width: 40,
                                child: Center(
                                    child: Text(item.quantity
                                        .getOrCrash()
                                        .toString()))),
                            SizedBox(
                                height: 50,
                                width: 50,
                                child: FittedBox(
                                    fit: BoxFit.contain,
                                    child: ShopifyNetworkImage(
                                        item.product.photo.getOrCrash()))),
                            Flexible(
                              fit: FlexFit.tight,
                              flex: 3,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(item.product.name.getOrCrash()),
                                  Text(item.product.brand.getOrCrash()),
                                ],
                              ),
                            ),
                            Flexible(
                                fit: FlexFit.tight,
                                flex: 1,
                                child:
                                    Text('${item.cost.toStringAsFixed(2)} zł')),
                          ],
                        ),
                      );
                    }),
              ),
              SizedBox(
                height: 50,
                child: OrderStatusWidget(
                  onStatusChanged: (status) {
                    context.read<OrderActorBloc>().add(
                        OrderActorEvent.changeOrderStatus(orderStatus: status));
                  },
                  defaultValue: status.getOrCrash(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
