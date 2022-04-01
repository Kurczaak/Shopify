import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:shopify_manager/domain/auth/i_auth_facade.dart';
import 'package:shopify_manager/domain/core/address.dart';
import 'package:shopify_manager/domain/core/images/photo.dart';
import 'package:shopify_manager/domain/core/location.dart';
import 'package:shopify_manager/domain/core/value_objects.dart';
import 'package:shopify_manager/domain/shop/shop.dart';
import 'package:shopify_manager/domain/shop/shop_failure.dart';
import 'package:shopify_manager/domain/shop/time/week.dart';
import 'package:shopify_manager/domain/shop/value_objects.dart';
import 'package:shopify_manager/infrastructure/core/config.dart';
import 'package:shopify_manager/infrastructure/shop/firebase_shop_repository.dart';
import 'package:shopify_manager/infrastructure/shop/shop_dtos.dart';
import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';
import 'package:firebase_storage_mocks/firebase_storage_mocks.dart' as fake;
import 'package:firebase_storage/firebase_storage.dart';

import '../../utils/image_reader.dart';
import 'firebase_shop_repository_test.mocks.dart';

@GenerateMocks([
  IAuthFacade,
  FirebaseFirestore,
  CollectionReference,
  Reference,
  FirebaseStorage,
  TaskSnapshot,
  UploadTask,
  DocumentReference
])
void main() async {
  final fakeFirestore = FakeFirebaseFirestore();

  late MockFirebaseStorage mockFirebaseStorage;
  late MockFirebaseFirestore mockFirebaseFirestore;
  late FirebaseShopRepositoryImpl firebaseShopRepository;

  late MockCollectionReference<Map<String, dynamic>> mockCollectionReference;
  late MockDocumentReference<Map<String, dynamic>> mockDocumentReference;
  late MockReference mockReference;
  late MockTaskSnapshot mockTaskSnapshot;
  late MockUploadTask mockUploadTask;

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
  final logoFile = await getImageFileFromAssets('test_logo.jpg');
  final tShopLogo = ShopLogo(logoFile);

  final shopDcumentReference =
      await fakeFirestore.collection('shops').add(tShopDto.toJson());

  setUp(() {
    // main setup
    mockFirebaseFirestore = MockFirebaseFirestore();
    mockFirebaseStorage = MockFirebaseStorage();
    firebaseShopRepository =
        FirebaseShopRepositoryImpl(mockFirebaseFirestore, mockFirebaseStorage);
    // helpers
    mockCollectionReference = MockCollectionReference();
    mockDocumentReference = MockDocumentReference();
    mockReference = MockReference();
    mockTaskSnapshot = MockTaskSnapshot();
    mockUploadTask = MockUploadTask();
  });

  void _setUpStorage(MockFirebaseStorage storage, String logoUrl) {
    final newReference = MockReference();
    when(storage.ref(any)).thenReturn(mockReference);
    when(mockReference.child(any)).thenReturn(mockReference);
    when(mockReference.putFile(any))
        .thenAnswer((_) => fake.MockUploadTask(newReference));
    when(newReference.getDownloadURL()).thenAnswer((_) async => logoUrl);
  }

  test(
    'should upload logo to the storage',
    () async {
      // arrange
      final newFakeFirestore = FakeFirebaseFirestore();
      final newReference = MockReference();
      when(mockFirebaseStorage.ref(any)).thenReturn(mockReference);
      when(mockReference.child(any)).thenReturn(mockReference);
      when(mockReference.putFile(any))
          .thenAnswer((_) => fake.MockUploadTask(newReference));
      when(newReference.getDownloadURL()).thenAnswer(
          (_) async => 'https://www.example.com/images/shop_logos/1.jpg');

      final listener = newFakeFirestore.collection('shops').snapshots();
      // act
      await FirebaseShopRepositoryImpl(newFakeFirestore, mockFirebaseStorage)
          .create(tShop, tShopLogo);
      // assert
      verify(mockFirebaseStorage.ref('images/shop_logos')).called(1);
      verify(mockReference.putFile(tShopLogo.getOrCrash())).called(1);
      verify(newReference.getDownloadURL()).called(1);
      listener.listen(expectAsync1((snap) {
        for (var doc in snap.docs) {
          expect(doc.data()['logoUrl'],
              equals('https://www.example.com/images/shop_logos/1.jpg'));
        }
      }, max: -1));
    },
  );

  test(
    'should get shops collection, then add a new shop to it',
    () async {
      // arrange
      final imageReference = MockReference();
      when(mockFirebaseFirestore.collection('shops'))
          .thenReturn(mockCollectionReference);
      when(mockCollectionReference.doc(any)).thenReturn(mockDocumentReference);
      when(mockDocumentReference.set(any))
          .thenAnswer((_) async => shopDcumentReference);
      _setUpStorage(mockFirebaseStorage,
          'https://www.example.com/images/shop_logos/1.jpg');
      // act
      await firebaseShopRepository.create(tShop, tShopLogo);
      // assert
      verify(mockFirebaseFirestore.collection('shops')).called(1);
    },
  );

  test('should add shop to the collection', () async {
    // arrange
    _setUpStorage(mockFirebaseStorage, 'https://www.example.com');
    final fakeFirebase = FakeFirebaseFirestore();
    firebaseShopRepository =
        FirebaseShopRepositoryImpl(fakeFirebase, mockFirebaseStorage);
    // act
    final listener = fakeFirebase.collection('shops').snapshots();

    await firebaseShopRepository.create(tShop, tShopLogo);
    // assert
    listener.listen(expectAsync1((snap) {
      for (var doc in snap.docs) {
        expect(doc.data(), equals(tShopDto.toJson()));
      }
    }, max: -1));
  });

  test('should return right(unit) when succesfully added a new shop', () async {
    // arrange
    _setUpStorage(mockFirebaseStorage, 'https://www.example.com');
    when(mockFirebaseFirestore.collection('shops'))
        .thenReturn(mockCollectionReference);
    when(mockCollectionReference.doc(any)).thenReturn(mockDocumentReference);
    when(mockDocumentReference.set(any))
        .thenAnswer((_) async => shopDcumentReference);
    // act
    final result = await firebaseShopRepository.create(tShop, tShopLogo);
    // assert
    expect(result, right(unit));
  });

  test(
    'should return ShopFailure when unknown PlatformException is thrown',
    () async {
      // arrange
      _setUpStorage(mockFirebaseStorage, 'https://www.example.com');
      final MockCollectionReference<Map<String, dynamic>> ref =
          MockCollectionReference();
      when(mockFirebaseFirestore.collection('shops'))
          .thenReturn(mockCollectionReference);
      when(mockCollectionReference.doc(any)).thenReturn(mockDocumentReference);
      when(mockDocumentReference.set(any)).thenThrow(FirebaseException(
        plugin: '1',
        code: 'unknown',
      ));
      // act
      final result = await firebaseShopRepository.create(tShop, tShopLogo);
      // assert
      expect(result, left(const ShopFailure.unexpected()));
    },
  );

  test(
    'should return ShopFailure when PERMISSION_DENIED PlatformException is thrown',
    () async {
      // arrange
      _setUpStorage(mockFirebaseStorage, 'https://www.example.com');
      when(mockFirebaseFirestore.collection('shops'))
          .thenReturn(mockCollectionReference);
      when(mockCollectionReference.doc(any)).thenReturn(mockDocumentReference);
      when(mockDocumentReference.set(any)).thenThrow(FirebaseException(
        plugin: '1',
        code: 'permission-denied',
      ));
      // act
      final result = await firebaseShopRepository.create(tShop, tShopLogo);
      // assert
      expect(result, left(const ShopFailure.insufficientPermission()));
    },
  );

  test(
    'should return ShopFailure if firebase uploading timed out',
    () async {
      // arrange
      _setUpStorage(mockFirebaseStorage, 'https://www.example.com');
      when(mockFirebaseFirestore.collection('shops'))
          .thenReturn(mockCollectionReference);
      when(mockCollectionReference.doc(any)).thenReturn(mockDocumentReference);
      when(mockDocumentReference.set(any)).thenAnswer((_) {
        return Future.delayed(Duration(seconds: 10));
      });
      // act
      final result = await firebaseShopRepository.create(tShop, tShopLogo);
      // assert
      expect(result, left(const ShopFailure.timeout(timeoutDuration)));
    },
  );
}
