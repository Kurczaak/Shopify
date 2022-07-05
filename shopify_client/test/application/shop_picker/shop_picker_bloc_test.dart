import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/kt.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:shopify_client/application/shop_picker/shop_picker_bloc.dart';
import 'package:shopify_client/domain/core/i_location_facade.dart';
import 'package:shopify_client/domain/shop/i_shop_repository.dart';
import 'package:shopify_domain/core.dart';
import 'package:shopify_domain/core/network/network_info.dart';
import 'package:shopify_domain/shop.dart';

import 'shop_picker_bloc_test.mocks.dart';

@GenerateMocks([ILocationFacade, IShopRepository, NetworkInfo])
void main() {
  late MockILocationFacade mockLocationFacade;
  late MockIShopRepository mockShopRepository;
  late MockNetworkInfo mockNetworkInfo;
  late ShopPickerBloc bloc;

  final tLocation = Location.empty();
  const tRadius = 9.99;
  final tNonnegativeNumberRadius = NonnegativeNumber(tRadius);
  final tShop = Shop.empty();
  final tShopsList = KtList.from([
    tShop,
    tShop,
    tShop,
  ]);
  const String tLocationString = 'tLocation';
  final initialState = ShopPickerState.initial().copyWith(radius: tRadius);
  setUp(() {
    mockLocationFacade = MockILocationFacade();
    mockShopRepository = MockIShopRepository();
    mockNetworkInfo = MockNetworkInfo();
    bloc = ShopPickerBloc(
        networkInfo: mockNetworkInfo,
        location: mockLocationFacade,
        shopRepository: mockShopRepository);

    when(mockNetworkInfo.isConnected).thenAnswer((_) async => true);
    when(mockLocationFacade.getCurrentLocation())
        .thenAnswer((_) async => right(tLocation));
    when(mockShopRepository.watchNearby(tLocation, tNonnegativeNumberRadius))
        .thenAnswer((_) => Stream.fromFuture(Future.value(right(tShopsList))));

    when(mockLocationFacade.getLocationFromString(tLocationString))
        .thenAnswer((_) async => right(tLocation));
    when(mockLocationFacade.getCurrentLocation())
        .thenAnswer((_) async => right(tLocation));
  });
  group('radiusChanged', () {
    blocTest(
        'should emit a state with changed radius, and fetch new shops list',
        build: () => bloc,
        seed: () => initialState.copyWith(radius: 1111),
        act: (ShopPickerBloc bloc) =>
            bloc.add(const ShopPickerEvent.radiusChanged(radius: tRadius)),
        expect: () => [
              ShopPickerState.initial().copyWith(radius: tRadius),
              initialState.copyWith(shops: tShopsList)
            ]);
  });

  group('getYourLocation', () {
    blocTest('should check the internet connection',
        build: () => bloc,
        seed: () => initialState,
        act: (ShopPickerBloc bloc) =>
            bloc.add(const ShopPickerEvent.getYourLocation()),
        verify: (_) {
          verify(mockNetworkInfo.isConnected);
        });

    blocTest('should emit [ERROR] if no internet connection is present',
        build: () => bloc,
        setUp: () =>
            when(mockNetworkInfo.isConnected).thenAnswer((_) async => false),
        act: (ShopPickerBloc bloc) =>
            bloc.add(const ShopPickerEvent.getYourLocation()),
        expect: () => [
              ShopPickerState.initial().copyWith(
                  shopFailureOption:
                      some(const ShopFailure.noInternetConnection()))
            ]);

    blocTest('should get current location',
        build: () => bloc,
        seed: () => initialState,
        act: (ShopPickerBloc bloc) =>
            bloc.add(const ShopPickerEvent.getYourLocation()),
        verify: (_) {
          verify(mockLocationFacade.getCurrentLocation());
        });
    blocTest(
        'should emit [LOADING], a state with fetched location, and fetch new shops',
        build: () => bloc,
        seed: () => initialState,
        act: (ShopPickerBloc bloc) =>
            bloc.add(const ShopPickerEvent.getYourLocation()),
        expect: () => [
              initialState.copyWith(isLoading: true),
              initialState.copyWith(isLoading: false, location: tLocation),
              initialState.copyWith(shops: tShopsList)
            ]);

    blocTest(
        'should emit [LOADING] and [FAILURE] when could not fetch any location',
        build: () => bloc,
        act: (ShopPickerBloc bloc) =>
            bloc.add(const ShopPickerEvent.getYourLocation()),
        setUp: () {
          when(mockLocationFacade.getCurrentLocation()).thenAnswer(
              (_) async => left(const LocationFailure.noLocationFound()));
        },
        expect: () => [
              ShopPickerState.initial().copyWith(isLoading: true),
              ShopPickerState.initial().copyWith(
                  isLoading: false,
                  locationFailureOption:
                      some(const LocationFailure.noLocationFound())),
            ]);
  });

  group('searchLocation', () {
    blocTest('should check the internet connection',
        build: () => bloc,
        seed: () => initialState,
        act: (ShopPickerBloc bloc) => bloc.add(
            const ShopPickerEvent.searchLocation(
                stringLocation: tLocationString)),
        verify: (_) {
          verify(mockNetworkInfo.isConnected);
        });

    blocTest('should emit [ERROR] if no internet connection is present',
        build: () => bloc,
        setUp: () =>
            when(mockNetworkInfo.isConnected).thenAnswer((_) async => false),
        act: (ShopPickerBloc bloc) => bloc.add(
            const ShopPickerEvent.searchLocation(
                stringLocation: tLocationString)),
        expect: () => [
              ShopPickerState.initial().copyWith(
                  shopFailureOption:
                      some(const ShopFailure.noInternetConnection()))
            ]);
    blocTest('should get location from string',
        build: () => bloc,
        seed: () => initialState,
        act: (ShopPickerBloc bloc) => bloc.add(
            const ShopPickerEvent.searchLocation(
                stringLocation: tLocationString)),
        verify: (_) {
          verify(mockLocationFacade.getLocationFromString(tLocationString));
        });

    blocTest(
        'should emit [LOADING], a state with fetched location, and new shops',
        build: () => bloc,
        seed: () => initialState,
        act: (ShopPickerBloc bloc) => bloc.add(
            const ShopPickerEvent.searchLocation(
                stringLocation: tLocationString)),
        expect: () => [
              initialState.copyWith(isLoading: true),
              initialState.copyWith(isLoading: false, location: tLocation),
              initialState.copyWith(shops: tShopsList)
            ]);
    blocTest(
        'should emit [LOADING] and [FAILURE] when could not fetch any location',
        build: () => bloc,
        act: (ShopPickerBloc bloc) => bloc.add(
            const ShopPickerEvent.searchLocation(
                stringLocation: tLocationString)),
        setUp: () {
          when(mockLocationFacade.getLocationFromString(tLocationString))
              .thenAnswer(
                  (_) async => left(const LocationFailure.noLocationFound()));
        },
        expect: () => [
              ShopPickerState.initial().copyWith(isLoading: true),
              ShopPickerState.initial().copyWith(
                  isLoading: false,
                  locationFailureOption:
                      some(const LocationFailure.noLocationFound())),
            ]);
  });

  group('watchNearbyShops', () {
    blocTest('should check the internet connection',
        build: () => bloc,
        seed: () => initialState,
        act: (ShopPickerBloc bloc) =>
            bloc.add(const ShopPickerEvent.watchNearbyShops()),
        verify: (_) {
          verify(mockNetworkInfo.isConnected);
        });

    blocTest('should emit [ERROR] if no internet connection is present',
        build: () => bloc,
        seed: () => initialState,
        setUp: () =>
            when(mockNetworkInfo.isConnected).thenAnswer((_) async => false),
        act: (ShopPickerBloc bloc) =>
            bloc.add(const ShopPickerEvent.watchNearbyShops()),
        expect: () => [
              initialState.copyWith(
                  shopFailureOption:
                      some(const ShopFailure.noInternetConnection()))
            ]);

    blocTest('should watch nearbyShops given radius and location',
        build: () => bloc,
        seed: () => initialState,
        act: (ShopPickerBloc bloc) =>
            bloc.add(const ShopPickerEvent.watchNearbyShops()),
        verify: (_) {
          verify(mockShopRepository.watchNearby(
              tLocation, tNonnegativeNumberRadius));
        });

    blocTest(
        'should emit [ERROR] if shopRepository call resulted with a failure',
        build: () => bloc,
        setUp: () {
          when(mockShopRepository.watchNearby(
                  tLocation, tNonnegativeNumberRadius))
              .thenAnswer((_) => Stream.fromFuture(
                  Future.value(left(const ShopFailure.unexpected()))));
        },
        seed: () => initialState,
        act: (ShopPickerBloc bloc) =>
            bloc.add(const ShopPickerEvent.watchNearbyShops()),
        expect: () => [
              initialState.copyWith(
                  shopFailureOption: some(const ShopFailure.unexpected()))
            ]);

    blocTest('should emit shops',
        build: () => bloc,
        seed: () => initialState,
        act: (ShopPickerBloc bloc) =>
            bloc.add(const ShopPickerEvent.watchNearbyShops()),
        expect: () => [initialState.copyWith(shops: tShopsList)]);
  });
}
