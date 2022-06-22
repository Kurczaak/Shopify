import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/kt.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';
import 'package:shopify_client/application/product_watcher/product_watcher_bloc.dart';
import 'package:shopify_client/injection.dart';
import 'package:shopify_domain/core.dart';
import 'package:shopify_domain/product.dart';
import 'package:shopify_domain/shop.dart';
import 'package:shopify_presentation/core/shopify_appbar.dart';
import 'package:shopify_presentation/core/shopify_progress_indicator.dart';
import 'debug_searchbar.dart';

class DebugShopPage extends StatelessWidget {
  const DebugShopPage({Key? key, required this.shop}) : super(key: key);
  final Shop shop;
  @override
  Widget build(BuildContext context) {
    final ssb = DebugShopifySearchBar.of(context);
    return BlocProvider<ProductWatcherBloc>(
        create: (context) => getIt<ProductWatcherBloc>()
          ..add(ProductWatcherEvent.initialize(shop: shop)),
        child: BlocBuilder<ProductWatcherBloc, ProductWatcherState>(
          builder: (context, state) => Scaffold(
              appBar: ShopifyAppBar(
                appBar: AppBar(),
                onTapBack: () {
                  if (state.categoryOption.isNone() &&
                      state.products.isNone()) {
                    context.router.pop();
                  } else {
                    (_) => context.read<ProductWatcherBloc>().add(
                        const ProductWatcherEvent.clearCategoryAndProducts());
                  }
                },
                title: state.categoryOption.fold(
                    () => shop.shopName.getOrCrash(),
                    (category) => category.getOrCrash().stringify),
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
                searchHistory: const ['xd', 'dupa', 'loooasdasdasd'],
                child: state.isLoading
                    ? const Center(
                        child: ShopifyProgressIndicator(),
                      )
                    : state.products.fold(() {
                        return state.categoryOption.isSome()
                            ? const Text('No products found')
                            : CategoriesGridView(onAllProductsTap: () {
                                context.read<ProductWatcherBloc>().add(
                                    const ProductWatcherEvent
                                        .watchAllProductsSelected());
                              }, onTap: (int index) {
                                context.read<ProductWatcherBloc>().add(
                                    ProductWatcherEvent.categoryChosen(
                                        category: Category(
                                            Categories.values[index])));
                              });
                      }, (products) {
                        return products.isEmpty()
                            ? const Text('No products found')
                            : ProductsGridView(products: products, shop: shop);
                      }),
              )),
        ));
  }
}

class ProductsGridView extends StatelessWidget {
  const ProductsGridView({Key? key, required this.products, required this.shop})
      : super(key: key);
  final KtList<PricedProduct> products;
  final Shop shop;

  @override
  Widget build(BuildContext context) {
    final fsb = FloatingSearchBar.of(context);
    final height = fsb != null ? fsb.style.height : 0;
    final margins = fsb != null ? fsb.style.margins.vertical : 0;
    return GridView.builder(
        padding: const EdgeInsets.only(top: 60),
        itemCount: products.size,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 2,
          mainAxisSpacing: 2,
          childAspectRatio: .8,
        ),
        itemBuilder: (BuildContext context, int index) {
          final product = products[index];
          return InkWell(
            onTap: () {
              print(product.productId);
            },
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
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        child: FittedBox(
                                          fit: BoxFit.contain,
                                          child: Text(
                                            product.name.getOrCrash(),
                                            style: TextStyle(
                                              color: Theme.of(context)
                                                  .primaryColor,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              product.brand.getOrCrash(),
                                              style: TextStyle(
                                                  color: Theme.of(context)
                                                      .primaryColor,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              product.weight.stringifyOrCrash,
                                              style: const TextStyle(
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: FittedBox(
                                    fit: BoxFit.contain,
                                    child: Text(
                                      product.price.price
                                              .getOrCrash()
                                              .toStringAsFixed(2) +
                                          ' zł',
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Flexible(
                          fit: FlexFit.tight,
                          flex: 3,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Expanded(
                                child: FittedBox(
                                  fit: BoxFit.contain,
                                  child: Icon(
                                    Icons.add_shopping_cart,
                                    color: Theme.of(context).primaryColor,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),
                              Expanded(
                                child: FittedBox(
                                  fit: BoxFit.contain,
                                  child: Icon(
                                    Icons.favorite_border,
                                    color: Theme.of(context).colorScheme.error,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        });
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
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisSpacing: 5, crossAxisSpacing: 8),
        itemCount: Categories.values.length + 1,
        itemBuilder: (BuildContext context, index) {
          if (index == 0) {
            return InkWell(
              onTap: onAllProductsTap,
              child: const ListTile(
                  leading: Text('All products'), tileColor: Colors.amberAccent),
            );
          } else {
            index--;
            return InkWell(
              onTap: () => onTap(index),
              child: ListTile(
                  leading: Text(Categories.values[index].name),
                  tileColor: Colors.amberAccent),
            );
          }
        });
  }
}
