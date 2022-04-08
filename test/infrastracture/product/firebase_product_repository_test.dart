import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/kt.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:shopify_manager/domain/core/images/photo.dart';
import 'package:shopify_manager/domain/core/value_objects.dart';
import 'package:shopify_manager/domain/product/product.dart';
import 'package:shopify_manager/infrastructure/core/firestore_helpers.dart';
import 'package:shopify_manager/infrastructure/core/network/network_info.dart';
import 'package:shopify_manager/infrastructure/product/firebase_product_repository.dart';
import 'package:firebase_storage_mocks/firebase_storage_mocks.dart' as fake;

import '../../fixtures/test_product.dart';
import '../../utils/image_reader.dart';
import './firebase_product_repository_test.mocks.dart';

@GenerateMocks([
  FirebaseFirestore,
  FirebaseStorage,
  NetworkInfo,
  Reference,
  UploadTask,
  TaskSnapshot,
  CollectionReference,
  DocumentReference
])
Future<void> main() async {
  late FirebaseProductRepositoryImpl repository;
  late MockFirebaseFirestore mockFirestore;
  late MockFirebaseStorage mockStorage;
  late MockNetworkInfo mockNetworkInfo;

  // Storage SetUp
  late MockReference mockAllproductPhotosReference;
  late MockReference mockProductPhotosReference;
  late MockReference mockPhotoReference;
  late MockReference mockUploadedPhotoReference;

  // Firestore SetUp
  late MockCollectionReference<Map<String, dynamic>> mockProductsReference;
  late MockDocumentReference<Map<String, dynamic>> mockProductDoc;

  // Test Data
  final tProduct = fixtureProduct;
  final file = await getImageFileFromAssets('test_logo.jpg');
  final photo = ProductPhoto(file);
  final photosList = NonEmptyList5(KtList.from([photo, photo, photo]));

  setUp(() {
    mockFirestore = MockFirebaseFirestore();
    mockStorage = MockFirebaseStorage();
    mockNetworkInfo = MockNetworkInfo();
    repository = FirebaseProductRepositoryImpl(
        mockFirestore, mockStorage, mockNetworkInfo);

    // Storage SetUp
    mockAllproductPhotosReference = MockReference();
    mockProductPhotosReference = MockReference();
    mockPhotoReference = MockReference();

    // Firestore SetUp
    mockProductsReference = MockCollectionReference();
    mockProductDoc = MockDocumentReference();

    // Set Up Storage
    when(mockStorage.productPhotosReference)
        .thenReturn(mockAllproductPhotosReference);
    when(mockAllproductPhotosReference.child(any))
        .thenReturn(mockProductPhotosReference);
    when(mockProductPhotosReference.child(any)).thenReturn(mockPhotoReference);
    mockUploadedPhotoReference = MockReference();
    when(mockPhotoReference.putFile(any))
        .thenAnswer((_) => fake.MockUploadTask(mockUploadedPhotoReference));
    when(mockUploadedPhotoReference.getDownloadURL())
        .thenAnswer((_) async => 'https://www.newLogo.com/logo123');

    // Set Up Firestore
    when(mockFirestore.productsCollection).thenReturn(mockProductsReference);
    when(mockProductsReference.doc(any)).thenReturn(mockProductDoc);
  });
  group('create', () {
    test(
      'should check if the device has connection',
      () async {
        // arrange
        when(mockNetworkInfo.isConnected)
            .thenAnswer((_) async => Future.value(true));
        // act
        await repository.create(tProduct, photosList);
        // assert
        verify(mockNetworkInfo.isConnected);
      },
    );

    group('when isConnected', () {
      setUp(() {
        when(mockNetworkInfo.isConnected)
            .thenAnswer((_) async => Future.value(true));
      });
      test(
        'should get products storage reference',
        () async {
          // act
          await repository.create(tProduct, photosList);
          // assert
          verify(mockStorage.productPhotosReference);
        },
      );

      test(
        'should get given product\'s photos storage reference',
        () async {
          // act
          await repository.create(tProduct, photosList);
          // assert
          verify(mockAllproductPhotosReference.child(tProduct.id.getOrCrash()));
        },
      );
      test(
        'should get references to all the product photos',
        () async {
          // act
          await repository.create(tProduct, photosList);
          // assert
          verify(mockProductPhotosReference.child(any))
              .called(photosList.length);
        },
      );

      test(
        'should put all the photos to the storage',
        () async {
          // act
          await repository.create(tProduct, photosList);
          // assert
          verify(mockPhotoReference.putFile(any)).called(photosList.length);
        },
      );

      test(
        'should get download url for the photos',
        () async {
          // act
          await repository.create(tProduct, photosList);
          // assert
          verify(mockUploadedPhotoReference.getDownloadURL());
        },
      );

      test(
        'should get products collection',
        () async {
          // act
          await repository.create(tProduct, photosList);
          // assert
          verify(mockFirestore.productsCollection);
        },
      );

      test(
        'should call product collection with the product\'s id',
        () async {
          // act
          await repository.create(tProduct, photosList);
          // assert
          verify(mockProductsReference.doc(tProduct.id.getOrCrash()));
        },
      );
    });
  });
}
