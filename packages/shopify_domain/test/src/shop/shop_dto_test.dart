import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shopify_domain/core/address.dart';
import 'package:shopify_domain/core/errors.dart';
import 'package:shopify_domain/core/location/location.dart';
import 'package:shopify_domain/core/value_objects.dart';
import 'package:shopify_domain/shop/shop.dart';
import 'package:shopify_domain/shop/time/week.dart';
import 'package:shopify_domain/shop/value_objects.dart';
import 'package:shopify_domain/src/core/address_dto.dart';
import 'package:shopify_domain/src/core/location/location_dtos.dart';
import 'package:shopify_domain/src/shop/shop_dtos.dart';
import 'package:shopify_domain/src/shop/time/time_dtos.dart';
import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';

void main() async {
  final instance = FakeFirebaseFirestore();

  const shopDocumentIdStr = "ad5d60d0-7844-11ec-a53d-03c2fc2917f5";
  const shopNameStr = "Shop Name";
  const streetNameStr = "Street Name";
  const cityNameStr = "Łowicz";
  const postalCodeStr = "99-400";
  const apartmentNumberStr = '';
  const streetNumberStr = '12A';
  const logoUrlStr =
      'https://firebasestorage.googleapis.com/v0/b/shopify-app-6d29d.appspot.com/o/images/1';

  final tShop = Shop(
    id: UniqueId.fromUniqueString(shopDocumentIdStr),
    shopName: ShopName(shopNameStr),
    address: Address(
      apartmentNumber: AddressNumber(apartmentNumberStr),
      streetNumber: StreetNumber(streetNumberStr),
      city: CityName(cityNameStr),
      postalCode: PostalCode(postalCodeStr),
      streetName: StreetName(streetNameStr),
    ),
    location: Location.empty(),
    logoUrl: ShopifyUrl(logoUrlStr),
    workingWeek: Week.empty(),
  );

  instance
      .collectionGroup('shops')
      .doc(shopDocumentIdStr)
      .set(ShopDto.fromDomain(tShop).toJson());

  final tShopDto = ShopDto(
    id: shopDocumentIdStr,
    shopName: shopNameStr,
    address: const AddressDto(
      apartmentNumber: apartmentNumberStr,
      streetNumber: streetNumberStr,
      city: cityNameStr,
      postalCode: postalCodeStr,
      streetName: streetNameStr,
    ),
    position: LocationDto.fromDomain(Location.empty()),
    logoUrl: logoUrlStr,
    week: WeekDto.fromDomain(Week.empty()),
  );

  group('fromDomain', () {
    test(
      'should return a valid DTO given proper shop entity',
      () async {
        // arrange
        // act
        final result = ShopDto.fromDomain(tShop);
        // assert
        // workaround in order to ignore serverTimeStamp generated value
        expect(result.getShopDataMap(), tShopDto.getShopDataMap());
      },
    );

    test(
      'should throw an UnexpectedValueError when given a shop with ivalid data',
      () async {
        // arrange
        final tInvalidShop = tShop.copyWith(
            address: tShop.address
                .copyWith(postalCode: PostalCode('InvalidPostalCode')));
        // act
        const call = ShopDto.fromDomain;
        // assert
        expect(() => call(tInvalidShop),
            throwsA(const TypeMatcher<UnexpectedValueError>()));
      },
    );
  });

  test(
    'should return a valid Shop when retrieving data from firestore',
    () async {
      // arrange
      final shopDoc =
          await instance.collection('shops').doc(shopDocumentIdStr).get();
      final shopDto = ShopDto.fromFirestore(shopDoc);
      // act
      final shop = shopDto.toDomain();
      // assert
      expect(shop, tShop);
    },
  );
}

extension ShopDataRetrieving on ShopDto {
  Map<String, dynamic> getShopDataMap() {
    return {'shopName': shopName, 'id': id, 'address': address.toJson()};
  }
}
