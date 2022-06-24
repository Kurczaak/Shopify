import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopify_client/application/product_watcher/product_watcher_bloc.dart';
import 'package:shopify_client/injection.dart';
import 'package:shopify_client/presentation/product/product_failure_widget.dart';
import 'package:shopify_domain/product.dart';
import 'package:shopify_domain/shop.dart';
import 'package:shopify_presentation/shopify_presentation.dart';

import '../routes/router.gr.dart';

class ShopProductsBrowserPage extends StatelessWidget {
  const ShopProductsBrowserPage({Key? key, required this.shop})
      : super(key: key);
  final Shop shop;
  @override
  Widget build(BuildContext context) {
    return BlocProvider<ProductWatcherBloc>(
        create: (context) => getIt<ProductWatcherBloc>()
          ..add(ProductWatcherEvent.initialize(shop: shop)),
        child: BlocBuilder<ProductWatcherBloc, ProductWatcherState>(
          builder: (context, state) => Scaffold(
              appBar: ShopifyAppBar(
                appBar: AppBar(),
                onTapBack: () {
                  state.productsAndCategoryOption.fold(
                      () => context.router.pop(),
                      (a) => context.read<ProductWatcherBloc>().add(
                          const ProductWatcherEvent
                              .clearCategoryAndProducts()));
                },
                title: state.categoryOption.fold(
                    () => shop.shopName.getOrCrash(),
                    (category) => category.getOrCrash().stringifiedName),
              ),
              body: ShopifySearchBar(
                onClear: () {},
                onQueryChanged: (_) {},
                onSubmitted: (String query) {
                  context
                      .read<ProductWatcherBloc>()
                      .add(ProductWatcherEvent.searchedForProduct(term: query));
                },
                onHistoryChanged: (_) {},
                searchHistory: const ['mascarpone', 'haribo', 'cola'],
                child: state.failureOption.fold(
                    () => state.isLoading
                        ? const Center(
                            child: ShopifyProgressIndicator(),
                          )
                        : state.productsAndCategoryOption.fold(
                            () => CategoriesGridView(onAllProductsTap: () {
                                  context.read<ProductWatcherBloc>().add(
                                      const ProductWatcherEvent
                                          .watchAllProductsSelected());
                                }, onTap: (int index) {
                                  context.read<ProductWatcherBloc>().add(
                                      ProductWatcherEvent.categoryChosen(
                                          category: Category(
                                              Categories.values[index])));
                                }),
                            (_) => ProductsGridView(
                                  productsOption: state.productsOption,
                                  shop: shop,
                                  onTap: (product) {
                                    context.router.push(ProductPreviewRoute(
                                        product: product, shop: shop));
                                  },
                                )),
                    (failure) => FailureWidget(
                          failure: failure,
                          onRetry: context.read<ProductWatcherBloc>().retry,
                        )),
              )),
        ));
  }
}
