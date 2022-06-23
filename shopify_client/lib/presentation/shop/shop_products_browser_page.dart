import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/kt.dart';
import 'package:shopify_client/application/product_watcher/product_watcher_bloc.dart';
import 'package:shopify_client/injection.dart';
import 'package:shopify_client/presentation/routes/router.gr.dart';
import 'package:shopify_domain/product.dart';
import 'package:shopify_domain/shop.dart';
import 'package:shopify_presentation/shopify_presentation.dart';

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
                                shop: shop)),
                    (failure) => FailureWidget(
                          failure: failure,
                          onRetry: context.read<ProductWatcherBloc>().retry,
                        )),
              )),
        ));
  }
}

class ProductsGridView extends StatelessWidget {
  const ProductsGridView(
      {Key? key, required this.productsOption, required this.shop})
      : super(key: key);
  final Option<KtList<PricedProduct>> productsOption;
  final Shop shop;

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
                      onTap: () {
                        context.router.push(ProductPreviewRoute(
                            product: products[index], shop: shop));
                      });
                }));
  }
}

class ProductSnippetCard extends StatelessWidget {
  const ProductSnippetCard(
      {Key? key, required this.product, required this.onTap})
      : super(key: key);

  final PricedProduct product;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
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
      ),
    );
  }
}

class FailureWidget extends StatelessWidget {
  const FailureWidget({Key? key, required this.failure, required this.onRetry})
      : super(key: key);
  final ProductFailure failure;
  final void Function() onRetry;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(28.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              failure.map(
                  unexpected: (_) => 'An unexpected failure occured',
                  insufficientPermission: (_) => 'Insufficient permissions',
                  unableToUpdate: (_) => 'Unable to update',
                  timeout: (_) => 'Connection timed out',
                  noInternetConnection: (_) => 'No internet connection',
                  productNotFound: (_) => 'Product not found',
                  shopNotFound: (_) => 'Shop not found',
                  valueFailure: (failure) => 'Value failure'),
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            ),
            const Text(
              'Make sure you have an access to the internet, or try again later',
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              child: const Icon(Icons.refresh),
              onPressed: onRetry,
            ),
          ],
        ),
      ),
    );
  }
}
