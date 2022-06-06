import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/kt.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:shopify_domain/core.dart';
import 'package:shopify_domain/core/network/network_info.dart';
import 'package:shopify_domain/product.dart';
import 'package:shopify_domain/shop.dart';
import 'package:shopify_domain/src/core/firestore_helpers.dart';
import 'package:shopify_domain/src/product/firebase_product_repository.dart';
import 'package:firebase_storage_mocks/firebase_storage_mocks.dart' as fake;
import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';
import 'package:shopify_domain/src/product/product_dtos.dart';
import 'package:shopify_domain/src/shop/shop_dtos.dart';
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
  DocumentReference,
  Query,
])
Future<void> main() async {
  late FirebaseProductRepositoryImpl repository;
  late MockFirebaseFirestore mockFirestore;
  late MockFirebaseStorage mockStorage;
  late MockNetworkInfo mockNetworkInfo;

  // Storage SetUp
  late MockReference mockAllproductsPhotosReference;
  late MockReference mockProductPhotosReference;
  late MockReference mockPhoto1Reference;
  late MockReference mockPhoto2Reference;
  late MockReference mockPhoto0Reference;
  late MockReference mockUploadedPhoto0Reference;
  late MockReference mockUploadedPhoto1Reference;
  late MockReference mockUploadedPhoto2Reference;

  // ================Firestore SetUp==================
  // Shop
  late MockCollectionReference<Map<String, dynamic>> mockShopsCollection;
  late MockDocumentReference<Map<String, dynamic>> mockShopDocument;
  late MockCollectionReference<Map<String, dynamic>> mockShopProductsCollection;

  // Products
  late MockCollectionReference<Map<String, dynamic>> mockProductsCollection;
  late MockDocumentReference<Map<String, dynamic>> mockProductDocument;

  // Test Data
  final uploadedLinks = [
    'https://firebasestorage.googleapis.com/0',
    'https://firebasestorage.googleapis.com/1',
    'https://firebasestorage.googleapis.com/2',
  ];
  final shopifyUrlsList = [
    ShopifyUrl(uploadedLinks[0]),
    ShopifyUrl(uploadedLinks[1]),
    ShopifyUrl(uploadedLinks[2]),
  ];
  final tProduct = fixtureProduct;
  final tProductWithLinks =
      tProduct.copyWith(photos: NonEmptyList5(KtList.from(shopifyUrlsList)));
  final productDto = ProductDto.fromDomain(tProductWithLinks);
  final file = await getImageFileFromAssets('test_logo.jpg');
  final invalidFile = await getImageFileFromAssets('too_small_logo.jpg');
  final photo = ProductPhoto(file);
  final photosList = NonEmptyList5(KtList.from([photo, photo, photo]));

  // Set Up Firestore DB
  const shopDocumentIdStr = "ad5d60d0-7844-11ec-a53d-03c2fc2917f5";
  const shopNameStr = "Shop Name";
  const streetNameStr = "Street Name";
  const cityNameStr = "Łowicz";
  const postalCodeStr = "99-400";
  const apartmentNumberStr = '1';
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
  final shopProductDto =
      ShopProductDto.fromDomain(product: tProductWithLinks, price: tPrice);

  // SetUp Fake FIrestore
  final fakeFirestore = FakeFirebaseFirestore();
  await fakeFirestore
      .collection('products')
      .doc(tProduct.id.getOrCrash())
      .set(ProductDto.fromDomain(tProduct).toJson());
  await fakeFirestore
      .collection('shops')
      .doc(tShop.id.getOrCrash())
      .set(ShopDto.fromDomain(tShop).toJson());

  void _setUpFirestoreMocks() {
    // arrange
    when(mockNetworkInfo.isConnected).thenAnswer((_) async => true);
    // Products collection
    when(mockFirestore.collection('products'))
        .thenReturn(mockProductsCollection);
    when(mockProductsCollection.doc(tProduct.id.getOrCrash()))
        .thenReturn(mockProductDocument);
    when(mockProductDocument.get()).thenAnswer((_) => fakeFirestore
        .collection('products')
        .doc(tProduct.id.getOrCrash())
        .get());
    when(mockProductDocument.set(ProductDto.fromDomain(tProduct).toJson()))
        .thenAnswer((_) async => Future.value);
    // Shops collection
    when(mockFirestore.collection('shops')).thenReturn(mockShopsCollection);
    when(mockShopsCollection.doc(tShop.id.getOrCrash()))
        .thenReturn(mockShopDocument);
    when(mockShopDocument.get()).thenAnswer((_) async =>
        fakeFirestore.collection('shops').doc(tShop.id.getOrCrash()).get());

    // the shop's products collection
    when(mockShopDocument.collection('products'))
        .thenReturn(mockShopProductsCollection);
    when(mockShopProductsCollection.add(shopProductDto.toJson()))
        .thenAnswer((_) async {
      return mockProductDocument;
    });
    // Getting by barcode
    when(mockProductsCollection.where('barcode',
            isEqualTo: tProduct.barcode.getOrCrash()))
        .thenReturn(fakeFirestore
            .collection('products')
            .where('barcode', isEqualTo: tProduct.barcode.getOrCrash()));
  }

  void _setUpStorageMocks() {
    when(mockStorage.productPhotosReference)
        .thenReturn(mockAllproductsPhotosReference);
    when(mockAllproductsPhotosReference.child(any))
        .thenReturn(mockProductPhotosReference);
    when(mockProductPhotosReference.child('0')).thenReturn(mockPhoto0Reference);
    when(mockProductPhotosReference.child('1')).thenReturn(mockPhoto1Reference);
    when(mockProductPhotosReference.child('2')).thenReturn(mockPhoto2Reference);
    when(mockPhoto0Reference.putFile(any))
        .thenAnswer((_) => fake.MockUploadTask(mockUploadedPhoto0Reference));
    when(mockPhoto1Reference.putFile(any))
        .thenAnswer((_) => fake.MockUploadTask(mockUploadedPhoto1Reference));
    when(mockPhoto2Reference.putFile(any))
        .thenAnswer((_) => fake.MockUploadTask(mockUploadedPhoto2Reference));

    when(mockUploadedPhoto0Reference.getDownloadURL())
        .thenAnswer((_) async => uploadedLinks[0]);
    when(mockUploadedPhoto1Reference.getDownloadURL())
        .thenAnswer((_) async => uploadedLinks[1]);
    when(mockUploadedPhoto2Reference.getDownloadURL())
        .thenAnswer((_) async => uploadedLinks[2]);
  }

  setUp(() {
    // Shop
    mockShopsCollection = MockCollectionReference<Map<String, dynamic>>();
    mockShopDocument = MockDocumentReference<Map<String, dynamic>>();
    mockShopProductsCollection =
        MockCollectionReference<Map<String, dynamic>>();
    // Product
    mockProductsCollection = MockCollectionReference<Map<String, dynamic>>();
    mockProductDocument = MockDocumentReference<Map<String, dynamic>>();

    // Storage SetUp
    mockAllproductsPhotosReference = MockReference();
    mockProductPhotosReference = MockReference();
    mockPhoto1Reference = MockReference();
    mockPhoto2Reference = MockReference();
    mockPhoto0Reference = MockReference();
    mockUploadedPhoto0Reference = MockReference();
    mockUploadedPhoto1Reference = MockReference();
    mockUploadedPhoto2Reference = MockReference();

    mockFirestore = MockFirebaseFirestore();
    mockStorage = MockFirebaseStorage();
    mockNetworkInfo = MockNetworkInfo();
    repository = FirebaseProductRepositoryImpl(
        mockFirestore, mockStorage, mockNetworkInfo);
    _setUpFirestoreMocks();
    _setUpStorageMocks();
  });

  group('addToShop', () {
    test(
      'should verify internet connection',
      () async {
        // arrange
        when(mockNetworkInfo.isConnected).thenAnswer((_) async => true);
        // act
        await repository.addToShop(tProduct, tPrice, tShop);
        // assert
        verify(mockNetworkInfo.isConnected).called(1);
      },
    );

    test(
      'should return a value failure when no internet connection is present',
      () async {
        // arrange
        when(mockNetworkInfo.isConnected).thenAnswer((_) async => false);
        // act
        final result = await repository.addToShop(tProduct, tPrice, tShop);
        // assert
        verify(mockNetworkInfo.isConnected).called(1);
        expect(result, left(const ProductFailure.noInternetConnection()));
      },
    );

    test('should return a failure if the shop is invalid', () async {
      // arrange
      when(mockNetworkInfo.isConnected).thenAnswer((_) async => true);
      final invalidShop = tShop.copyWith(shopName: ShopName(''));
      // act
      final result = await repository.addToShop(tProduct, tPrice, invalidShop);
      // assert
      expect(
        result,
        left(
          const ProductFailure.valueFailure(
            ValueFailure<String>.core(CoreValueFailure.empty()),
          ),
        ),
      );
    });
    test('should return a failure if the price is invalid', () async {
      // arrange
      final invalidPrice =
          Price(currency: Currency(Currencies.zl), price: PositiveNumber(-1.0));
      // act
      final result = await repository.addToShop(tProduct, invalidPrice, tShop);
      // assert
      expect(
        result,
        left(
          const ProductFailure.valueFailure(
            ValueFailure<double>.core(
              CoreValueFailure.numberOutsideInterval(
                failedValue: -1.0,
                max: PositiveNumber.maxPositiveNumber,
                min: PositiveNumber.minPositiveNumber,
              ),
            ),
          ),
        ),
      );
    });
    test('should return a failure if the product is invalid', () async {
      // arrange
      final invalidProduct = tProduct.copyWith(name: ProductName(''));
      // act
      final result = await repository.addToShop(invalidProduct, tPrice, tShop);
      // assert
      expect(
        result,
        left(
          const ProductFailure.valueFailure(
            ValueFailure<String>.core(CoreValueFailure.empty()),
          ),
        ),
      );
    });
    test(
      'should get the shop by its id',
      () async {
        // arrange
        // act
        await repository.addToShop(tProduct, tPrice, tShop);
        // assert
        verify(mockShopsCollection.doc(tShop.id.getOrCrash()));
      },
    );

    test(
      'should return a failure when no shop with given id exists',
      () async {
        // arrange
        final nonexistingShop = tShop.copyWith(id: UniqueId());
        when(mockShopsCollection.doc(nonexistingShop.id.getOrCrash()))
            .thenReturn(fakeFirestore
                .collection('shops')
                .doc(nonexistingShop.id.getOrCrash()));
        // act
        final result =
            await repository.addToShop(tProduct, tPrice, nonexistingShop);
        // assert
        expect(result, left(const ProductFailure.shopNotFound()));
      },
    );

    test(
      'should return a failure when no product with given id exists',
      () async {
        // arrange
        final nonexistingProduct = tProduct.copyWith(id: UniqueId());
        when(mockProductsCollection.doc(nonexistingProduct.id.getOrCrash()))
            .thenReturn(fakeFirestore
                .collection('products')
                .doc(nonexistingProduct.id.getOrCrash()));
        // act
        final result =
            await repository.addToShop(nonexistingProduct, tPrice, tShop);
        // assert
        expect(result, left(const ProductFailure.productNotFound()));
      },
    );

    test(
      'should get products collection of the shop',
      () async {
        // arrange
        // act
        await repository.addToShop(tProduct, tPrice, tShop);
        // assert
        verify(mockShopDocument.collection('products')).called(1);
      },
    );

    test(
      'should add a new product with its id and a price',
      () async {
        // arrange
        // act
        await repository.addToShop(tProduct, tPrice, tShop);
        // assert
        verify(mockShopProductsCollection.add(shopProductDto.toJson()))
            .called(1);
      },
    );
    test('should return a failure if connection timed out', () async {
      // arrange
      when(mockShopProductsCollection.add(shopProductDto.toJson()))
          .thenAnswer((_) async {
        await Future.delayed(timeoutDuration);
        await Future.delayed(const Duration(seconds: 1));
        return mockProductDocument;
      });
      // assert later
      expectLater(
          mockShopProductsCollection
              .add(shopProductDto.toJson())
              .timeout(timeoutDuration),
          throwsA(isA<TimeoutException>()));
      // act
      final result = await repository.addToShop(tProduct, tPrice, tShop);
      // assert
      expect(result, left(const ProductFailure.timeout(timeoutDuration)));
    });

    test('should return a failure if firebase throws an exception', () async {
      // arrange
      when(mockShopProductsCollection.add(shopProductDto.toJson())).thenThrow(
          FirebaseException(plugin: 'plugin', code: 'permission-denied'));
      // act
      final result = await repository.addToShop(tProduct, tPrice, tShop);
      // assert
      expect(result, left(const ProductFailure.insufficientPermission()));
    });
  });

  group('getByBarcode', () {
    test(
      'should check if has internet connection',
      () async {
        // act
        await repository.getByBarcode(tProduct.barcode);
        // assert
        verify(mockNetworkInfo.isConnected).called(1);
      },
    );
    test(
      'should get products collection',
      () async {
        // act
        await repository.getByBarcode(tProduct.barcode);
        // assert
        verify(mockFirestore.productsCollection).called(1);
      },
    );
    test(
      'should look for the product by its barcode',
      () async {
        // act
        await repository.getByBarcode(tProduct.barcode);
        // assert
        verify(mockProductsCollection.where('barcode',
                isEqualTo: tProduct.barcode.getOrCrash()))
            .called(1);
      },
    );
    test(
      'should return the product if found',
      () async {
        // act
        final result = await repository.getByBarcode(tProduct.barcode);
        // assert
        expect(result, right(tProduct));
      },
    );
    test(
      'should return a failure if product has not been found',
      () async {
        // arramge
        when(mockFirestore.productsCollection)
            .thenReturn(fakeFirestore.collection('products'));
        // act
        final result =
            await repository.getByBarcode(Barcode('nonexistingbarcode'));
        // assert
        expect(result, left(const ProductFailure.productNotFound()));
      },
    );
    test(
      'should return a failure if no internet connection is present',
      () async {
        when(mockNetworkInfo.isConnected).thenAnswer((_) async => false);
        // act
        final result = await repository.getByBarcode(tProduct.barcode);
        // assert
        expect(result, left(const ProductFailure.noInternetConnection()));
      },
    );
  });
  group('create', () {
    test(
      'should check internet connection',
      () async {
        // act
        await repository.create(tProduct, photosList);
        // assert
        verify(mockNetworkInfo.isConnected);
      },
    );

    test(
      'should return a failure when no internet connection is present',
      () async {
        // arrange
        when(mockNetworkInfo.isConnected).thenAnswer((_) async => false);
        // act
        final result = await repository.create(tProduct, photosList);
        // assert
        expect(result, isA<Left<ProductFailure, Unit>>());
        expect(result, const Left(ProductFailure.noInternetConnection()));
      },
    );

    test(
      'should return a failure if photos are invalid',
      () async {
        // arrange
        final invalidPhoto = ProductPhoto(invalidFile);
        final invalidPhotosList =
            NonEmptyList5(KtList.from([photo, photo, photo, invalidPhoto]));
        // act
        final result = await repository.create(tProduct, invalidPhotosList);
        // assert
        expect(result, isA<Left<ProductFailure, Unit>>());
      },
    );
    test(
      'should get all the products\' storage folder',
      () async {
        // act
        await repository.create(tProduct, photosList);
        // assert
        verify(mockStorage.productPhotosReference);
      },
    );
    test(
      'should get the product\'s photos storage folder',
      () async {
        // act
        await repository.create(tProduct, photosList);
        // assert
        verify(mockAllproductsPhotosReference.child(tProduct.id.getOrCrash()));
      },
    );

    test(
      'should get references to all the photos',
      () async {
        // act
        await repository.create(tProduct, photosList);
        // assert
        int i = 0;
        for (final photo in photosList.getOrCrash().iter) {
          verify(mockProductPhotosReference.child(i.toString()));
          i++;
        }
      },
    );

    test(
      'should upload all the photos',
      () async {
        // act
        await repository.create(tProduct, photosList);
        // assert
        verify(mockPhoto0Reference
            .putFile(photosList.getOrCrash().elementAt(0).getOrCrash()));
        verify(mockPhoto1Reference
            .putFile(photosList.getOrCrash().elementAt(1).getOrCrash()));
        verify(mockPhoto2Reference
            .putFile(photosList.getOrCrash().elementAt(2).getOrCrash()));
      },
    );
    test(
      'should return a failure if a firebase exception is thrown during photo upload',
      () async {
        // arrange
        when(mockPhoto1Reference
                .putFile(photosList.getOrCrash().elementAt(1).getOrCrash()))
            .thenThrow(
                FirebaseException(plugin: 'plugin', code: 'permission-denied'));
        // act
        final result = await repository.create(tProduct, photosList);
        // assert
        expect(result, isA<Left<ProductFailure, Unit>>());
        expect(result, left(const ProductFailure.insufficientPermission()));
      },
    );

    test(
      'should get the photos urls',
      () async {
        // act
        await repository.create(tProduct, photosList);
        // assert
        verify(mockUploadedPhoto0Reference.getDownloadURL());
        verify(mockUploadedPhoto1Reference.getDownloadURL());
        verify(mockUploadedPhoto2Reference.getDownloadURL());
      },
    );

    test(
      'should return a failure if urls contain invalid data',
      () async {
        // arrange
        when(mockUploadedPhoto0Reference.getDownloadURL())
            .thenAnswer((_) async => '');
        // act
        final result = await repository.create(tProduct, photosList);
        // assert
        expect(result, isA<Left<ProductFailure, Unit>>());
        expect(
          result,
          left(
            const ProductFailure.valueFailure(
              ValueFailure<String>.core(
                CoreValueFailure.empty(),
              ),
            ),
          ),
        );
      },
    );

    test(
      'should get products collection',
      () async {
        // act
        await repository.create(tProduct, photosList);
        // assert
        verify(mockFirestore.collection('products'));
      },
    );
    test(
      'should get the product document',
      () async {
        // act
        await repository.create(tProduct, photosList);
        // assert
        verify(mockProductsCollection.doc(tProduct.id.getOrCrash()));
      },
    );

    test(
      'should set the products data',
      () async {
        // act
        await repository.create(tProduct, photosList);
        // assert
        verify(mockProductDocument.set(productDto.toJson()));
      },
    );
    test(
      'should delete uploaded photos if failed to upload the product to the DB',
      () async {
        // arrange
        when(mockProductDocument.set(productDto.toJson())).thenThrow(
            FirebaseException(plugin: 'plugin', code: 'permission-denied'));
        // act
        await repository.create(tProduct, photosList);
        // assert
        verify(mockProductPhotosReference.delete()).called(1);
      },
    );

    test(
      'should return a value failure if failed to upload the product to the DB',
      () async {
        // arrange
        when(mockProductDocument.set(productDto.toJson())).thenThrow(
            FirebaseException(plugin: 'plugin', code: 'permission-denied'));
        // act
        final result = await repository.create(tProduct, photosList);
        // assert
        expect(result, isA<Left<ProductFailure, Unit>>());
        expect(result, left(const ProductFailure.insufficientPermission()));
      },
    );

    test(
      'should return a value failure if timedOut while uploading the product to the DB',
      () async {
        // arrange
        when(mockProductDocument.set(productDto.toJson()))
            .thenAnswer((_) async {
          await Future.delayed(timeoutDuration);
          await Future.delayed(const Duration(milliseconds: 20));
        });
        // act
        final result = await repository.create(tProduct, photosList);
        // assert
        expect(result, isA<Left<ProductFailure, Unit>>());
        expect(result, left(const ProductFailure.timeout(timeoutDuration)));
      },
    );

    test(
      'should return a unit if succesfully created',
      () async {
        // act
        final result = await repository.create(tProduct, photosList);
        // assert
        expect(result, right(unit));
      },
    );
  });
}
