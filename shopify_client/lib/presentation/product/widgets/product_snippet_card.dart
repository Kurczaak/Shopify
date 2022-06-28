import 'package:flutter/material.dart';
import 'package:shopify_domain/product.dart';
import 'package:shopify_presentation/core/shopify_image.dart';
import 'package:shopify_presentation/product/widgets/add_to_cart_and_favourite_column.dart';
import 'package:shopify_presentation/product/widgets/product_snippet_info_widget.dart';

class ProductSnippetCard extends StatelessWidget {
  const ProductSnippetCard(
      {Key? key,
      required this.product,
      required this.onTap,
      required this.onTapAddToCart,
      required this.onFavourite,
      required this.onLongPressAddToCart})
      : super(key: key);

  final PricedProduct product;
  final void Function(PricedProduct product) onTap;
  final void Function(PricedProduct product) onTapAddToCart;
  final void Function(PricedProduct product) onLongPressAddToCart;
  final void Function(PricedProduct product) onFavourite;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(product),
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Flexible(
              fit: FlexFit.tight,
              flex: 5,
              child: ShopifyNetworkImage(product.photo.getOrCrash(),
                  fit: BoxFit.cover, height: 80, width: 120),
            ),
            const SizedBox(height: 5),
            Flexible(
              fit: FlexFit.tight,
              flex: 3,
              child: Row(
                children: [
                  Flexible(
                    fit: FlexFit.tight,
                    flex: 10,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: ProductSnippetInfoWidget(product: product),
                    ),
                  ),
                  Flexible(
                    fit: FlexFit.tight,
                    flex: 3,
                    child: AddToCartAndFavouriteColumn(
                      onTapAddToCart: () => onTapAddToCart(product),
                      onLongPressAddToCart: () => onLongPressAddToCart(product),
                      onTapFavourite: (_) => onFavourite(product),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
