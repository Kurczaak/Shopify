import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:kt_dart/kt.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:shopify_domain/shop.dart';

class ShopsLogosScrollableList extends StatelessWidget {
  const ShopsLogosScrollableList({
    Key? key,
    required this.itemController,
    required this.shops,
    required this.onTap,
    this.selectedShop,
  }) : super(key: key);

  final ItemScrollController itemController;

  final void Function(Shop shop) onTap;
  final KtList<Shop> shops;
  final Shop? selectedShop;

  @override
  Widget build(BuildContext context) {
    return shops.isEmpty()
        ? Center(
            child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.store),
              Text('No shops could be found.'),
            ],
          ))
        : ScrollablePositionedList.builder(
            padding: const EdgeInsets.symmetric(horizontal: 28),
            itemScrollController: itemController,
            itemCount: shops.size,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => SizedBox(
              key: Key(shops[index].id.getOrCrash()),
              height: 92,
              width: 184,
              child: Card(
                elevation:
                    (selectedShop != null && selectedShop == shops[index])
                        ? 10
                        : 1,
                child: InkWell(
                  onTap: () => onTap(shops[index]),
                  child: CachedNetworkImage(
                    imageUrl: shops[index].logoUrl.getOrCrash(),
                    placeholder: (context, url) =>
                        Image.asset('images/logo.png'),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                  ),
                ),
              ),
            ),
          );
  }
}
