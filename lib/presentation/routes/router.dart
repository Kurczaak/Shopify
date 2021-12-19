import 'package:auto_route/auto_route.dart';
import 'package:shopify_client/presentation/core/debug_page.dart';
import 'package:shopify_client/presentation/home_page.dart';
import 'package:shopify_client/presentation/sign_in/sign_in_page.dart';
import 'package:shopify_client/presentation/splash/splash_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: DebugPage,
      initial: true,
    ),
    AutoRoute(
      page: SplashPage,
    ),
    AutoRoute(
      page: SignInPage,
    ),
    AutoRoute(
      page: HomePage,
    ),
  ],
)
class $AppRouter {}
