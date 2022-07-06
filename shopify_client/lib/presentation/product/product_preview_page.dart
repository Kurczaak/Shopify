import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopify_client/application/product_preview/product_preview_bloc.dart';
import 'package:shopify_client/injection.dart';
import 'package:shopify_client/presentation/product/product_failure_widget.dart';
import 'package:shopify_client/presentation/product/widgets/add_to_cart_and_favourite_column.dart';
import 'package:shopify_domain/product/product_snippets.dart';
import 'package:shopify_domain/shop.dart';
import 'package:shopify_presentation/shopify_presentation.dart';

class ProductPreviewPage extends StatelessWidget {
  const ProductPreviewPage({
    Key? key,
    required this.product,
    required this.shop,
    @PathParam() required this.title,
  }) : super(key: key);
  final PricedProduct product;
  final String title;
  final Shop shop;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ProductPreviewBloc>(
        create: (context) => getIt<ProductPreviewBloc>()
          ..add(ProductPreviewEvent.initialized(
              shop: shop, productId: product.productId)),
        child: BlocConsumer<ProductPreviewBloc, ProductPreviewState>(
            listener: (BuildContext context, ProductPreviewState state) {},
            builder: (BuildContext context, ProductPreviewState state) =>
                state.failureOption.fold(
                    () => state.isLoading
                        ? const Center(
                            child: ShopifyProgressIndicator(),
                          )
                        : state.shopAndProductOption.fold(
                            () => const Center(
                                  child: ShopifyProgressIndicator(),
                                ),
                            (_) => ListView(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  children: [
                                    AspectRatio(
                                      aspectRatio: .9,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.stretch,
                                        children: [
                                          Flexible(
                                            fit: FlexFit.tight,
                                            flex: 5,
                                            child: Center(
                                              child: NetworkImageCarouselSlider(
                                                  photos: state
                                                      .getProductOrCrash.photos
                                                      .getOrCrash()),
                                            ),
                                          ),
                                          const SizedBox(height: 5),
                                          Flexible(
                                            fit: FlexFit.tight,
                                            flex: 3,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Flexible(
                                                  fit: FlexFit.tight,
                                                  flex: 10,
                                                  child:
                                                      ProductSnippetInfoWidget(
                                                          product: product),
                                                ),
                                                Flexible(
                                                  flex: 3,
                                                  child:
                                                      AddToCartAndFavouriteColumn(
                                                          product),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const Divider(),
                                    ExpandableNutritionFacts(
                                        nutrientFacts: state
                                            .getProductOrCrash.nutrientFacts),
                                    const Divider(),
                                    ExpandableDescription(
                                        description:
                                            state.getProductOrCrash.ingredients,
                                        title: 'Ingredients'),
                                    const Divider(),
                                    ExpandableDescription(
                                        description:
                                            state.getProductOrCrash.description,
                                        title: 'Description'),
                                  ],
                                )),
                    (failure) => FailureWidget(
                        failure: failure,
                        onRetry: context.read<ProductPreviewBloc>().retry))));
  }
}
