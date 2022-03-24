import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/collection.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:shopify_client/domain/auth/i_auth_facade.dart';
import 'package:shopify_client/domain/core/address.dart';
import 'package:shopify_client/domain/core/images/photo.dart';
import 'package:shopify_client/domain/core/location.dart';
import 'package:shopify_client/domain/core/value_objects.dart';
import 'package:shopify_client/domain/shopping/shop.dart';
import 'package:shopify_client/domain/shopping/shop_failure.dart';
import 'package:shopify_client/domain/shopping/time/week.dart';
import 'package:shopify_client/domain/shopping/value_objects.dart';
import 'package:shopify_client/infrastructure/core/config.dart';
import 'package:shopify_client/infrastructure/shopping/firebase_shop_repository.dart';
import 'package:shopify_client/infrastructure/shopping/shop_dtos.dart';
import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:geoflutterfire/geoflutterfire.dart';

import '../../utils/image_reader.dart';

import './firebase_shop_repository_test.mocks.dart';

class MockStream extends Mock
    implements Stream<List<DocumentSnapshot<Map<String, dynamic>>>> {}

@GenerateMocks([
  Geoflutterfire,
  GeoFireCollectionRef,
  FirebaseStorage,
  CollectionReference,
  FirebaseFirestore,
])
void main() async {
  late MockGeoflutterfire geo;
  late MockGeoFireCollectionRef mockGeoFireCollectionRef;
  late MockFirebaseStorage mockFirebaseStorage;
  late FirebaseShopRepositoryImpl firebaseShopRepositoryImpl;
  late MockFirebaseFirestore mockFirebaseFirestore;
  late MockCollectionReference<Map<String, dynamic>> mockCollectionReference;

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
  final tShopDto = ShopDto.fromDomain(tShop);

  final fakeFirestore = FakeFirebaseFirestore();
  await fakeFirestore
      .collection('shops')
      .doc(shopDocumentIdStr)
      .set(tShopDto.toJson());

  setUp(() {
    geo = MockGeoflutterfire();

    mockGeoFireCollectionRef = MockGeoFireCollectionRef();
    mockFirebaseStorage = MockFirebaseStorage();
    mockFirebaseFirestore = MockFirebaseFirestore();
    firebaseShopRepositoryImpl = FirebaseShopRepositoryImpl(
        mockFirebaseFirestore, mockFirebaseStorage, geo);
    mockCollectionReference = MockCollectionReference<Map<String, dynamic>>();
  });

  test(
    'should call geoflutterfire functions',
    () async {
      // arrange
      double radius = 10;
      String field = 'position';
      final geoPoint =
          GeoFirePoint(Location.empty().latitude, Location.empty().longitude);
      final DocumentSnapshot<Map<String, dynamic>> shopsDocumentSnapshot =
          await fakeFirestore.collection('shops').doc(shopDocumentIdStr).get();

      List<DocumentSnapshot<Map<String, dynamic>>> listOfShopDocumentSnapshots =
          [shopsDocumentSnapshot, shopsDocumentSnapshot, shopsDocumentSnapshot];

      when(geo.point(
              latitude: Location.empty().latitude,
              longitude: Location.empty().longitude))
          .thenReturn(geoPoint);

      when(mockFirebaseFirestore.collection('shops'))
          .thenReturn(mockCollectionReference);

      when(geo.collection(collectionRef: mockCollectionReference))
          .thenReturn(mockGeoFireCollectionRef);

      when(mockGeoFireCollectionRef.within(
              center: geoPoint, radius: radius, field: field))
          .thenAnswer(
              (_) => Stream.fromIterable([listOfShopDocumentSnapshots]));

      // act
      final result =
          firebaseShopRepositoryImpl.watchNearby(Location.empty(), 10.0);
      result.listen((event) {});

      // assert
      await untilCalled(geo.point(
          latitude: Location.empty().latitude,
          longitude: Location.empty().longitude));
      verify(geo.point(
          latitude: Location.empty().latitude,
          longitude: Location.empty().longitude));
      verify(geo.collection(collectionRef: mockCollectionReference));
      verify(mockGeoFireCollectionRef.within(
          center: geoPoint, radius: radius, field: field));
    },
  );

  test(
    'should emit a stream of matching shops',
    () async {
      // arrange
      double radius = 10;
      String field = 'position';
      final geoPoint =
          GeoFirePoint(Location.empty().latitude, Location.empty().longitude);
      final DocumentSnapshot<Map<String, dynamic>> shopsDocumentSnapshot =
          await fakeFirestore.collection('shops').doc(shopDocumentIdStr).get();

      List<DocumentSnapshot<Map<String, dynamic>>> listOfShopDocumentSnapshots =
          [shopsDocumentSnapshot, shopsDocumentSnapshot, shopsDocumentSnapshot];

      when(geo.point(
              latitude: Location.empty().latitude,
              longitude: Location.empty().longitude))
          .thenReturn(geoPoint);

      when(mockFirebaseFirestore.collection('shops'))
          .thenReturn(mockCollectionReference);

      when(geo.collection(collectionRef: mockCollectionReference))
          .thenReturn(mockGeoFireCollectionRef);

      when(mockGeoFireCollectionRef.within(
              center: geoPoint, radius: radius, field: field))
          .thenAnswer(
              (_) => Stream.fromIterable([listOfShopDocumentSnapshots]));

      // act
      final result =
          firebaseShopRepositoryImpl.watchNearby(Location.empty(), 10.0);
      // assert
      expectLater(
          result.asBroadcastStream(),
          emitsInOrder([
            right(KtList.from([tShop, tShop, tShop]))
          ]));
    },
  );
}
