import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shopify_manager/application/shopping/shop_form/shop_form_bloc.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:shopify_manager/domain/core/address.dart';
import 'package:shopify_manager/domain/core/location.dart';
import 'package:shopify_manager/domain/core/value_objects.dart';
import 'package:shopify_manager/domain/shopping/i_shop_repository.dart';
import 'package:shopify_manager/domain/shopping/shop.dart';
import 'package:shopify_manager/domain/shopping/shop_failure.dart';
import 'package:shopify_manager/domain/shopping/time/week.dart';
import 'package:shopify_manager/domain/shopping/value_objects.dart';
import 'shop_form_bloc_test.mocks.dart';
import 'package:meta/meta.dart';

@GenerateMocks([IShopRepository])
void main() {
  MockIShopRepository mockIShopRepository = MockIShopRepository();
  ShopFormBloc shopFormBloc = ShopFormBloc(mockIShopRepository);
  ShopFormState initialState = shopFormBloc.state;

  // Address strings
  const streetNameStr = "Street Name";
  const cityNameStr = "Łowicz";
  const postalCodeStr = "99-400";
  const apartmentNumberStr = '';
  const streetNumberStr = '12A';
  const shopNameStr = 'Sklep Spożywczy ABC';

  final tShop = Shop(
    shopName: ShopName(shopNameStr),
    address: Address(
      apartmentNumber: AddressNumber(apartmentNumberStr),
      streetNumber: StreetNumber(streetNumberStr),
      city: CityName(cityNameStr),
      postalCode: PostalCode(postalCodeStr),
      streetName: StreetName(streetNameStr),
    ),
    id: initialState.shop.id,
    workingWeek: Week.empty(),
    location: Location.empty(),
    logoUrl: 'https://www.example.com',
  );

  setUp(() {
    mockIShopRepository = MockIShopRepository();
    shopFormBloc = ShopFormBloc(mockIShopRepository);
    initialState = shopFormBloc.state;
  });

  group('nameChanged', () {
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

  group('streetNameChanged', () {
    String correctStreetNameStr = 'Chełmońskiego';

    testStateDataIntegrity(
      'should return a state with changed street name',
      event: ShopFormEvent.streetNameChanged(correctStreetNameStr),
      updatedShop: initialState.shop.copyWith(
          address: initialState.shop.address
              .copyWith(streetName: StreetName(correctStreetNameStr))),
    );

    testSettingSaveFailureOrSuccessOptionToNone(
      'should set saveFailureOrSuccessOption back to none()',
      event: ShopFormEvent.streetNameChanged(correctStreetNameStr),
      updatedShop: initialState.shop.copyWith(
          address: initialState.shop.address
              .copyWith(streetName: StreetName(correctStreetNameStr))),
    );
  });

  group('streetNumberChanged', () {
    String correctStreetNumberStr = '11A';

    testStateDataIntegrity(
      'should return a state with changed street number',
      event: ShopFormEvent.streetNumberChanged(correctStreetNumberStr),
      updatedShop: initialState.shop.copyWith(
          address: initialState.shop.address
              .copyWith(streetNumber: StreetNumber(correctStreetNumberStr))),
    );

    testSettingSaveFailureOrSuccessOptionToNone(
      'should set saveFailureOrSuccessOption back to none()',
      event: ShopFormEvent.streetNumberChanged(correctStreetNumberStr),
      updatedShop: initialState.shop.copyWith(
          address: initialState.shop.address
              .copyWith(streetNumber: StreetNumber(correctStreetNumberStr))),
    );
  });
  group('apartmentNumberChanged', () {
    String correctApartmentNumberStr = '11A';

    testStateDataIntegrity(
      'should return a state with changed apartment number',
      event: ShopFormEvent.apartmentNumberChanged(correctApartmentNumberStr),
      updatedShop: initialState.shop.copyWith(
          address: initialState.shop.address.copyWith(
              apartmentNumber: AddressNumber(correctApartmentNumberStr))),
    );

    testSettingSaveFailureOrSuccessOptionToNone(
      'should set saveFailureOrSuccessOption back to none()',
      event: ShopFormEvent.apartmentNumberChanged(correctApartmentNumberStr),
      updatedShop: initialState.shop.copyWith(
          address: initialState.shop.address.copyWith(
              apartmentNumber: AddressNumber(correctApartmentNumberStr))),
    );
  });

  group('cityChanged', () {
    String correctCityNameStr = 'Łowicz';

    testStateDataIntegrity(
      'should return a state with changed city name',
      event: ShopFormEvent.cityChanged(correctCityNameStr),
      updatedShop: initialState.shop.copyWith(
          address: initialState.shop.address
              .copyWith(city: CityName(correctCityNameStr))),
    );

    testSettingSaveFailureOrSuccessOptionToNone(
      'should set saveFailureOrSuccessOption back to none()',
      event: ShopFormEvent.cityChanged(correctCityNameStr),
      updatedShop: initialState.shop.copyWith(
          address: initialState.shop.address
              .copyWith(city: CityName(correctCityNameStr))),
    );
  });

  group('postalCodeChanged', () {
    String correctPostalCodeStr = '99-400';

    testStateDataIntegrity(
      'should return a state with changed postal code',
      event: ShopFormEvent.postalCodeChanged(correctPostalCodeStr),
      updatedShop: initialState.shop.copyWith(
          address: initialState.shop.address
              .copyWith(postalCode: PostalCode(correctPostalCodeStr))),
    );

    testSettingSaveFailureOrSuccessOptionToNone(
      'should set saveFailureOrSuccessOption back to none()',
      event: ShopFormEvent.postalCodeChanged(correctPostalCodeStr),
      updatedShop: initialState.shop.copyWith(
          address: initialState.shop.address
              .copyWith(postalCode: PostalCode(correctPostalCodeStr))),
    );
  });

  group('saved ', () {
    MockIShopRepository mockIShopRepository = MockIShopRepository();
    ShopFormBloc shopFormBloc = ShopFormBloc(mockIShopRepository);
    ShopFormState initialState = shopFormBloc.state;
    testEmptyFormField(
        'should emit saving and failure states when trying to save a shop with an empty shopName field',
        bloc: ShopFormBloc(mockIShopRepository),
        seed: initialState.copyWith(
            shop: tShop.copyWith(shopName: ShopName(''))));
    testEmptyFormField(
        'should emit saving and failure states when trying to save a shop with an empty cityName field',
        bloc: ShopFormBloc(mockIShopRepository),
        seed: initialState.copyWith(
            shop: tShop.copyWith(
                address: tShop.address.copyWith(city: CityName('')))));

    testEmptyFormField(
        'should emit saving and failure states when trying to save a shop with an empty streetName field',
        bloc: ShopFormBloc(mockIShopRepository),
        seed: initialState.copyWith(
            shop: tShop.copyWith(
                address: tShop.address.copyWith(streetName: StreetName('')))));
    testEmptyFormField(
        'should emit saving and failure states when trying to save a shop with an empty streetNumber field',
        bloc: ShopFormBloc(mockIShopRepository),
        seed: initialState.copyWith(
            shop: tShop.copyWith(
                address:
                    tShop.address.copyWith(streetNumber: StreetNumber('')))));
    testEmptyFormField(
        'should emit saving and failure states when trying to save a shop with an empty postalCode field',
        bloc: ShopFormBloc(mockIShopRepository),
        seed: initialState.copyWith(
            shop: tShop.copyWith(
                address: tShop.address.copyWith(postalCode: PostalCode('')))));

    ShopFormState emptyApartmentNumberState = initialState.copyWith(
        shop: tShop.copyWith(
            address:
                tShop.address.copyWith(apartmentNumber: AddressNumber(''))));
    blocTest(
      'should emit saving and saved states when saving a shop with an empty apartmentNumber field',
      build: () {
        return ShopFormBloc(mockIShopRepository);
      },
      setUp: () => when(mockIShopRepository.create(any))
          .thenAnswer((_) async => right(unit)),
      act: (ShopFormBloc bloc) => bloc.add(const ShopFormEvent.saved()),
      seed: () => emptyApartmentNumberState,
      expect: () => [
        emptyApartmentNumberState.copyWith(
            shop: tShop,
            isSaving: true,
            showErrorMessages: false,
            saveFailureOrSuccessOption: none()),
        emptyApartmentNumberState.copyWith(
            shop: tShop,
            isSaving: false,
            showErrorMessages: false,
            saveFailureOrSuccessOption: some(right(unit))),
      ],
    );

    blocTest(
      'should emit saving and saved states when saving a shop with correct data',
      build: () {
        return ShopFormBloc(mockIShopRepository);
      },
      setUp: () => when(mockIShopRepository.create(any))
          .thenAnswer((_) async => right(unit)),
      act: (ShopFormBloc bloc) => bloc.add(const ShopFormEvent.saved()),
      seed: () => initialState.copyWith(shop: tShop),
      expect: () => [
        initialState.copyWith(
            shop: tShop,
            isSaving: true,
            showErrorMessages: false,
            saveFailureOrSuccessOption: none()),
        initialState.copyWith(
            shop: tShop,
            isSaving: false,
            showErrorMessages: false,
            saveFailureOrSuccessOption: some(right(unit))),
      ],
    );

    blocTest(
      'should emit state with failure option when saving a shop has not succeeded',
      build: () {
        return ShopFormBloc(mockIShopRepository);
      },
      setUp: () => when(mockIShopRepository.create(any))
          .thenAnswer((_) async => left(const ShopFailure.unableToUpdate())),
      act: (ShopFormBloc bloc) => bloc.add(const ShopFormEvent.saved()),
      seed: () => initialState.copyWith(shop: tShop),
      expect: () => [
        initialState.copyWith(
            shop: tShop,
            isSaving: true,
            showErrorMessages: false,
            saveFailureOrSuccessOption: none()),
        initialState.copyWith(
            shop: tShop,
            isSaving: false,
            showErrorMessages: false,
            saveFailureOrSuccessOption:
                some(left(const ShopFailure.unableToUpdate()))),
      ],
    );
    blocTest(
      'should call IShopRepository.create',
      build: () {
        return ShopFormBloc(mockIShopRepository);
      },
      setUp: () => when(mockIShopRepository.create(any))
          .thenAnswer((_) async => right(unit)),
      act: (ShopFormBloc bloc) => bloc.add(const ShopFormEvent.saved()),
      seed: () => initialState.copyWith(shop: tShop),
      verify: (bloc) => verify(mockIShopRepository.create(any)),
    );
  });
}

@isTest
void testEmptyFormField(
  String description, {
  required ShopFormBloc bloc,
  required ShopFormState seed,
}) {
  blocTest(
    description,
    build: () {
      return bloc;
    },
    seed: () => seed,
    act: (ShopFormBloc bloc) => bloc.add(const ShopFormEvent.saved()),
    expect: () => [
      seed.copyWith(
          isSaving: true,
          showErrorMessages: false,
          saveFailureOrSuccessOption: none()),
      seed.copyWith(
          isSaving: false,
          showErrorMessages: true,
          saveFailureOrSuccessOption: none()),
    ],
  );
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
