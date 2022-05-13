import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shopify_domain/shop.dart';
import 'package:shopify_client/presentation/shop/shop_recap_column.dart';

class ShopPreviewDialog extends StatelessWidget {
  final Shop shop;
  final void Function()? onCancel;
  final void Function() onConfirm;
  const ShopPreviewDialog({
    Key? key,
    required this.shop,
    this.onCancel,
    required this.onConfirm,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      content: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.topCenter,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 10),
              ShopRecap(shop: shop),
              const SizedBox(height: 20),
            ],
          ),
          Positioned(
            child: Container(
              padding: const EdgeInsets.all(5),
              height: 100,
              child: CachedNetworkImage(imageUrl: shop.logoUrl.getOrCrash()),
            ),
            top: -70,
          ),
        ],
      ),
      actionsAlignment: MainAxisAlignment.center,
      actions: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(shape: const CircleBorder()),
          onPressed: () {},
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.shopping_basket_rounded,
              size: 50,
            ),
          ),
        )
      ],
    );
  }
}
