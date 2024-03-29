import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopify_client/application/order_watcher/order_watcher_bloc.dart';
import 'package:shopify_client/injection.dart';
import 'package:shopify_domain/order/order.dart';
import 'package:shopify_presentation/core/shopify_appbar.dart';
import 'package:shopify_presentation/core/shopify_image.dart';
import 'package:intl/intl.dart';

import '../routes/router.gr.dart';

class UserOrdersPage extends StatelessWidget {
  const UserOrdersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<OrderWatcherBloc>(
      create: (context) => getIt<OrderWatcherBloc>()
        ..add(const OrderWatcherEvent.watchPendingOrders()),
      child: BlocConsumer<OrderWatcherBloc, OrderWatcherState>(
        listener: (_, __) {},
        builder: (context, state) => Scaffold(
            appBar: ShopifyAppBar(
              title: 'Your orders',
              appBar: AppBar(),
            ),
            body: state.failureOption.fold(
                () => state.isLoading
                    ? const Center(
                        child: CircularProgressIndicator(),
                      )
                    : state.orders.size <= 0
                        ? ElevatedButton(
                            onPressed: () {
                              context.read<OrderWatcherBloc>().add(
                                  const OrderWatcherEvent.watchPendingOrders());
                            },
                            child: const Text('Click'))
                        : ListView.builder(
                            itemCount: state.orders.size,
                            itemBuilder: (context, index) => InkWell(
                                onTap: () {
                                  context.router.navigate(OrderRoute(
                                      title: state
                                          .orders[index].cart.shop.shopName
                                          .getOrCrash(),
                                      orderItems: state
                                          .orders[index].cart.cartItems
                                          .getOrCrash()));
                                },
                                child: OrderPreviewTile(
                                    order: state.orders[index]))),
                (failure) => Text(failure.toString()))),
      ),
    );
  }
}

class OrderPreviewTile extends StatelessWidget {
  OrderPreviewTile({Key? key, required this.order}) : super(key: key);
  final ShopifyOrder order;

  final DateFormat dateFormat = DateFormat("E, dd MMMM HH:mm");

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          SizedBox(
            height: 70,
            width: 70,
            child: ShopifyNetworkImage(order.cart.shop.logoUrl.getOrCrash()),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Icon(Icons.shopping_basket),
                          const SizedBox(width: 10),
                          Text(
                              '${order.cart.numOfItems} product${(order.cart.numOfItems != 1) ? 's' : ''}'),
                        ],
                      ),
                      Row(
                        children: [
                          const Icon(Icons.payments),
                          const SizedBox(width: 10),
                          Text(
                              'Total: ${order.cart.totalCost.toStringAsFixed(2)} zł')
                        ],
                      )
                    ]),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      dateFormat.format(order.date.toLocal()),
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                    Text('Status: ${order.orderStatus.getOrCrash().name}',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.error,
                        )),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
