import 'package:auto_route/auto_route.dart';
import 'package:shopify_manager/presentation/debug_dashboard_page.dart';
import 'package:shopify_manager/presentation/debug_page.dart';
import 'package:shopify_manager/presentation/product/scanner/scanner_widget.dart';
import 'package:shopify_manager/presentation/register_shop/logo_picker/logo_picker_page.dart';
import 'package:shopify_manager/presentation/register_shop/registration_wrapping_page.dart';
import 'package:shopify_manager/presentation/register_shop/location_picker/location_picker_page.dart';
import 'package:shopify_manager/presentation/register_shop/opening_hours/opening_hours_page.dart';
import 'package:shopify_manager/presentation/register_shop/shop_form/shop_form_page.dart';
import 'package:shopify_manager/presentation/register_shop/recap/registration_recap_page.dart';
import 'package:shopify_manager/presentation/sign_in/sign_in_page.dart';
import 'package:shopify_manager/presentation/sign_in/sign_up_page.dart';
import 'package:shopify_manager/presentation/splash/splash_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: DebugPage,
      //initial: true,
    ),
    AutoRoute(
      page: SplashPage,
    ),
    AutoRoute(
      page: SignInPage,
    ),
    AutoRoute(
      page: SignUpPage,
    ),
    AutoRoute(
      page: DebugDashboardPage,
    ),
    AutoRoute(
      page: ScannerWidget,
      initial: true,
    ),
    AutoRoute(
      page: RegistrationWrappingPage,
      children: [
        AutoRoute(
          page: ShopFormPage,
          initial: true,
        ),
        AutoRoute(
          page: LocationPickerPage,
        ),
        AutoRoute(
          page: OpeningHoursPage,
        ),
        AutoRoute(
          page: LogoPickerPage,
        ),
        AutoRoute(
          page: RegistrationRecapPage,
        ),
      ],
    ),
  ],
)
class $AppRouter {}

// class AuthGuard extends AutoRouteGuard {
//   @override
//   void onNavigation(NavigationResolver resolver, StackRouter router) {
//     // the navigation is paused until resolver.next() is called with either
//     // true to resume/continue navigation or false to abort navigation

//     final _authBloc = getIt<AuthBloc>();
//     _authBloc.add(AuthEvent.authCheckRequested())
//     if (authenitcated) {
//       // if user is authenticated we continue
//       resolver.next(true);
//     } else {
//       // we redirect the user to our login page
//       router.push(LoginRoute(onResult: (success) {
//         // if success == true the navigation will be resumed
//         // else it will be aborted
//         resolver.next(success);
//       }));
//     }
//   }
// }
