import 'package:flutter_test/flutter_test.dart';
import 'package:shopify_manager/domain/core/value_objects.dart';
import 'package:shopify_manager/infrastructure/shopping/shop_dtos.dart';

void main() {
  final tShopDto = ShopDto(
    id: UniqueId().toString(),
    shopName: 'Test Name',
    streetName: 'streetName',
    streetNumber: 21,
    postalCode: '99-400',
    city: 'Łowicz',
  );
  test(
    'should be a subclass of Shop entity',
    () async {
      // arrange

      // act

      // assert
      //expect(tshopDto)
    },
  );
}
