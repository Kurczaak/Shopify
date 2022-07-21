import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:shopify_client/application/location/location_bloc.dart';
import 'package:shopify_client/domain/core/i_location_facade.dart';
import 'package:shopify_domain/core.dart';
import 'package:shopify_domain/core/network/network_info.dart';
import 'location_bloc_test.mocks.dart';

@GenerateMocks([ILocationFacade, NetworkInfo])
void main() {
  late MockILocationFacade mockLocationFacade;

  late MockNetworkInfo mockNetworkInfo;
  late LocationBloc bloc;

  final tLocation = Location.empty();
  final initialState = LocationState.initial();
  const String tLocationString = 'tLocation';

  setUp(() {
    mockLocationFacade = MockILocationFacade();

    mockNetworkInfo = MockNetworkInfo();
    bloc = LocationBloc(
      networkInfo: mockNetworkInfo,
      location: mockLocationFacade,
    );

    when(mockNetworkInfo.isConnected).thenAnswer((_) async => true);
    when(mockLocationFacade.getCurrentLocation())
        .thenAnswer((_) async => right(tLocation));

    when(mockLocationFacade.getLocationFromString(tLocationString))
        .thenAnswer((_) async => right(tLocation));
    when(mockLocationFacade.getCurrentLocation())
        .thenAnswer((_) async => right(tLocation));
  });

  group('getYourLocation', () {
    blocTest('should check the internet connection',
        build: () => bloc,
        seed: () => initialState,
        act: (LocationBloc bloc) =>
            bloc.add(const LocationEvent.getYourLocation()),
        verify: (_) {
          verify(mockNetworkInfo.isConnected);
        });

    blocTest('should emit [ERROR] if no internet connection is present',
        build: () => bloc,
        setUp: () =>
            when(mockNetworkInfo.isConnected).thenAnswer((_) async => false),
        act: (LocationBloc bloc) =>
            bloc.add(const LocationEvent.getYourLocation()),
        expect: () => [
              LocationState.initial().copyWith(
                  locationFailureOption:
                      some(const LocationFailure.noInternetConnection()))
            ]);

    blocTest('should get current location',
        build: () => bloc,
        seed: () => initialState,
        act: (LocationBloc bloc) =>
            bloc.add(const LocationEvent.getYourLocation()),
        verify: (_) {
          verify(mockLocationFacade.getCurrentLocation());
        });
    blocTest('should emit [LOADING], a state with fetched location',
        build: () => bloc,
        seed: () => initialState,
        act: (LocationBloc bloc) =>
            bloc.add(const LocationEvent.getYourLocation()),
        expect: () => [
              initialState.copyWith(isLoading: true),
              initialState.copyWith(isLoading: false, location: tLocation),
            ]);

    blocTest(
        'should emit [LOADING] and [FAILURE] when could not fetch any location',
        build: () => bloc,
        act: (LocationBloc bloc) =>
            bloc.add(const LocationEvent.getYourLocation()),
        setUp: () {
          when(mockLocationFacade.getCurrentLocation()).thenAnswer(
              (_) async => left(const LocationFailure.noLocationFound()));
        },
        expect: () => [
              LocationState.initial().copyWith(isLoading: true),
              LocationState.initial().copyWith(
                  isLoading: false,
                  locationFailureOption:
                      some(const LocationFailure.noLocationFound())),
            ]);
  });

  group('searchLocation', () {
    blocTest('should check the internet connection',
        build: () => bloc,
        seed: () => initialState,
        act: (LocationBloc bloc) => bloc.add(const LocationEvent.searchLocation(
            stringLocation: tLocationString)),
        verify: (_) {
          verify(mockNetworkInfo.isConnected);
        });

    blocTest('should emit [ERROR] if no internet connection is present',
        build: () => bloc,
        setUp: () =>
            when(mockNetworkInfo.isConnected).thenAnswer((_) async => false),
        act: (LocationBloc bloc) => bloc.add(const LocationEvent.searchLocation(
            stringLocation: tLocationString)),
        expect: () => [
              LocationState.initial().copyWith(
                  locationFailureOption:
                      some(const LocationFailure.noInternetConnection()))
            ]);
    blocTest('should get location from string',
        build: () => bloc,
        seed: () => initialState,
        act: (LocationBloc bloc) => bloc.add(const LocationEvent.searchLocation(
            stringLocation: tLocationString)),
        verify: (_) {
          verify(mockLocationFacade.getLocationFromString(tLocationString));
        });

    blocTest('should emit [LOADING], a state with fetched location',
        build: () => bloc,
        seed: () => initialState,
        act: (LocationBloc bloc) => bloc.add(const LocationEvent.searchLocation(
            stringLocation: tLocationString)),
        expect: () => [
              initialState.copyWith(isLoading: true),
              initialState.copyWith(isLoading: false, location: tLocation),
            ]);
    blocTest(
        'should emit [LOADING] and [FAILURE] when could not fetch any location',
        build: () => bloc,
        act: (LocationBloc bloc) => bloc.add(const LocationEvent.searchLocation(
            stringLocation: tLocationString)),
        setUp: () {
          when(mockLocationFacade.getLocationFromString(tLocationString))
              .thenAnswer(
                  (_) async => left(const LocationFailure.noLocationFound()));
        },
        expect: () => [
              LocationState.initial().copyWith(isLoading: true),
              LocationState.initial().copyWith(
                  isLoading: false,
                  locationFailureOption:
                      some(const LocationFailure.noLocationFound())),
            ]);
  });
}
