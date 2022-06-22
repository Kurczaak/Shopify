import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:geoflutterfire/geoflutterfire.dart';
import 'package:kt_dart/kt.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:shopify_domain/core.dart';
import 'package:shopify_domain/core/network/network_info.dart';
import 'package:shopify_domain/product.dart';
import 'package:shopify_domain/shop.dart';
import 'package:shopify_domain/src/product/firebase_product_repository.dart';
import 'firebase_product_repository_read_test.mocks.dart';

@GenerateMocks([
  NetworkInfo,
  FirebaseFirestore,
  Geoflutterfire,
  CollectionReference,
  DocumentReference,
  GeoFireCollectionRef,
  FirebaseStorage,
  Query
])
void main() async {
  // Mocks
  late MockNetworkInfo mockNetworkInfo;
  late MockFirebaseFirestore mockFirestore;
  late MockFirebaseStorage mockStorage;

  late FirebaseProductRepositoryImpl productRepository;
  late MockCollectionReference<Map<String, dynamic>>
      mockAddedProductsCollection;
  late MockQuery<Map<String, dynamic>> mockWhereCategoryQuery;
  late MockQuery<Map<String, dynamic>> mockWhereSHopIdQUery;
  // Real data
  final tLocation = Location.empty();
  final tProduct = Product.empty().copyWith(
      barcode: Barcode('ABC-DEF-123'),
      category: Category(Categories.diary),
      brand: BrandName('Test Brand'),
      name: ProductName('Test Product'),
      photos: NonEmptyList5(KtList.from([
        ShopifyUrl('https://www.photo.com/1'),
        ShopifyUrl('https://www.photo.com/2'),
        ShopifyUrl('https://www.photo.com/3'),
      ])));

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
  final tPrice = Price.fromPrimitives(12.99, 'zl');

  final tAddedProductDto = PricedProductDto(
    productId: tProduct.id.getOrCrash(),
    barcode: tProduct.barcode.getOrCrash(),
    category: tProduct.category.getOrCrash().name,
    name: tProduct.name.getOrCrash(),
    brand: tProduct.brand.getOrCrash(),
    photo: 'https://www.photo.com/1',
    weight: WeightDto.fromDomain(tProduct.weight),
    price: PriceDto.fromDomain(tPrice),
    shopId: tShop.id.getOrCrash(),
  );

  final tPricedProduct = tAddedProductDto.toDomain();

  final fakeFirestore = FakeFirebaseFirestore();
  await fakeFirestore
      .collection('pricedProducts')
      .doc(tProduct.id.getOrCrash())
      .set(tAddedProductDto.toJson());

  setUp(() {
    mockStorage = MockFirebaseStorage();
    mockNetworkInfo = MockNetworkInfo();
    mockFirestore = MockFirebaseFirestore();

    productRepository = FirebaseProductRepositoryImpl(
        networkInfo: mockNetworkInfo,
        firestore: mockFirestore,
        storage: mockStorage);
    mockAddedProductsCollection =
        MockCollectionReference<Map<String, dynamic>>();
    mockWhereCategoryQuery = MockQuery<Map<String, dynamic>>();
    mockWhereSHopIdQUery = MockQuery<Map<String, dynamic>>();

    // When
    when(mockNetworkInfo.isConnected).thenAnswer((_) async => true);
    when(mockFirestore.collection('pricedProducts'))
        .thenReturn(mockAddedProductsCollection);

    when(mockAddedProductsCollection.where('shopId',
            isEqualTo: tShop.id.getOrCrash()))
        .thenAnswer((_) => fakeFirestore
            .collection('pricedProducts')
            .where('shopId', isEqualTo: tShop.id.getOrCrash()));
  });

  group('watchAllFromShopByCategory', () {
    setUp(() {
      when(mockAddedProductsCollection.where('shopId',
              isEqualTo: tShop.id.getOrCrash()))
          .thenReturn(mockWhereSHopIdQUery);
      when(mockWhereSHopIdQUery.where('category',
              isEqualTo: tProduct.category.getOrCrash().name))
          .thenAnswer((_) => fakeFirestore
              .collection('pricedProducts')
              .where('shopId', isEqualTo: tShop.id.getOrCrash())
              .where('category',
                  isEqualTo: tProduct.category.getOrCrash().name));
    });
    test(
      'should check the internet connection',
      () async {
        // act
        productRepository
            .watchAllFromShopByCategory(tShop, tProduct.category)
            .listen((event) {});
        // assert
        await untilCalled(mockNetworkInfo.isConnected);
        verify(mockNetworkInfo.isConnected);
      },
    );

    test(
      'should return a failure if no internet connection is available',
      () async {
        // arrange
        when(mockNetworkInfo.isConnected).thenAnswer((_) async => false);
        // act
        final result = productRepository.watchAllFromShopByCategory(
            tShop, tProduct.category);
        // assert
        expectLater(
            result.asBroadcastStream(),
            emits(
              left(const ProductFailure.noInternetConnection()),
            ));
      },
    );

    test(
      'should get priced products collection',
      () async {
        // act
        productRepository
            .watchAllFromShopByCategory(tShop, tProduct.category)
            .listen((event) {});
        // assert
        await untilCalled(mockFirestore.collection('pricedProducts'));
        verify(mockFirestore.collection('pricedProducts'));
      },
    );

    test(
      'should query products by shopId and category',
      () async {
        // act
        productRepository
            .watchAllFromShopByCategory(tShop, tProduct.category)
            .listen((event) {});
        // assert
        await untilCalled(mockFirestore.collection('pricedProducts'));
        verify(mockWhereSHopIdQUery.where('category',
            isEqualTo: tProduct.category.getOrCrash().name));
      },
    );

    test(
      'should yield found products',
      () async {
        // act
        final result = productRepository.watchAllFromShopByCategory(
            tShop, tProduct.category);
        // assert
        expectLater(result.asBroadcastStream(),
            emits(right(KtList.from([tPricedProduct]))));
      },
    );

    test('should return a failure if connection timed out', () async {
      // arrange
      when(mockWhereSHopIdQUery.where('category',
              isEqualTo: tProduct.category.getOrCrash().name))
          .thenReturn(mockWhereCategoryQuery);
      when(mockWhereCategoryQuery.get()).thenAnswer((_) async {
        await Future.delayed(timeoutDuration);
        await Future.delayed(const Duration(seconds: 1));
        final query = fakeFirestore
            .collection('pricedProducts')
            .where('shopId', isEqualTo: tShop.id.getOrCrash())
            .where('category', isEqualTo: tProduct.category.getOrCrash().name)
            .get();
        return query;
      });
      // assert later
      expectLater(mockWhereCategoryQuery.get().timeout(timeoutDuration),
          throwsA(isA<TimeoutException>()));
      // act
      final result = productRepository.watchAllFromShopByCategory(
          tShop, tProduct.category);
      // assert
      expectLater(result.asBroadcastStream(),
          emits(left(const ProductFailure.timeout(timeoutDuration))));
    });

    test('should return a failure if firebase throws an exception', () async {
      // arrange

      // arrange
      when(mockWhereSHopIdQUery.where('category',
              isEqualTo: tProduct.category.getOrCrash().name))
          .thenReturn(mockWhereCategoryQuery);
      when(mockWhereCategoryQuery.get()).thenThrow(
          FirebaseException(plugin: 'plugin', code: 'permission-denied'));

      // act
      final result = productRepository.watchAllFromShopByCategory(
          tShop, tProduct.category);
      // assert
      expectLater(result.asBroadcastStream(),
          emits(left(const ProductFailure.insufficientPermission())));
    });
  });

  group('watchAllFromShop', () {
    test(
      'should check the internet connection',
      () async {
        // act
        productRepository.watchAllFromShop(tShop).listen((event) {});
        // assert
        await untilCalled(mockNetworkInfo.isConnected);
        verify(mockNetworkInfo.isConnected);
      },
    );

    test(
      'should return a failure if no internet connection is available',
      () async {
        // arrange
        when(mockNetworkInfo.isConnected).thenAnswer((_) async => false);
        // act
        final result = productRepository.watchAllFromShop(tShop);
        // assert
        expectLater(
            result.asBroadcastStream(),
            emits(
              left(const ProductFailure.noInternetConnection()),
            ));
      },
    );

    test(
      'should get priced products collection',
      () async {
        // act
        productRepository.watchAllFromShop(tShop).listen((event) {});
        // assert
        await untilCalled(mockFirestore.collection('pricedProducts'));
        verify(mockFirestore.collection('pricedProducts'));
      },
    );

    test(
      'should query products by shopId',
      () async {
        // act
        productRepository.watchAllFromShop(tShop).listen((event) {});
        // assert
        await untilCalled(mockFirestore.collection('pricedProducts'));
        verify(mockAddedProductsCollection.where('shopId',
            isEqualTo: tShop.id.getOrCrash()));
      },
    );

    test(
      'should yield found products',
      () async {
        // act
        final result = productRepository.watchAllFromShop(tShop);
        // assert
        expectLater(result.asBroadcastStream(),
            emits(right(KtList.from([tPricedProduct]))));
      },
    );

    test('should return a failure if connection timed out', () async {
      // arrange
      when(mockAddedProductsCollection.where('shopId',
              isEqualTo: tShop.id.getOrCrash()))
          .thenReturn(mockWhereSHopIdQUery);
      when(mockWhereSHopIdQUery.get()).thenAnswer((_) async {
        await Future.delayed(timeoutDuration);
        await Future.delayed(const Duration(seconds: 1));
        final query = fakeFirestore
            .collection('pricedProducts')
            .where('shopId', isEqualTo: tShop.id.getOrCrash())
            .where('category', isEqualTo: tProduct.category.getOrCrash().name)
            .get();
        return query;
      });
      // act
      final result = productRepository.watchAllFromShop(tShop);
      // assert
      expectLater(result.asBroadcastStream(),
          emits(left(const ProductFailure.timeout(timeoutDuration))));
    });

    test('should return a failure if firebase throws an exception', () async {
      // arrange
      when(mockAddedProductsCollection.where('shopId',
              isEqualTo: tShop.id.getOrCrash()))
          .thenReturn(mockWhereSHopIdQUery);
      when(mockWhereSHopIdQUery.get()).thenThrow(
          FirebaseException(plugin: 'plugin', code: 'permission-denied'));

      // act
      final result = productRepository.watchAllFromShop(tShop);
      // assert
      expectLater(result.asBroadcastStream(),
          emits(left(const ProductFailure.insufficientPermission())));
    });
  });
}
