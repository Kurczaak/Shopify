import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:shopify_manager/application/shop/shop_location_picker/shop_location_picker_bloc.dart';
import 'package:shopify_manager/domain/core/location.dart';

void main() {
  const tLatitude = 45.0;
  const tLongitude = 45.0;
  final tLocation =
      Location.fromLatLang(latitude: tLatitude, longitude: tLongitude);
  blocTest(
    'initial state should have no location and no warnings',
    build: () => ShopLocationPickerBloc(),
    verify: (ShopLocationPickerBloc bloc) {
      expect(bloc.state.location, none());
    },
  );

  blocTest(
    'should emit state with changed location',
    build: () => ShopLocationPickerBloc(),
    act: (ShopLocationPickerBloc bloc) => bloc.add(
        ShopLocationPickerEvent.locationChanged(
            latitude: tLatitude, longitude: tLongitude)),
    expect: () =>
        [ShopLocationPickerState.initial().copyWith(location: some(tLocation))],
  );

  blocTest(
    'should emit saved state when location is correct and then unsave it',
    build: () => ShopLocationPickerBloc(),
    seed: () =>
        ShopLocationPickerState(location: some(tLocation), saved: false),
    act: (ShopLocationPickerBloc bloc) =>
        bloc.add(ShopLocationPickerEvent.saved()),
    expect: () => [
      ShopLocationPickerState(location: some(tLocation), saved: true),
      ShopLocationPickerState(location: some(tLocation), saved: false)
    ],
  );

  blocTest(
    'saved should not emit any state when location is incorrect',
    build: () => ShopLocationPickerBloc(),
    seed: () => ShopLocationPickerState(location: none(), saved: false),
    act: (ShopLocationPickerBloc bloc) =>
        bloc.add(ShopLocationPickerEvent.saved()),
    expect: () => [],
  );

  blocTest(
    'saved emit initial state when no location has been found',
    build: () => ShopLocationPickerBloc(),
    seed: () => ShopLocationPickerState(location: some(tLocation), saved: true),
    act: (ShopLocationPickerBloc bloc) =>
        bloc.add(ShopLocationPickerEvent.locationNotFound()),
    expect: () => [ShopLocationPickerState.initial()],
  );
}
