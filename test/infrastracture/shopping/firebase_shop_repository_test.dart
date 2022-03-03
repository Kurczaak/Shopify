import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shopify_manager/domain/core/address.dart';
import 'package:shopify_manager/domain/core/errors.dart';
import 'package:shopify_manager/domain/core/location.dart';
import 'package:shopify_manager/domain/core/value_objects.dart';
import 'package:shopify_manager/domain/shopping/shop.dart';
import 'package:shopify_manager/domain/shopping/time/week.dart';
import 'package:shopify_manager/domain/shopping/value_objects.dart';
import 'package:shopify_manager/infrastructure/core/address_dto.dart';
import 'package:shopify_manager/infrastructure/core/location/location_dtos.dart';
import 'package:shopify_manager/infrastructure/shopping/firebase_shop_repository.dart';
import 'package:shopify_manager/infrastructure/shopping/shop_dtos.dart';
import 'package:shopify_manager/infrastructure/shopping/time/time_dtos.dart';
import '../../utils/fixture_reader.dart';
import 'dart:convert';
import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';
import 'package:geoflutterfire/geoflutterfire.dart';
import 'package:shopify_manager/domain/core/value_transformers.dart';

class FakeGeoPoint extends Fake implements GeoFirePoint {
  @override
  final double latitude;
  @override
  final double longitude;

  FakeGeoPoint(this.latitude, this.longitude);

  @override
  Map<String, dynamic> get data => {
        'geopoint': {'latitude': latitude, 'longitude': longitude},
        'geohash': '9q9hvuktw'
      };

  @override
  String get hash => latLangToHash(latitude, longitude);

  @override
  GeoPoint get geoPoint => GeoPoint(latitude, longitude);
}

void main() async {
  late FakeFirebaseFirestore fakeFirestore;
  late FirebaseShopRepositoryImpl firebaseShopRepository;
  Geoflutterfire geo = Geoflutterfire();

  const shopDocumentIdStr = "ad5d60d0-7844-11ec-a53d-03c2fc2917f5";
  const shopNameStr = "Shop Name";
  const streetNameStr = "Street Name";
  const cityNameStr = "Łowicz";
  const postalCodeStr = "99-400";
  const apartmentNumberStr = '1';
  const streetNumberStr = '12A';
  const logoUrlStr = 'https://www.example.com';
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
    logoUrl: logoUrlStr,
    workingWeek: Week.empty(),
  );

  setUp(() {
    fakeFirestore = FakeFirebaseFirestore();
    firebaseShopRepository = FirebaseShopRepositoryImpl(fakeFirestore);
  });

  test('should xd', () async {
    // arrange
    final tShopDto = ShopDto.fromDomain(tShop);
    final jsonShop = tShopDto.toJson();
    print(jsonShop);
    // act
    await fakeFirestore.collection('shops').add(jsonShop);
    //print(fakeFirestore.dump());

    var ref = fakeFirestore.collection('shops');
    final snapshots = ref.snapshots();

    await Future.delayed(Duration(milliseconds: 300));
    GeoFirePoint center = geo.point(
        latitude: Location.empty().latitude,
        longitude: Location.empty().longitude);
    Stream<List<DocumentSnapshot>> stream = geo
        .collection(collectionRef: ref)
        .within(center: center, radius: 50, field: 'position');

    stream.listen(expectAsync1((snap) {
      for (var doc in snap) {
        print(doc.data());
      }
      expect(snap.length, equals(1));
    }));
    snapshots.listen(expectAsync1((snap) {
      for (var doc in snap.docs) {
        print(doc.data());
      }
      expect(snap.size, equals(1));
    }));
  });
}
