import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopify_client/application/product_watcher/product_watcher_bloc.dart';
import 'package:shopify_client/injection.dart';
import 'package:shopify_domain/core.dart';
import 'package:shopify_domain/product.dart';
import 'package:shopify_domain/shop.dart';
import 'package:shopify_presentation/core/shopify_appbar.dart';
import 'package:shopify_presentation/core/shopify_search_bar.dart';

class DebugShopPage extends StatelessWidget {
  const DebugShopPage({Key? key, required this.shop}) : super(key: key);
  final Shop shop;
  @override
  Widget build(BuildContext context) {
    final ssb = ShopifySearchBar.of(context);
    return BlocProvider<ProductWatcherBloc>(
        create: (context) => getIt<ProductWatcherBloc>()
          ..add(ProductWatcherEvent.initialize(shop: shop)),
        child: BlocBuilder<ProductWatcherBloc, ProductWatcherState>(
          builder: (context, state) => Scaffold(
              appBar: ShopifyAppBar(
                appBar: AppBar(),
                onTapBack: () {
                  context.read<ProductWatcherBloc>().state.categoryOption.fold(
                      () => context.router.pop(),
                      (_) => context
                          .read<ProductWatcherBloc>()
                          .add(const ProductWatcherEvent.clearCategory()));
                },
                title: state.categoryOption.fold(() => 'Search for products',
                    (category) => category.getOrCrash().stringify),
              ),
              body: ShopifySearchBar(
                onQueryChanged: (_) {},
                onSubmitted: (_) {},
                onHistoryChanged: (_) {},
                searchHistory: const ['xd', 'dupa', 'loooasdasdasd'],
                child: Padding(
                  padding: const EdgeInsets.only(top: 70),
                  child: state.categoryOption.fold(
                      () => GridView.builder(
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    mainAxisSpacing: 5,
                                    crossAxisSpacing: 8),
                            itemCount: Categories.values.length,
                            itemBuilder: (BuildContext context, index) =>
                                InkWell(
                              onTap: () {
                                context.read<ProductWatcherBloc>().add(
                                    ProductWatcherEvent.categoryChosen(
                                        category: Category(
                                            Categories.values[index])));
                              },
                              child: ListTile(
                                  leading: Text(Categories.values[index].name),
                                  tileColor: Colors.amberAccent),
                            ),
                          ),
                      (category) => ListView.builder(
                            itemCount: state.products.size,
                            itemBuilder: (BuildContext context, int index) =>
                                ListTile(
                                    leading: Text(state.products[index].name
                                        .getOrCrash()),
                                    tileColor: Colors.amberAccent),
                          )),
                ),
              )),
        ));
  }
}
