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
import 'package:shopify_presentation/core/shopify_appbar.dart';
import 'package:shopify_presentation/core/shopify_progress_indicator.dart';
import '../debug_searchbar.dart';

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
              body: DebugShopifySearchBar(
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

class ProductSnippetInfoWidget extends StatelessWidget {
  const ProductSnippetInfoWidget({
    Key? key,
    required this.product,
  }) : super(key: key);

  final PricedProduct product;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: ProductNameWidget(name: product.name.getOrCrash()),
              ),
              Expanded(
                child: BrandAndWeightRow(
                    brand: product.brand.getOrCrash(),
                    weight: product.weight.stringifyOrCrash),
              ),
            ],
          ),
        ),
        Expanded(
          child: PriceWidget(price: product.price.price.getOrCrash()),
        )
      ],
    );
  }
}

class ProductNameWidget extends StatelessWidget {
  const ProductNameWidget({
    Key? key,
    required this.name,
  }) : super(key: key);

  final String name;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.contain,
      child: Text(
        name,
        style: TextStyle(
          color: Theme.of(context).primaryColor,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}

class BrandAndWeightRow extends StatelessWidget {
  const BrandAndWeightRow({
    Key? key,
    required this.brand,
    required this.weight,
  }) : super(key: key);

  final String brand;
  final String weight;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          brand,
          style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontWeight: FontWeight.bold),
        ),
        Text(
          weight,
          style: const TextStyle(fontWeight: FontWeight.w400),
        ),
      ],
    );
  }
}

class PriceWidget extends StatelessWidget {
  const PriceWidget({
    Key? key,
    required this.price,
  }) : super(key: key);

  final double price;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.contain,
      child: Text(
        price.toStringAsFixed(2) + ' zł',
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}

class AddToCartAndFavouriteColumn extends StatelessWidget {
  const AddToCartAndFavouriteColumn({
    Key? key,
    this.onTapFavourite,
    this.onTapAddToCart,
  }) : super(key: key);
  final void Function(bool isFavourite)? onTapFavourite;
  final void Function()? onTapAddToCart;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Expanded(
          child: FittedBox(
            fit: BoxFit.contain,
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.add_shopping_cart,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
        Expanded(
          child: FittedBox(
            fit: BoxFit.contain,
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.favorite_border,
                color: Theme.of(context).colorScheme.error,
              ),
            ),
          ),
        )
      ],
    );
  }
}

class CategoriesGridView extends StatelessWidget {
  const CategoriesGridView(
      {Key? key, required this.onTap, required this.onAllProductsTap})
      : super(key: key);
  final void Function(int index) onTap;
  final void Function() onAllProductsTap;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        padding: const EdgeInsets.only(top: 60),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisSpacing: 5, crossAxisSpacing: 8),
        itemCount: Categories.values.length + 1,
        itemBuilder: (BuildContext context, index) {
          if (index == 0) {
            return CategoryCard(
                categoryName: 'All products',
                onTap: onAllProductsTap,
                pictureWidget: Image.asset('images/categories/store.png'));
          } else {
            index--;
            return CategoryCard(
              categoryName: Categories.values[index].stringifiedName,
              onTap: () => onTap(index),
              pictureWidget: Image.asset(
                  'images/categories/${Categories.values[index].name}.png'),
            );
          }
        });
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

class CategoryCard extends StatelessWidget {
  const CategoryCard(
      {Key? key,
      required this.onTap,
      required this.pictureWidget,
      required this.categoryName})
      : super(key: key);
  final void Function() onTap;
  final Widget pictureWidget;
  final String categoryName;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        elevation: 5,
        child: Stack(
          alignment: AlignmentDirectional.bottomStart,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 45, bottom: 20),
              child: pictureWidget,
            ),
            Container(
              padding: const EdgeInsets.all(5),
              margin: const EdgeInsets.only(right: 20, bottom: 10),
              height: 30,
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 3,
                      offset: const Offset(5, 3), // changes position of shadow
                    ),
                  ]),
              width: double.maxFinite,
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  categoryName,
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
