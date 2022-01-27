import 'package:flutter/material.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shopify_manager/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:shopify_manager/application/shopping/shop_form/shop_form_bloc.dart';
import 'package:shopify_manager/domain/auth/auth_failure.dart';
import 'package:shopify_manager/domain/auth/i_auth_facade.dart';
import 'package:shopify_manager/domain/auth/value_objects.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:shopify_manager/domain/core/failures.dart';
import 'package:shopify_manager/domain/core/value_objects.dart';
import 'package:shopify_manager/domain/shopping/failures.dart';
import 'package:shopify_manager/domain/shopping/i_shop_repository.dart';
import 'package:shopify_manager/domain/shopping/shop.dart';
import 'package:shopify_manager/domain/shopping/shop_failure.dart';
import 'package:shopify_manager/domain/shopping/value_objects.dart';
import 'shop_form_bloc_test.mocks.dart';
import 'package:meta/meta.dart';

@GenerateMocks([IShopRepository])
void main() {
  MockIShopRepository mockIShopRepository = MockIShopRepository();
  ShopFormBloc shopFormBloc = ShopFormBloc(mockIShopRepository);
  ShopFormState initialState = shopFormBloc.state;

  setUp(() {
    mockIShopRepository = MockIShopRepository();
    shopFormBloc = ShopFormBloc(mockIShopRepository);
    initialState = shopFormBloc.state;
  });

  group('name changed', () {
    String correctShopNameStr = 'Sklep Spożywczy ABC';

    testStateDataIntegrity(
      'should return a state with changed shop name',
      event: ShopFormEvent.nameChanged(correctShopNameStr),
      updatedShop:
          initialState.shop.copyWith(shopName: ShopName(correctShopNameStr)),
    );

    testSettingSaveFailureOrSuccessOptionToNone(
      'should set saveFailureOrSuccessOption back to none()',
      event: ShopFormEvent.nameChanged(correctShopNameStr),
      updatedShop:
          initialState.shop.copyWith(shopName: ShopName(correctShopNameStr)),
    );
  });

  group('street changed', () {
    String correctStreetNameStr = 'Chełmońskiego';

    testStateDataIntegrity(
      'should return a state with changed street name',
      event: ShopFormEvent.streetChanged(correctStreetNameStr),
      updatedShop: initialState.shop
          .copyWith(streetName: StreetName(correctStreetNameStr)),
    );

    testSettingSaveFailureOrSuccessOptionToNone(
      'should set saveFailureOrSuccessOption back to none()',
      event: ShopFormEvent.streetChanged(correctStreetNameStr),
      updatedShop: initialState.shop
          .copyWith(streetName: StreetName(correctStreetNameStr)),
    );
  });

  group('city changed', () {
    String correctCityNameStr = 'Łowicz';

    testStateDataIntegrity(
      'should return a state with changed city name',
      event: ShopFormEvent.cityChanged(correctCityNameStr),
      updatedShop:
          initialState.shop.copyWith(city: CityName(correctCityNameStr)),
    );

    testSettingSaveFailureOrSuccessOptionToNone(
      'should set saveFailureOrSuccessOption back to none()',
      event: ShopFormEvent.cityChanged(correctCityNameStr),
      updatedShop:
          initialState.shop.copyWith(city: CityName(correctCityNameStr)),
    );
  });

  group('postal code changed', () {
    String correctPostalCodeStr = '99-400';

    testStateDataIntegrity(
      'should return a state with changed postal code',
      event: ShopFormEvent.postalCodeChanged(correctPostalCodeStr),
      updatedShop: initialState.shop
          .copyWith(postalCode: PostalCode(correctPostalCodeStr)),
    );

    testSettingSaveFailureOrSuccessOptionToNone(
      'should set saveFailureOrSuccessOption back to none()',
      event: ShopFormEvent.postalCodeChanged(correctPostalCodeStr),
      updatedShop: initialState.shop
          .copyWith(postalCode: PostalCode(correctPostalCodeStr)),
    );
  });

  group('saved ', () {
    MockIShopRepository mockIShopRepository = MockIShopRepository();
    ShopFormBloc shopFormBloc = ShopFormBloc(mockIShopRepository);
    ShopFormState initialState = shopFormBloc.state;
    blocTest(
      'should emit saving and failure states when trying to save a shop with incorrect data',
      build: () {
        return shopFormBloc;
      },
      act: (ShopFormBloc bloc) => bloc.add(const ShopFormEvent.saved()),
      expect: () => [
        initialState.copyWith(
            isSaving: true,
            showErrorMessages: false,
            saveFailureOrSuccessOption: none()),
        initialState.copyWith(
            isSaving: false,
            showErrorMessages: true,
            saveFailureOrSuccessOption: none()),
      ],
    );

    ShopFormBloc shopFormBloc2 = ShopFormBloc(mockIShopRepository);
    ShopFormState initialState2 = shopFormBloc.state;
    final shop = Shop(
        shopName: ShopName('Sklep Spożywczy ABC'),
        city: CityName('Łowicz'),
        postalCode: PostalCode('99-400'),
        streetName: StreetName('Chełmońskiego'),
        id: initialState.shop.id);
    blocTest(
      'should emit saving and saved states when saving a shop with correct data',
      build: () {
        return shopFormBloc2;
      },
      setUp: () => when(mockIShopRepository.create(any))
          .thenAnswer((_) async => right(unit)),
      act: (ShopFormBloc bloc) => bloc.add(const ShopFormEvent.saved()),
      seed: () => initialState2.copyWith(shop: shop),
      expect: () => [
        initialState2.copyWith(
            shop: shop,
            isSaving: true,
            showErrorMessages: false,
            saveFailureOrSuccessOption: none()),
        initialState2.copyWith(
            shop: shop,
            isSaving: false,
            showErrorMessages: false,
            saveFailureOrSuccessOption: some(right(unit))),
      ],
    );
    blocTest(
      'should call IShopRepository.create',
      build: () {
        return shopFormBloc2;
      },
      setUp: () => when(mockIShopRepository.create(any))
          .thenAnswer((_) async => right(unit)),
      act: (ShopFormBloc bloc) => bloc.add(const ShopFormEvent.saved()),
      seed: () => initialState2.copyWith(shop: shop),
      verify: (bloc) => verify(mockIShopRepository.create(any)),
    );
  });
}

@isTest
void testStateDataIntegrity(
  description, {
  required ShopFormEvent event,
  required Shop updatedShop,
}) {
  MockIShopRepository mockIShopRepository = MockIShopRepository();
  ShopFormBloc shopFormBloc = ShopFormBloc(mockIShopRepository);
  ShopFormState initialState = shopFormBloc.state;
  blocTest(
    description,
    build: () {
      return shopFormBloc;
    },
    act: (ShopFormBloc bloc) => bloc.add(event),
    expect: () => [
      initialState.copyWith(isSaving: true),
      initialState.copyWith(
        isSaving: false,
        shop: updatedShop.copyWith(id: initialState.shop.id),
      )
    ],
  );
}

@isTest
void testSettingSaveFailureOrSuccessOptionToNone(
  String description, {
  required ShopFormEvent event,
  required Shop updatedShop,
}) {
  MockIShopRepository mockIShopRepository = MockIShopRepository();
  ShopFormBloc shopFormBloc = ShopFormBloc(mockIShopRepository);
  ShopFormState initialState = shopFormBloc.state;
  blocTest(
    description,
    build: () {
      return shopFormBloc;
    },
    seed: () => initialState.copyWith(
        saveFailureOrSuccessOption: some(left(const ShopFailure.unexpected()))),
    act: (ShopFormBloc bloc) => bloc.add(event),
    expect: () => [
      initialState.copyWith(
          shop: updatedShop.copyWith(id: initialState.shop.id),
          saveFailureOrSuccessOption: none())
    ],
  );
}
