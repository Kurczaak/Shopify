import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/kt.dart';

import 'package:mocktail/mocktail.dart';
import 'package:shopify_client/application/auth/auth_bloc.dart';
import 'package:shopify_client/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:shopify_client/application/shop_picker/shop_picker_bloc.dart';
import 'package:shopify_client/domain/auth/i_auth_facade.dart';
import 'package:shopify_client/domain/core/i_location_facade.dart';
import 'package:shopify_client/domain/shop/i_shop_repository.dart';
import 'package:shopify_client/injection.dart';
import 'package:shopify_domain/core/network/network_info.dart';
import 'package:shopify_presentation/shopify_presentation.dart';
import 'package:shopify_domain/auth/user.dart';
import 'package:shopify_domain/auth/value_objects.dart';
import 'package:shopify_domain/core.dart';
import 'package:shopify_domain/shop/shop.dart';
import 'package:shopify_domain/shop/time/week.dart';
import 'package:shopify_domain/shop/value_objects.dart';

import 'core/app_widget.dart';

class MockShop extends Mock implements Shop {}

class MockAuthFacade extends Mock implements IAuthFacade {}

class MockShopRepository extends Mock implements IShopRepository {}

class MockLocationFacade extends Mock implements ILocationFacade {}

class MockNetworkInfo extends Mock implements NetworkInfo {}

void main() {
  final testWidget = createWidgetUnderTest();
  const emailString = 'test@shopify.com';
  const passwordString = 'TestPassword123!@#';
  final email = EmailAddress(emailString);
  final password = Password(passwordString);
  final tUser = ShopifyUser(id: UniqueId());
  final tLocation = Location.empty();

  final tShopId = UniqueId();
  final tShop = Shop(
      address: Address(
          apartmentNumber: AddressNumber('1'),
          city: CityName('ShopCity'),
          postalCode: PostalCode('11-222'),
          streetName: StreetName('ShopStreet'),
          streetNumber: StreetNumber('10')),
      id: tShopId,
      location: tLocation,
      logoUrl: ShopifyUrl(
          'https://firebasestorage.googleapis.com/v0/b/shopify-app-6d29d.appspot.com/o/images%2Fshop_logos%2F12e245f0-a631-11ec-a952-bbb58ef08f1b?alt=media&token=498610e6-cc55-4125-a9f5-300b02e4a667'),
      shopName: ShopName('Test Shop'),
      workingWeek: Week.empty());

  // Domain layer
  final mockAuthFacade = MockAuthFacade();
  final mockShopRepository = MockShopRepository();
  final mockLocationFacade = MockLocationFacade();
  final mockNetworkInfo = MockNetworkInfo();

  // Setup
  void setUpUserLoggedOut() {
    when(() => mockAuthFacade.getSignedInUser())
        .thenAnswer((_) async => none());
  }

  void setUpAuthFacadeLogin() {
    when(() => mockAuthFacade.getSignedInUser())
        .thenAnswer((_) async => some(tUser));
    when(() => mockAuthFacade.signInWithEmailAndPassword(
        emailAddress: email,
        password: password)).thenAnswer((_) async => right(unit));
  }

  void setUpShopRepository() {
    when(() => mockShopRepository.watchNearby(tLocation, NonnegativeNumber(.5)))
        .thenAnswer((invocation) => Stream.fromIterable([
              right(KtList.from([tShop]))
            ]));
  }

  void setUpLocationFacade() {
    when(() => mockLocationFacade.getCurrentLocation())
        .thenAnswer((_) async => right(tLocation));
  }

  // Blocs
  final authBloc = AuthBloc(mockAuthFacade);
  final signInFormBloc = SignInFormBloc(mockAuthFacade, authBloc);
  final shopPickerBloc = ShopPickerBloc(
      shopRepository: mockShopRepository,
      location: mockLocationFacade,
      networkInfo: mockNetworkInfo);

  getIt.registerFactory<AuthBloc>(() => authBloc);
  getIt.registerFactory<SignInFormBloc>(() => signInFormBloc);
  getIt.registerFactory<ShopPickerBloc>(() => shopPickerBloc);

  testWidgets('should login and view shop details',
      (WidgetTester tester) async {
    setUpUserLoggedOut();
    setUpLocationFacade();
    setUpShopRepository();
    await tester.pumpWidget(testWidget);
    // skip splash page animation
    await tester.pump();
    await tester.pump(const Duration(seconds: 5));
    await tester.pumpAndSettle();
    // enter email

    await tester.enterText(
        find.byKey(const Key('email-text-form-field')), emailString);
    await tester.pump();
    // enter password
    await tester.enterText(
        find.byKey(const Key('password-text-form-field')), passwordString);
    await tester.pump();
    setUpAuthFacadeLogin();
    await tester.testTextInput.receiveAction(TextInputAction.done);
    await tester.pump();
    await tester
        .tap(find.byKey(const Key('log-in-button'), skipOffstage: false));
    await tester.pumpAndSettle();
    // Find shop
    await tester.pump(const Duration(milliseconds: 200));
    await tester.tap(find.byKey(Key(tShopId.getOrCrash())));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const Key('shop-details-button')));

    await tester.pumpAndSettle();
    expect(find.byType(ShopPreviewDialog), findsOneWidget);
  });
}
