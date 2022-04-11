import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:shopify_manager/application/shop/shop_form/shop_form_bloc.dart';
import 'package:shopify_manager/application/shop/shop_location_picker/shop_location_picker_bloc.dart';
import 'package:shopify_manager/application/shop/shop_logo_picker/shop_logo_picker_bloc.dart';
import 'package:shopify_manager/application/shop/shop_registration/shop_registration_bloc.dart';
import 'package:shopify_manager/application/shop/shop_time_picker/shop_time_picker_bloc.dart';
import 'package:shopify_manager/domain/core/address.dart';
import 'package:shopify_manager/domain/core/errors.dart';
import 'package:shopify_manager/domain/core/images/photo.dart';
import 'package:shopify_manager/domain/core/location.dart';
import 'package:shopify_manager/domain/core/location/location_failure.dart';
import 'package:shopify_manager/domain/core/location/location_info.dart';
import 'package:shopify_manager/domain/core/value_objects.dart';
import 'package:shopify_manager/domain/shop/i_shop_repository.dart';
import 'package:shopify_manager/domain/shop/shop.dart';
import 'package:shopify_manager/domain/shop/shop_failure.dart';
import 'package:shopify_manager/domain/shop/shop_form.dart';
import 'package:shopify_manager/domain/shop/time/day.dart';
import 'package:shopify_manager/domain/shop/time/value_objects.dart';
import 'package:shopify_manager/domain/shop/time/week.dart';
import 'package:shopify_manager/domain/shop/value_objects.dart';
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

class MockIShopRepository extends Mock implements IShopRepository {}

void main() async {
  late MockShopFormBloc mockShopFormBloc;
  late MockShopTimePickerBloc mockShopTimePickerBloc;
  late MockShopLocationPickerBloc mockShopLocationPickerBloc;
  late MockShopLogoPickerBloc mockShopLogoPickerBloc;
  late MockLocationInfo mockLocationInfo;
  late ShopRegistrationBloc shopRegistrationBloc;
  late MockIShopRepository mockShopRepository;

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

  final tShop = Shop(
      address: tShopForm.address,
      shopName: tShopForm.shopName,
      location: Location.empty(),
      logoUrl: ShopifyUrl(
          'https://firebasestorage.googleapis.com/v0/b/shopify-app-6d29d.appspot.com/o/images'),
      workingWeek: Week.empty(),
      id: UniqueId());

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
    mockShopRepository = MockIShopRepository();

    shopRegistrationBloc = ShopRegistrationBloc(
        shopFormBloc: mockShopFormBloc,
        shopLocationPickerBloc: mockShopLocationPickerBloc,
        shopLogoPickerBloc: mockShopLogoPickerBloc,
        shopTimePickerBloc: mockShopTimePickerBloc,
        locationInfo: mockLocationInfo,
        shopRepository: mockShopRepository);
  });

  group('formSaved', () {
    test(
      'should emit state with shopForm data',
      () async {
        // arrange
        when(() => mockLocationInfo.getLocationFromAddress(tShopForm.address))
            .thenAnswer((_) async => right(Location.empty()));
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
            shopRepository: mockShopRepository);

        // assert
        expect(
            bloc.stream.asBroadcastStream(),
            emitsInOrder([
              ShopRegistrationState.initial().copyWith(
                  shop: bloc.state.shop.copyWith(
                    address: tShopForm.address,
                    shopName: tShopForm.shopName,
                  ),
                  isSaving: true),
              ShopRegistrationState.initial().copyWith(
                  shop: bloc.state.shop.copyWith(
                    address: tShopForm.address,
                    shopName: tShopForm.shopName,
                  ),
                  isSaving: false),
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
            .thenAnswer((_) async => right(Location.empty()));
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
            .thenAnswer((_) async => right(Location.empty()));
      },
      verify: (ShopRegistrationBloc bloc) {
        verify(() => mockShopLocationPickerBloc.add(
            ShopLocationPickerEvent.locationChanged(
                latitude: Location.empty().latitude,
                longitude: Location.empty().longitude)));
      },
    );

    blocTest(
      'should add noLocationFound event to the locationPickerBloc when no location has been found',
      build: () => shopRegistrationBloc,
      act: (ShopRegistrationBloc bloc) => bloc.add(
        ShopRegistrationEvent.formSaved(shopForm: tShopForm),
      ),
      setUp: () {
        when(() => mockLocationInfo.getLocationFromAddress(tShopForm.address))
            .thenAnswer(
                (_) async => left(const LocationFailure.noLocationFound()));
      },
      verify: (ShopRegistrationBloc bloc) {
        verify(() => mockShopLocationPickerBloc
            .add(ShopLocationPickerEvent.locationNotFound()));
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
            shopRepository: mockShopRepository);

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
            shopRepository: mockShopRepository);

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
            shopRepository: mockShopRepository);

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
            shopRepository: mockShopRepository);

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
            shopRepository: mockShopRepository);

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
            shopRepository: mockShopRepository);
      },
      errors: () => <Matcher>[isA<UnexpectedValueError>()],
    );
  });

  group('shopSaved', () {
    blocTest(
      'should emit saving and saved states when shop has been successfully uploaded',
      build: () => shopRegistrationBloc,
      act: (ShopRegistrationBloc bloc) =>
          bloc.add(const ShopRegistrationEvent.shopSaved()),
      setUp: () {
        when(() => mockShopRepository.create(tShop, tShopLogo))
            .thenAnswer((_) async => right(unit));
      },
      seed: () => shopRegistrationBloc.state.copyWith(
        shop: tShop,
        shopLogo: some(tShopLogo),
      ),
      expect: () => [
        shopRegistrationBloc.state
            .copyWith(isSaving: true, saveFailureOrSuccessOption: none()),
        shopRegistrationBloc.state.copyWith(
            isSaving: false, saveFailureOrSuccessOption: some(right(unit))),
      ],
    );

    blocTest(
      'should emit saving and failure states when uploading failure occured',
      build: () => shopRegistrationBloc,
      act: (ShopRegistrationBloc bloc) =>
          bloc.add(const ShopRegistrationEvent.shopSaved()),
      setUp: () {
        when(() => mockShopRepository.create(tShop, tShopLogo))
            .thenAnswer((_) async => left(const ShopFailure.unexpected()));
      },
      seed: () => shopRegistrationBloc.state.copyWith(
        shop: tShop,
        shopLogo: some(tShopLogo),
      ),
      expect: () => [
        shopRegistrationBloc.state
            .copyWith(isSaving: true, saveFailureOrSuccessOption: none()),
        shopRegistrationBloc.state.copyWith(
            isSaving: false,
            saveFailureOrSuccessOption:
                some(left(const ShopFailure.unexpected()))),
      ],
    );

    blocTest('should call IShopRepository and upload the shop',
        build: () => shopRegistrationBloc,
        act: (ShopRegistrationBloc bloc) =>
            bloc.add(const ShopRegistrationEvent.shopSaved()),
        seed: () => shopRegistrationBloc.state.copyWith(
              shop: tShop,
              shopLogo: some(tShopLogo),
            ),
        setUp: () {
          when(() => mockShopRepository.create(tShop, tShopLogo))
              .thenAnswer((_) async => right(unit));
        },
        verify: (bloc) {
          verify(() => mockShopRepository.create(tShop, tShopLogo)).called(1);
        });
  });
}
