import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:selectable_container/selectable_container.dart';
import 'package:shopify_domain/shop.dart';
import 'package:shopify_manager/application/shop/shop_watcher/shop_watcher_bloc.dart';
import 'package:shopify_manager/injection.dart';
import 'package:shopify_presentation/shopify_presentation.dart';

class YourShopsSelectorWidget extends StatefulWidget {
  const YourShopsSelectorWidget(
      {Key? key, required this.onChangeSelectedShops, this.showErrors = false})
      : super(key: key);

  final Function(List<Shop> selectedShops) onChangeSelectedShops;
  final bool showErrors;

  @override
  State<YourShopsSelectorWidget> createState() =>
      _YourShopsSelectorWidgetState();
}

class _YourShopsSelectorWidgetState extends State<YourShopsSelectorWidget> {
  final List<Shop> selectedShops = [];

  void _onChanged(Shop shop, bool isSelected) {
    if (isSelected) {
      selectedShops.add(shop);
    } else {
      if (selectedShops.contains(shop)) {
        selectedShops.remove(shop);
      }
    }
    setState(() {});
    widget.onChangeSelectedShops(selectedShops);
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
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
                      return ShopPreviewCard(
                        showErrors: widget.showErrors,
                        shop: shop,
                        onChanged: (bool isSelected) {
                          _onChanged(shop, isSelected);
                        },
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
    );
  }
}

class ShopPreviewCard extends StatefulWidget {
  const ShopPreviewCard(
      {Key? key,
      required this.shop,
      required this.onChanged,
      this.showErrors = false})
      : super(key: key);
  final Shop shop;
  final Function(bool isSelected) onChanged;
  final bool showErrors;

  @override
  State<ShopPreviewCard> createState() => _ShopPreviewCardState();
}

class _ShopPreviewCardState extends State<ShopPreviewCard> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onLongPress: () {
        showDialog(
            context: context,
            builder: (context) => ShopPreviewDialog(
                  shop: widget.shop,
                ));
      },
      child: SelectableContainer(
        unselectedBorderColor:
            widget.showErrors ? Theme.of(context).colorScheme.error : null,
        padding: 5,
        selected: selected,
        onValueChanged: (value) {
          setState(() {
            selected = !selected;
          });
          widget.onChanged(selected);
        },
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
