import 'package:auto_route/auto_route.dart';
import 'package:shopify_manager/presentation/core/debug_page.dart';
import 'package:shopify_manager/presentation/home_page.dart';
import 'package:shopify_manager/presentation/sign_in/sign_in_page.dart';
import 'package:shopify_manager/presentation/sign_in/sign_up_page.dart';
import 'package:shopify_manager/presentation/splash/splash_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: DebugPage,
    ),
    AutoRoute(
      page: SplashPage,
      initial: true,
    ),
    AutoRoute(
      page: SignInPage,
    ),
    AutoRoute(
      page: HomePage,
    ),
    AutoRoute(
      page: SignUpPage,
    )
  ],
)
class $AppRouter {}
