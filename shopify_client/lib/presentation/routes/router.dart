import 'package:auto_route/auto_route.dart';
import 'package:shopify_client/home_page.dart';
import 'package:shopify_client/presentation/best_offers/best_offers_page.dart';
import 'package:shopify_client/presentation/cart/cart_page.dart';
import 'package:shopify_client/presentation/core/debug_page.dart';
import 'package:shopify_client/presentation/favourites/favourites_page.dart';
import 'package:shopify_client/presentation/product/product_preview_page.dart';
import 'package:shopify_client/presentation/shop/shop_products_browser_page.dart';
import 'package:shopify_client/presentation/routes/auth_wrapper.dart';
import 'package:shopify_client/presentation/shop_picker_page.dart';
import 'package:shopify_client/presentation/sign_in/sign_in_page.dart';
import 'package:shopify_client/presentation/sign_in/sign_up_page.dart';
import 'package:shopify_client/presentation/splash/splash_page.dart';
import 'package:shopify_client/presentation/your_lists/your_lists_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: AuthWrapperPage, initial: true, children: [
      AutoRoute(path: 'home', name: 'homeRouter', page: HomePage, children: [
        AutoRoute(
            initial: true,
            path: 'shopPicker',
            name: 'shopPickerRouter',
            page: EmptyRouterPage,
            children: [
              AutoRoute(page: ShopPickerPage, initial: true),
              AutoRoute(
                path: 'shops/:shopId',
                page: ShopProductsBrowserPage,
              ),
              AutoRoute(
                path: 'products/:productId',
                page: ProductPreviewPage,
              ),
            ]),
        AutoRoute(
            path: 'cart',
            name: 'cartRouter',
            page: EmptyRouterPage,
            children: [
              AutoRoute(
                initial: true,
                page: CartPage,
              ),
            ]),
        AutoRoute(
            path: 'bestOffers',
            name: 'bestOffersRouter',
            page: EmptyRouterPage,
            children: [AutoRoute(page: BestOffersPage)]),
        AutoRoute(
            path: 'favourites',
            name: 'favouritesRouter',
            page: EmptyRouterPage,
            children: [AutoRoute(page: FavouritesPage)]),
        AutoRoute(
            path: 'yourLists',
            name: 'yourListsRouter',
            page: EmptyRouterPage,
            children: [AutoRoute(page: YourListsPage)]),
        AutoRoute(
          page: DebugPage,
        ),
        AutoRoute(
          page: SignInPage,
        ),
        AutoRoute(
          page: SignUpPage,
        ),
      ])
    ]),
    AutoRoute(
      page: SplashPage,
    ),
  ],
)
class $AppRouter {}
