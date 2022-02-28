import 'package:auto_route/auto_route.dart';
import 'package:shopify_manager/presentation/core/debug_page.dart';
import 'package:shopify_manager/presentation/register_shop/debug_location_page.dart';
import 'package:shopify_manager/presentation/register_shop/opening_hours/opening_hours_page.dart';
import 'package:shopify_manager/presentation/register_shop/shop_form_page.dart';
import 'package:shopify_manager/presentation/sign_in/sign_in_page.dart';
import 'package:shopify_manager/presentation/sign_in/sign_up_page.dart';
import 'package:shopify_manager/presentation/splash/splash_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    //TODO IMPLEMENT DEBUG PAGE LOL
    AutoRoute(
      page: DebugPage,
    ),
    AutoRoute(
      page: SplashPage,
    ),
    AutoRoute(
      page: DebugLocationPage,
    ),
    AutoRoute(
      page: SignInPage,
    ),
    AutoRoute(
      page: ShopFormPage,
      initial: true,
    ),
    AutoRoute(
      page: SignUpPage,
    ),
    AutoRoute(
      page: OpeningHoursPage,
    )
  ],
)
class $AppRouter {}
