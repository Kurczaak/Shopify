import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/kt.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:shopify_domain/core/images/photo.dart';
import 'package:shopify_domain/core/value_objects.dart';
import 'package:shopify_domain/product/product_failure.dart';
import 'package:shopify_domain/src/core/config.dart';
import 'package:shopify_domain/src/core/firestore_helpers.dart';
import 'package:shopify_domain/src/core/network/network_info.dart';
import 'package:shopify_domain/src/product/firebase_product_repository.dart';
import 'package:firebase_storage_mocks/firebase_storage_mocks.dart' as fake;
import 'package:shopify_domain/src/product/product_dtos.dart';

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
  final tProductForm = await loadProductFormWithPhotos();

  final tProduct = fixtureProduct;
  final file = await getImageFileFromAssets('test_logo.jpg');
  final invalidFile = await getImageFileFromAssets('test_logo.jpg');
  final photo = ProductPhoto(file);
  final invalidPhoto = ProductPhoto(invalidFile);
  final photosList = NonEmptyList5(KtList.from([photo, photo, photo]));
  final invalidPhotosList =
      NonEmptyList5(KtList.from([photo, photo, photo, invalidPhoto]));
  final tInvalidProductForm =
      tProductForm.copyWith(photos: right(invalidPhotosList));
  const photoUrl =
      'https://firebasestorage.googleapis.com/v0/b/shopify-app-6d29d.appspot.com/o/images%2Fshop_logos%2F08049a20-a695-11ec-88bb-77ec623e586e?alt=media&token=fc66e7b0-f2cc-4dfc-94dc-e9e9d35e1929';
  final nonemptyPhotosList = NonEmptyList5<ShopifyUrl>(KtList.from(
      [photoUrl, photoUrl, photoUrl].map((url) => ShopifyUrl(url)).toList()));
  final tProductWithUploadedPhotos =
      tProduct.copyWith(photos: nonemptyPhotosList);

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
        .thenAnswer((_) async => photoUrl);

    // Set Up Firestore
    when(mockFirestore.productsCollection).thenReturn(mockProductsReference);
    when(mockProductsReference.doc(any)).thenReturn(mockProductDoc);
    when(mockProductDoc
            .set(ProductDto.fromDomain(tProductWithUploadedPhotos).toJson()))
        .thenAnswer((_) async => Future.value);
  });
  group('create', () {
    test(
      'should check if the device has connection',
      () async {
        // arrange
        when(mockNetworkInfo.isConnected)
            .thenAnswer((_) async => Future.value(true));
        // act
        await repository.create(tProductForm);
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
          await repository.create(tProductForm);
          // assert
          verify(mockStorage.productPhotosReference);
        },
      );

      test(
        'should get given product\'s photos storage reference',
        () async {
          // act
          await repository.create(tProductForm);
          // assert
          verify(mockAllproductPhotosReference.child(tProduct.id.getOrCrash()));
        },
      );
      test(
        'should get references to all the product photos',
        () async {
          // act
          await repository.create(tProductForm);
          // assert
          verify(mockProductPhotosReference.child(any))
              .called(photosList.length);
        },
      );

      test(
        'should put all the photos to the storage',
        () async {
          // act
          await repository.create(tProductForm);
          // assert
          verify(mockPhotoReference.putFile(any)).called(photosList.length);
        },
      );

      test(
        'should get download url for the photos',
        () async {
          // act
          await repository.create(tProductForm);
          // assert
          verify(mockUploadedPhotoReference.getDownloadURL());
        },
      );

      test(
        'should get products collection',
        () async {
          // act
          await repository.create(tProductForm);
          // assert
          verify(mockFirestore.productsCollection);
        },
      );

      test(
        'should call product collection with the product\'s id',
        () async {
          // act
          await repository.create(tProductForm);
          // assert
          verify(mockProductsReference.doc(tProduct.id.getOrCrash()));
        },
      );

      test(
        'should set the product in the firestore',
        () async {
          // act
          await repository.create(tProductForm);
          // assert
          verify(mockProductDoc
              .set(ProductDto.fromDomain(tProductWithUploadedPhotos).toJson()));
        },
      );

      group('when Storage throws', () {
        group('a FirebaseException', () {
          test(
            'should attemp to delete photos',
            () async {
              // arrange
              when(mockPhotoReference.putFile(invalidPhoto.getOrCrash()))
                  .thenThrow(
                      FirebaseException(plugin: '', code: 'storage/unknown'));
              // act
              await repository.create(tInvalidProductForm);
              // assert
              verify(mockUploadedPhotoReference.delete()).called(3);
            },
          );
          test(
            'should return a ValueFailure',
            () async {
              // arrange
              when(mockPhotoReference.putFile(invalidPhoto.getOrCrash()))
                  .thenThrow(FirebaseException(
                      plugin: '', code: 'storage/unauthorized'));
              // act
              final result = await repository.create(tInvalidProductForm);
              // assert
              expect(
                  result, left(const ProductFailure.insufficientPermission()));
            },
          );
        });

        group('a TimeoutException', () {
          test(
            'should attempt to delete photos',
            () async {
              // arrange
              when(mockPhotoReference.putFile(invalidPhoto.getOrCrash()))
                  .thenThrow(
                      TimeoutException('Connection timeout ', timeoutDuration));
              // act
              await repository.create(tInvalidProductForm);
              // assert
              verify(mockUploadedPhotoReference.delete()).called(3);
            },
          );

          test(
            'should return a ValueFailure',
            () async {
              // arrange
              when(mockPhotoReference.putFile(invalidPhoto.getOrCrash()))
                  .thenThrow(
                      TimeoutException('Connection timeout ', timeoutDuration));
              // act
              final result = await repository.create(tInvalidProductForm);
              // assert
              expect(
                  result, left(const ProductFailure.timeout(timeoutDuration)));
            },
          );
        });

        group('an Exception', () {
          test(
            'should attempt to delete photos',
            () async {
              // arrange
              when(mockPhotoReference.putFile(invalidPhoto.getOrCrash()))
                  .thenThrow(UnimplementedError(
                      'An unimplemented error while creating a new product'));
              // act
              final call = repository.create;
              // assert
              expect(call(tInvalidProductForm),
                  throwsA(isA<UnimplementedError>()));
              await untilCalled(mockUploadedPhotoReference.delete());

              verify(mockUploadedPhotoReference.delete());
            },
          );
        });
      });

      group('when Firestore throws', () {
        group('a Firebase Exception', () {
          test(
            'should delte all the photos',
            () async {
              // arrange
              when(mockProductDoc.set(
                      ProductDto.fromDomain(tProductWithUploadedPhotos)
                          .toJson()))
                  .thenThrow(
                      FirebaseException(plugin: '', code: 'permission-denied'));
              // act
              await repository.create(tProductForm);
              // assert
              verify(mockUploadedPhotoReference.delete())
                  .called(photosList.length);
            },
          );

          test(
            'should return a value failure',
            () async {
              // arrange
              when(mockProductDoc.set(
                      ProductDto.fromDomain(tProductWithUploadedPhotos)
                          .toJson()))
                  .thenThrow(
                      FirebaseException(plugin: '', code: 'permission-denied'));
              // act
              final result = await repository.create(tProductForm);
              // assert
              expect(result, isA<Left<ProductFailure, Unit>>());
            },
          );
        });

        group('a Timeout Exception', () {
          test(
            'should delte all the photos',
            () async {
              // arrange
              when(mockProductDoc.set(
                      ProductDto.fromDomain(tProductWithUploadedPhotos)
                          .toJson()))
                  .thenThrow(
                      TimeoutException('Connection timeout', timeoutDuration));
              // act
              await repository.create(tProductForm);
              // assert
              verify(mockUploadedPhotoReference.delete())
                  .called(photosList.length);
            },
          );

          test(
            'should return a value failure',
            () async {
              // arrange
              when(mockProductDoc.set(
                      ProductDto.fromDomain(tProductWithUploadedPhotos)
                          .toJson()))
                  .thenThrow(
                      TimeoutException('Connection timeout', timeoutDuration));
              // act
              final result = await repository.create(tProductForm);
              // assert
              expect(result, isA<Left<ProductFailure, Unit>>());
            },
          );
        });

        group('an Exception', () {
          test(
            'should attempt to delete photos',
            () async {
              // arrange
              when(mockProductDoc.set(
                      ProductDto.fromDomain(tProductWithUploadedPhotos)
                          .toJson()))
                  .thenThrow(UnimplementedError(
                      'An unimplemented error while creating a new product'));
              when(mockStorage.refFromURL(any))
                  .thenReturn(mockUploadedPhotoReference);
              // act
              final call = repository.create;
              // assert
              expect(call(tProductForm), throwsA(isA<UnimplementedError>()));
              await untilCalled(mockUploadedPhotoReference.delete());

              verify(mockUploadedPhotoReference.delete());
            },
          );
        });
      });
    });
    test(
      'should return a ValueFailure when not connected to the internet',
      () async {
        // arrange

        when(mockNetworkInfo.isConnected).thenAnswer((_) async => false);
        // act
        final result = await repository.create(tProductForm);
        // assert
        expect(result, left(const ProductFailure.noInternetConnection()));
      },
    );
  });
}
