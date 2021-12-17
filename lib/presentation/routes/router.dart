import 'package:auto_route/auto_route.dart';
import 'package:shopify_client/presentation/sign_in/sign_in_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: SignInPage,
      initial: true,
      children: [],
    ),
  ],
)
class $AppRouter {}
