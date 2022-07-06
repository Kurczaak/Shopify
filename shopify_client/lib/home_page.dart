import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:shopify_client/injection.dart';
import 'package:shopify_client/presentation/routes/router.gr.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:shopify_presentation/core/shopify_appbar.dart';

import 'application/auth/auth_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
        drawer: Drawer(
          child: ListView(children: [
            Card(
              child: TextButton(
                  onPressed: () {
                    getIt<AuthBloc>().add(const AuthEvent.signedOut());
                  },
                  child: const Text('log out')),
            )
          ]),
        ),
        appBarBuilder: (context, tabsRouter) => ShopifyAppBar(
              title: context.topRoute.pathParams.getString('title', 'Shopify'),
              appBar: AppBar(),
              onTapBack: tabsRouter.canPopSelfOrChildren
                  ? () async {
                      context.router.popTop();
                    }
                  : null,
            ),
        resizeToAvoidBottomInset: true,
        backgroundColor: Colors.white,
        routes: const [
          BestOffersRouter(),
          FavouritesRouter(),
          ShopPickerRouter(),
          CartRouter(),
          YourListsRouter(),
        ],
        bottomNavigationBuilder: (_, tabsRouter) {
          return SalomonBottomBar(
            currentIndex: tabsRouter.activeIndex,
            onTap: tabsRouter.setActiveIndex,
            selectedItemColor: Theme.of(context).primaryColor,
            unselectedItemColor: Theme.of(context).colorScheme.onSurface,
            items: [
              SalomonBottomBarItem(
                icon: const Icon(
                  Icons.discount,
                  size: 25,
                ),
                title: const Text('Best Offers'),
              ),
              SalomonBottomBarItem(
                icon: const Icon(
                  Icons.favorite,
                  size: 25,
                ),
                title: const Text('Favourites'),
              ),
              SalomonBottomBarItem(
                icon: const Icon(
                  Icons.home,
                  size: 25,
                ),
                title: const Text('Home'),
              ),
              SalomonBottomBarItem(
                icon: const Icon(
                  Icons.shopping_cart,
                  size: 25,
                ),
                title: const Text('Cart'),
              ),
              SalomonBottomBarItem(
                icon: const Icon(
                  Icons.receipt_long,
                  size: 25,
                ),
                title: const Text('Lists'),
              ),
            ],
          );
        });
  }
}
