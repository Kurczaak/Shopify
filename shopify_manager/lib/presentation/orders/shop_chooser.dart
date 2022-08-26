import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopify_domain/shop.dart';
import 'package:shopify_manager/injection.dart';
import 'package:shopify_manager/presentation/routes/router.gr.dart';
import 'package:shopify_presentation/shopify_presentation.dart';

import '../../application/shop/shop_watcher/shop_watcher_bloc.dart';

class ShopChooserPage extends StatelessWidget {
  const ShopChooserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: ShopifyAppBar(
          title: 'Choose a shop',
          appBar: AppBar(),
          onTapBack: context.router.pop,
        ),
        body: BlocProvider(
          create: (context) {
            return getIt<ShoppingWatcherBloc>()
              ..add(const ShoppingWatcherEvent.watchYours());
          },
          child: Center(
            child: BlocBuilder<ShoppingWatcherBloc, ShoppingWatcherState>(
              builder: (context, state) {
                return state.map(
                  initial: (_) => Container(),
                  loadInProgress: (_) =>
                      const Center(child: ShopifyProgressIndicator()),
                  loadSuccess: (state) {
                    return ListView.builder(
                      physics: const ClampingScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        final shop = state.shops[index];
                        if (shop.failureOption.isSome()) {
                          return const Text('Failure');
                        } else {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ShopPreviewCard(
                                shop: shop,
                                onTap: (shop) {
                                  context.router
                                      .navigate(ShopOrdersRoute(shop: shop));
                                }),
                          );
                        }
                      },
                      itemCount: state.shops.size,
                    );
                  },
                  loadFailure: (state) {
                    return const Text('Load Failure');
                  },
                );
              },
            ),
          ),
        ));
  }
}

class ShopPreviewCard extends StatefulWidget {
  const ShopPreviewCard({Key? key, required this.shop, required this.onTap})
      : super(key: key);
  final Shop shop;
  final Function(Shop shop) onTap;

  @override
  State<ShopPreviewCard> createState() => _ShopPreviewCardState();
}

class _ShopPreviewCardState extends State<ShopPreviewCard> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.onTap(widget.shop);
      },
      onLongPress: () {
        showDialog(
            context: context,
            builder: (context) => ShopPreviewDialog(
                  shop: widget.shop,
                ));
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            width: 2,
            color: Theme.of(context).primaryColor,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(children: [
              SizedBox(
                  height: 60,
                  width: 60,
                  child: Image.network(widget.shop.logoUrl.getOrCrash())),
              Text(widget.shop.shopName.getOrCrash())
            ]),
            Text(widget.shop.address.toString()),
          ],
        ),
      ),
    );
  }
}
