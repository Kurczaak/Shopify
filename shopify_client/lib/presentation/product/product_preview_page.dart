import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:shopify_client/presentation/shop/shop_products_browser_page.dart';
import 'package:shopify_domain/product/product_snippets.dart';
import 'package:shopify_domain/shop.dart';
import 'package:shopify_presentation/shopify_presentation.dart';

class ProductPreviewPage extends StatelessWidget {
  const ProductPreviewPage(
      {Key? key, required this.product, required this.shop})
      : super(key: key);
  final PricedProduct product;
  final Shop shop;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: ShopifyAppBar(
          appBar: AppBar(),
          onTapBack: () {
            context.router.pop();
          },
          title: product.name.getOrCrash(),
        ),
        body: AspectRatio(
          aspectRatio: .7,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Flexible(
                fit: FlexFit.tight,
                flex: 5,
                child: Image.network(product.photo.getOrCrash(),
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
                    const Flexible(
                      fit: FlexFit.tight,
                      flex: 3,
                      child: AddToCartAndFavouriteColumn(),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
