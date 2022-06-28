import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:kt_dart/kt.dart';
import 'package:shopify_domain/product/product_snippets.dart';
import 'package:shopify_domain/shop.dart';
import 'package:shopify_presentation/product/widgets/product_snippet_card.dart';

class ProductsGridView extends StatelessWidget {
  const ProductsGridView(
      {Key? key,
      required this.productsOption,
      required this.shop,
      required this.onTap,
      required this.onTapAddToCart,
      required this.onLongPressAddToCart,
      required this.onTapFavorurite})
      : super(key: key);
  final Option<KtList<PricedProduct>> productsOption;
  final Shop shop;
  final void Function(PricedProduct product) onTap;
  final void Function(PricedProduct product) onTapAddToCart;
  final void Function(PricedProduct product) onLongPressAddToCart;
  final void Function(PricedProduct product) onTapFavorurite;

  @override
  Widget build(BuildContext context) {
    return productsOption.fold(
        () => const Center(child: Text('No products found')),
        (products) => products.isEmpty()
            ? const Center(child: Text('No products found'))
            : GridView.builder(
                padding: const EdgeInsets.only(top: 60),
                itemCount: products.size,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 2,
                  mainAxisSpacing: 2,
                  childAspectRatio: .8,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return ProductSnippetCard(
                    product: products[index],
                    onTap: onTap,
                    onFavourite: onTapFavorurite,
                    onLongPressAddToCart: onLongPressAddToCart,
                    onTapAddToCart: onTapAddToCart,
                  );
                }));
  }
}
