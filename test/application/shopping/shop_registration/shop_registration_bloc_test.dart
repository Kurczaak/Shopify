import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:shopify_manager/application/shopping/shop_form/shop_form_bloc.dart';
import 'package:shopify_manager/application/shopping/shop_location_picker/shop_location_picker_bloc.dart';
import 'package:shopify_manager/application/shopping/shop_logo_picker/shop_logo_picker_bloc.dart';
import 'package:shopify_manager/application/shopping/shop_registration/shop_registration_bloc.dart';
import 'package:shopify_manager/application/shopping/shop_time_picker/shop_time_picker_bloc.dart';
import 'package:shopify_manager/domain/core/address.dart';
import 'package:shopify_manager/domain/core/errors.dart';
import 'package:shopify_manager/domain/core/images/photo.dart';
import 'package:shopify_manager/domain/core/location.dart';
import 'package:shopify_manager/domain/core/location/location_info.dart';
import 'package:shopify_manager/domain/core/value_objects.dart';
import 'package:shopify_manager/domain/shopping/shop.dart';
import 'package:shopify_manager/domain/shopping/shop_form.dart';
import 'package:shopify_manager/domain/shopping/time/day.dart';
import 'package:shopify_manager/domain/shopping/time/value_objects.dart';
import 'package:shopify_manager/domain/shopping/time/week.dart';
import 'package:shopify_manager/domain/shopping/value_objects.dart';
import 'package:mocktail/mocktail.dart';

import '../../../utils/image_reader.dart';

class MockShopFormBloc extends MockBloc<ShopFormEvent, ShopFormState>
    implements ShopFormBloc {}

class MockShopTimePickerBloc
    extends MockBloc<ShopTimePickerEvent, ShopTimePickerState>
    implements ShopTimePickerBloc {}

class MockShopLocationPickerBloc
    extends MockBloc<ShopLocationPickerEvent, ShopLocationPickerState>
    implements ShopLocationPickerBloc {}

class MockShopLogoPickerBloc
    extends MockBloc<ShopLogoPickerEvent, ShopLogoPickerState>
    implements ShopLogoPickerBloc {}

class MockLocationInfo extends Mock implements LocationInfo {}

void main() async {
  late MockShopFormBloc mockShopFormBloc;
  late MockShopTimePickerBloc mockShopTimePickerBloc;
  late MockShopLocationPickerBloc mockShopLocationPickerBloc;
  late MockShopLogoPickerBloc mockShopLogoPickerBloc;
  late MockLocationInfo mockLocationInfo;
  late ShopRegistrationBloc shopRegistrationBloc;

  // Address strings
  const streetNameStr = "Street Name";
  const cityNameStr = "Łowicz";
  const postalCodeStr = "99-400";
  const apartmentNumberStr = '';
  const streetNumberStr = '12A';
  const shopNameStr = 'Sklep Spożywczy ABC';

  final tShopForm = ShopForm(
    shopName: ShopName(shopNameStr),
    address: Address(
      apartmentNumber: AddressNumber(apartmentNumberStr),
      streetNumber: StreetNumber(streetNumberStr),
      city: CityName(cityNameStr),
      postalCode: PostalCode(postalCodeStr),
      streetName: StreetName(streetNameStr),
    ),
  );

  final tLogo = await getImageFileFromAssets('test_logo.jpg');
  final tShopLogo = ShopLogo(tLogo);
  final tTooSmallLogo = await getImageFileFromAssets('too_small_logo.jpg');
  final tTooSmallShopLogo = ShopLogo(tTooSmallLogo);

  setUp(() {
    mockShopFormBloc = MockShopFormBloc();
    mockShopTimePickerBloc = MockShopTimePickerBloc();
    mockShopLocationPickerBloc = MockShopLocationPickerBloc();
    mockShopLogoPickerBloc = MockShopLogoPickerBloc();
    mockLocationInfo = MockLocationInfo();

    shopRegistrationBloc = ShopRegistrationBloc(
      shopFormBloc: mockShopFormBloc,
      shopLocationPickerBloc: mockShopLocationPickerBloc,
      shopLogoPickerBloc: mockShopLogoPickerBloc,
      shopTimePickerBloc: mockShopTimePickerBloc,
      locationInfo: mockLocationInfo,
    );
  });

  group('formSaved', () {
    test(
      'should emit state with shopForm data',
      () async {
        // arrange
        when(() => mockLocationInfo.getLocationFromAddress(tShopForm.address))
            .thenAnswer((_) async => Location.empty());
        whenListen(
          mockShopFormBloc,
          Stream.fromIterable([
            ShopFormState.initial().copyWith(
              shop: tShopForm,
              saved: true,
            ),
          ]),
        );
        final bloc = ShopRegistrationBloc(
          shopFormBloc: mockShopFormBloc,
          shopLocationPickerBloc: mockShopLocationPickerBloc,
          shopLogoPickerBloc: mockShopLogoPickerBloc,
          shopTimePickerBloc: mockShopTimePickerBloc,
          locationInfo: mockLocationInfo,
        );

        // assert
        expect(
            bloc.stream.asBroadcastStream(),
            emitsInOrder([
              ShopRegistrationState.initial().copyWith(
                  shop: bloc.state.shop.copyWith(
                      address: tShopForm.address, shopName: tShopForm.shopName))
            ]));
      },
    );

    blocTest(
      'should get location based on the given address',
      build: () => shopRegistrationBloc,
      act: (ShopRegistrationBloc bloc) => bloc.add(
        ShopRegistrationEvent.formSaved(shopForm: tShopForm),
      ),
      setUp: () {
        when(() => mockLocationInfo.getLocationFromAddress(tShopForm.address))
            .thenAnswer((_) async => Location.empty());
      },
      verify: (ShopRegistrationBloc bloc) {
        verify(
            () => mockLocationInfo.getLocationFromAddress(tShopForm.address));
      },
    );

    blocTest(
      'should pass the location to the shopLocationBloc',
      build: () => shopRegistrationBloc,
      act: (ShopRegistrationBloc bloc) => bloc.add(
        ShopRegistrationEvent.formSaved(shopForm: tShopForm),
      ),
      setUp: () {
        when(() => mockLocationInfo.getLocationFromAddress(tShopForm.address))
            .thenAnswer((_) async => Location.empty());
      },
      verify: (ShopRegistrationBloc bloc) {
        verify(() => mockShopLocationPickerBloc.add(
            ShopLocationPickerEvent.locationChanged(
                latitude: Location.empty().latitude,
                longitude: Location.empty().longitude)));
      },
    );
  });

  group('locationSaved', () {
    final tShopLocation = Location.fromLatLang(latitude: 20.0, longitude: 20.0);
    test(
      'should emit state with savedLocation',
      () async {
        // arrange

        whenListen(
          mockShopLocationPickerBloc,
          Stream.fromIterable([
            ShopLocationPickerState(location: some(tShopLocation), saved: true)
          ]),
        );
        final bloc = ShopRegistrationBloc(
          shopFormBloc: mockShopFormBloc,
          shopLocationPickerBloc: mockShopLocationPickerBloc,
          shopLogoPickerBloc: mockShopLogoPickerBloc,
          shopTimePickerBloc: mockShopTimePickerBloc,
          locationInfo: mockLocationInfo,
        );

        // assert
        expect(
            bloc.stream.asBroadcastStream(),
            emitsInOrder([
              ShopRegistrationState.initial().copyWith(
                  shop: bloc.state.shop.copyWith(location: tShopLocation))
            ]));
      },
    );

    test(
      'should not emit state when location saved is false',
      () async {
        // arrange

        whenListen(
          mockShopLocationPickerBloc,
          Stream.fromIterable([
            ShopLocationPickerState(location: some(tShopLocation), saved: false)
          ]),
        );
        final bloc = ShopRegistrationBloc(
          shopFormBloc: mockShopFormBloc,
          shopLocationPickerBloc: mockShopLocationPickerBloc,
          shopLogoPickerBloc: mockShopLogoPickerBloc,
          shopTimePickerBloc: mockShopTimePickerBloc,
          locationInfo: mockLocationInfo,
        );

        // assert
        expect(bloc.stream.asBroadcastStream(), emitsInOrder([]));
      },
    );
  });

  group('weekSaved', () {
    final tValidWeek = Week.empty()
        .copyWith(sunday: Day.empty(DayName.sunday).copyWith(isOpen: false));
    final tInvalidWeek = Week.empty().copyWith(
        sunday: Day.empty(DayName.sunday)
            .copyWith(openingInterval: TimeInterval.fullHours(22, 8)));
    test(
      'should emit state with saved week if the week is valid',
      () async {
        // arrange

        whenListen(
          mockShopTimePickerBloc,
          Stream.fromIterable([
            ShopTimePickerState(
                saved: true, showErrors: false, week: tValidWeek),
          ]),
        );
        final bloc = ShopRegistrationBloc(
          shopFormBloc: mockShopFormBloc,
          shopLocationPickerBloc: mockShopLocationPickerBloc,
          shopLogoPickerBloc: mockShopLogoPickerBloc,
          shopTimePickerBloc: mockShopTimePickerBloc,
          locationInfo: mockLocationInfo,
        );

        // assert
        expect(
            bloc.stream.asBroadcastStream(),
            emitsInOrder([
              ShopRegistrationState.initial().copyWith(
                  shop: bloc.state.shop.copyWith(workingWeek: tValidWeek))
            ]));
      },
    );

    test(
      'should not emit state when week is invalid',
      () async {
        // arrange

        whenListen(
          mockShopTimePickerBloc,
          Stream.fromIterable([
            ShopTimePickerState(
                week: tInvalidWeek, saved: true, showErrors: false)
          ]),
        );
        final bloc = ShopRegistrationBloc(
          shopFormBloc: mockShopFormBloc,
          shopLocationPickerBloc: mockShopLocationPickerBloc,
          shopLogoPickerBloc: mockShopLogoPickerBloc,
          shopTimePickerBloc: mockShopTimePickerBloc,
          locationInfo: mockLocationInfo,
        );

        // assert
        expect(bloc.stream.asBroadcastStream(), emitsInOrder([]));
      },
    );
  });

  group('logoSaved', () {
    test(
      'should emit state with saved logo if ShopLogo is valid',
      () async {
        // arrange

        whenListen(
          mockShopLogoPickerBloc,
          Stream.fromIterable([
            ShopLogoPickerState.loaded(logo: tShopLogo),
          ]),
        );
        final bloc = ShopRegistrationBloc(
          shopFormBloc: mockShopFormBloc,
          shopLocationPickerBloc: mockShopLocationPickerBloc,
          shopLogoPickerBloc: mockShopLogoPickerBloc,
          shopTimePickerBloc: mockShopTimePickerBloc,
          locationInfo: mockLocationInfo,
        );

        // assert
        expect(bloc.stream.asBroadcastStream(),
            emitsInOrder([bloc.state.copyWith(shopLogo: some(tShopLogo))]));
      },
    );

    blocTest(
      'should throw UnexpectedValueError when invalid logo is being saved',
      build: () {
        whenListen(
            mockShopLogoPickerBloc,
            Stream.fromIterable([
              ShopLogoPickerState.loaded(logo: tTooSmallShopLogo),
            ]),
            initialState: ShopLogoPickerState.loaded(logo: tTooSmallShopLogo));
        return ShopRegistrationBloc(
          shopFormBloc: mockShopFormBloc,
          shopLocationPickerBloc: mockShopLocationPickerBloc,
          shopLogoPickerBloc: mockShopLogoPickerBloc,
          shopTimePickerBloc: mockShopTimePickerBloc,
          locationInfo: mockLocationInfo,
        );
      },
      errors: () => <Matcher>[isA<UnexpectedValueError>()],
    );
  });
}
