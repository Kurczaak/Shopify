import 'package:auto_route/auto_route.dart';
import 'package:shopify_client/presentation/core/debug_page.dart';
import 'package:shopify_client/presentation/debug.dart';
import 'package:shopify_client/presentation/routes/auth_wrapper.dart';
import 'package:shopify_client/presentation/shop_picker_page.dart';
import 'package:shopify_client/presentation/sign_in/sign_in_page.dart';
import 'package:shopify_client/presentation/sign_in/sign_up_page.dart';
import 'package:shopify_client/presentation/splash/splash_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: AuthWrapperPage, children: [
      AutoRoute(
        page: ShopPickerPage,
      ),
      AutoRoute(
        page: ShopPickerPage,
      ),
      AutoRoute(
        page: DebugPage,
      ),
      AutoRoute(
        page: SignInPage,
      ),
      AutoRoute(
        page: SignUpPage,
      ),
    ]),
    AutoRoute(
      page: SplashPage,
    ),
    AutoRoute(
      page: DebugShopPage,
      initial: true,
    ),
  ],
)
class $AppRouter {}
