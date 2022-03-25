import 'package:flutter_test/flutter_test.dart';
import 'package:location/location.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:shopify_client/infrastructure/core/location/location_facade_impl.dart';

import 'location_facade_impl_test.mocks.dart';

@GenerateMocks([Location, LocationData])
void main() {
  late LocationFacadeImpl locationFacade;
  late MockLocation mockLocationService;
  final mockLocationData = MockLocationData();

  setUp(() {
    mockLocationService = MockLocation();
    locationFacade = LocationFacadeImpl(mockLocationService);
  });

  test(
    'should call Location service',
    () async {
      //arrange
      when(mockLocationService.getLocation())
          .thenAnswer((_) async => mockLocationData);
      // act
      locationFacade.getCurrentLocation();
      // assert
      verify(mockLocationService.getLocation());
    },
  );
}
