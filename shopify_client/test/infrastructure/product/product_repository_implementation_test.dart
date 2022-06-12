import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:geoflutterfire/geoflutterfire.dart';
import 'package:kt_dart/kt.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:shopify_client/infrastructure/product/product_repository_implementation.dart';
import 'package:shopify_domain/core.dart';
import 'package:shopify_domain/core/network/network_info.dart';
import 'package:shopify_domain/product.dart';
import 'package:shopify_domain/shop.dart';
import 'product_repository_implementation_test.mocks.dart';

@GenerateMocks([
  NetworkInfo,
  FirebaseFirestore,
  Geoflutterfire,
  CollectionReference,
  DocumentReference,
  GeoFireCollectionRef
])
void main() async {
  // Mocks
  late MockNetworkInfo mockNetworkInfo;
  late MockFirebaseFirestore mockFirestore;
  late MockGeoflutterfire mockGeoflutterfire;
  late ProductRepositoryImpl productRepository;
  late MockCollectionReference<Map<String, dynamic>>
      mockAddedProductsCollection;
  late MockDocumentReference<Map<String, dynamic>> mockAddedProductDocument;
  late MockGeoFireCollectionRef mockGeoCollection;

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

  final tAddedProductDto = AddedProductDto(
      productId: tProduct.id.getOrCrash(),
      barcode: tProduct.barcode.getOrCrash(),
      productCategory: tProduct.category.getOrCrash().name,
      productName: tProduct.name.getOrCrash(),
      brandName: tProduct.brand.getOrCrash(),
      productPhotos: [
        'https://www.photo.com/1',
        'https://www.photo.com/2',
        'https://www.photo.com/3'
      ],
      weight: WeightDto.fromDomain(tProduct.weight),
      price: PriceDto.fromDomain(tPrice),
      shopId: tShop.id.getOrCrash(),
      position: LocationDto.fromDomain(tShop.location),
      address: AddressDto.fromDomain(tShop.address),
      shopLogo: tShop.logoUrl.getOrCrash(),
      shopName: tShop.shopName.getOrCrash());

  final tProductSnippet = tAddedProductDto.toSnippet();

  const double radius = 5.0;

  final fakeFirestore = FakeFirebaseFirestore();
  await fakeFirestore
      .collection('addedProducts')
      .doc(tProduct.id.getOrCrash())
      .set(tAddedProductDto.toJson());
  final fakeDocumentSnapshot = await fakeFirestore
      .collection('addedProducts')
      .doc(tProduct.id.getOrCrash())
      .get();
  final center = Geoflutterfire()
      .point(latitude: tLocation.latitude, longitude: tLocation.longitude);
  final listOfProducts = [
    fakeDocumentSnapshot,
    fakeDocumentSnapshot,
    fakeDocumentSnapshot
  ];
  const field = 'position';

  setUp(() {
    mockNetworkInfo = MockNetworkInfo();
    mockFirestore = MockFirebaseFirestore();
    mockGeoflutterfire = MockGeoflutterfire();
    productRepository = ProductRepositoryImpl(
        networkInfo: mockNetworkInfo,
        firestore: mockFirestore,
        geoflutterfire: mockGeoflutterfire);
    mockAddedProductsCollection =
        MockCollectionReference<Map<String, dynamic>>();
    mockAddedProductDocument = MockDocumentReference<Map<String, dynamic>>();
    mockGeoCollection = MockGeoFireCollectionRef();

    // When
    when(mockNetworkInfo.isConnected).thenAnswer((_) async => true);
    when(mockFirestore.collection('addedProducts'))
        .thenReturn(mockAddedProductsCollection);
    when(mockGeoflutterfire.point(
            latitude: tLocation.latitude, longitude: tLocation.longitude))
        .thenReturn(center);
    when(mockGeoflutterfire.collection(
            collectionRef: mockAddedProductsCollection))
        .thenReturn(mockGeoCollection);
    when(mockGeoCollection.within(
      center: center,
      radius: radius,
      field: field,
      strictMode: true,
    )).thenAnswer((_) => Stream.fromIterable([listOfProducts]));
    when(mockAddedProductsCollection.where('shopId',
            isEqualTo: tShop.id.getOrCrash()))
        .thenAnswer((_) => fakeFirestore
            .collection('addedProducts')
            .where('shopId', isEqualTo: tShop.id.getOrCrash()));
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
      'should get added products collection',
      () async {
        // act
        productRepository.watchAllFromShop(tShop).listen((event) {});
        // assert
        await untilCalled(mockFirestore.collection('addedProducts'));
        verify(mockFirestore.collection('addedProducts'));
      },
    );

    test(
      'should query products by shopId',
      () async {
        // act
        productRepository.watchAllFromShop(tShop).listen((event) {});
        // assert
        await untilCalled(mockFirestore.collection('addedProducts'));
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
            emits(right(KtList.from([tProductSnippet]))));
      },
    );
  });

  group('watchAllNearby', () {
    test(
      'should check the internet connection',
      () async {
        // act

        productRepository.watchAllNearby(tLocation, radius).listen((event) {});
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
        final result = productRepository.watchAllNearby(tLocation, radius);
        // assert
        expectLater(
            result.asBroadcastStream(),
            emits(
              left(const ProductFailure.noInternetConnection()),
            ));
      },
    );

    test(
      'should get added products collection',
      () async {
        // act
        productRepository.watchAllNearby(tLocation, radius).listen((event) {});
        // assert
        await untilCalled(mockFirestore.collection('addedProducts'));
        verify(mockFirestore.collection('addedProducts'));
      },
    );

    test(
      'should get products within given radius',
      () async {
        // act
        productRepository.watchAllNearby(tLocation, radius).listen((event) {});
        // assert
        await untilCalled(mockGeoCollection.within(
          center: center,
          radius: radius,
          field: field,
          strictMode: true,
        ));
      },
    );

    // test(
    //   'should yeild found products',
    //   () async {
    //     // act
    //     final result = productRepository.watchAllNearby(tLocation, radius);
    //     // assert
    //     expectLater(
    //         result.asBroadcastStream(),
    //         emits(right(KtList.from(
    //             [tProductSnippet, tProductSnippet, tProductSnippet]))));
    //   },
    // );
  });
}
