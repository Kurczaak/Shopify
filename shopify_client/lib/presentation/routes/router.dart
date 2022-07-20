import 'package:auto_route/auto_route.dart';
import 'package:shopify_client/home_page.dart';
import 'package:shopify_client/presentation/best_offers/best_offers_page.dart';
import 'package:shopify_client/presentation/cart/cart_page.dart';
import 'package:shopify_client/presentation/core/debug_page.dart';
import 'package:shopify_client/presentation/favourites/favourites_page.dart';
import 'package:shopify_client/presentation/order/order_page.dart';
import 'package:shopify_client/presentation/order/user_orders_page.dart';
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
    AutoRoute(page: AuthWrapperPage, children: [
      AutoRoute(
        page: UserOrdersPage,
      ),
      AutoRoute(page: OrderPage),
      AutoRoute(path: 'home', name: 'homeRouter', page: HomePage, children: [
        AutoRoute(
            initial: true,
            name: 'shopPickerRouter',
            page: EmptyRouterPage,
            children: [
              AutoRoute(
                page: ShopPickerPage,
                initial: true,
              ),
              AutoRoute(
                path: ':title',
                page: ShopProductsBrowserPage,
              ),
              AutoRoute(
                path: ':title',
                page: ProductPreviewPage,
              ),
            ]),
        AutoRoute(
          path: 'Cart',
          name: 'cartRouter',
          page: CartPage,
        ),
        AutoRoute(
            path: 'Best Offers',
            name: 'bestOffersRouter',
            page: EmptyRouterPage,
            children: [AutoRoute(page: BestOffersPage)]),
        AutoRoute(
          path: 'Favourites',
          name: 'favouritesRouter',
          page: FavouritesPage,
        ),
        AutoRoute(
            path: 'Your Lists',
            name: 'yourListsRouter',
            page: EmptyRouterPage,
            children: [AutoRoute(page: YourListsPage)]),
        AutoRoute(
          page: DebugPage,
        ),
      ]),
      AutoRoute(
        page: SignInPage,
      ),
      AutoRoute(
        page: SignUpPage,
      ),
    ]),
    AutoRoute(
      page: SplashPage,
      initial: true,
    ),
  ],
)
class $AppRouter {}
