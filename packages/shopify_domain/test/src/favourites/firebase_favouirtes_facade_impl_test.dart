import 'package:cloud_functions/cloud_functions.dart';
import 'package:dartz/dartz.dart';
import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/kt.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:shopify_domain/auth/shopify_auth.dart';
import 'package:shopify_domain/auth/user.dart';
import 'package:shopify_domain/core/config.dart';
import 'package:shopify_domain/core/network/network_info.dart';
import 'package:shopify_domain/core/value_objects.dart';
import 'package:shopify_domain/favourites/favourite_failure.dart';
import 'package:shopify_domain/favourites/favourite_product.dart';
import 'package:shopify_domain/product.dart';
import 'package:shopify_domain/src/favourites/favourite_product_dtos.dart';
import 'package:shopify_domain/src/favourites/firebase_favouirtes_facade_impl.dart';

import 'firebase_favouirtes_facade_impl_test.mocks.dart';

@GenerateMocks([
  NetworkInfo,
  FirebaseFunctions,
  HttpsCallable,
  ShopifyAuth,
], customMocks: [
  MockSpec<HttpsCallableResult<String>>(as: #MockHttpsCallableResultString)
])
void main() {
  late MockNetworkInfo mockNetworkInfo;

  late MockFirebaseFunctions mockFirebaseFunctions;
  late MockHttpsCallable mockHttpsCallable;
  late MockHttpsCallableResultString mockHttpsCallableResult;
  late MockShopifyAuth mockAuth;
  late FirebaseFavouritesFacadeImpl facade;
  late FakeFirebaseFirestore fakeFirestore;

  // FavouriteProduct
  final favouriteProductId = UniqueId();
  final productId = UniqueId();
  final userId = UniqueId();
  final barcode = Barcode('B-A-R-C-O-D-E');
  final productName = ProductName('Product Name');
  final brandName = BrandName('Brand Name');
  final category = Category(Categories.bio);
  final photoUrl = ShopifyUrl('https://www.shopify.com/1');
  final favouriteProduct = FavouriteProduct(
      id: favouriteProductId,
      barcode: barcode,
      productId: productId,
      productName: productName,
      category: category,
      brand: brandName,
      photoUrl: photoUrl);

  final favouriteProductDto =
      FavouriteProductDto.fromDomain(favouriteProduct, userId);

  Future<void> setUpFirestore(FakeFirebaseFirestore firebase) async {
    firebase
        .collection('favourites')
        .doc(favouriteProductId.getOrCrash())
        .set(favouriteProductDto.toJson());
  }

  // Mocks
  void setUpMocks() {
    when(mockNetworkInfo.isConnected).thenAnswer((_) async => true);
    when(mockFirebaseFunctions.httpsCallable(
      'favourites-addToFavourites',
    )).thenReturn(mockHttpsCallable);
    when(mockFirebaseFunctions.httpsCallable(
      'favourites-removeFromFavourites',
    )).thenReturn(mockHttpsCallable);
    when(mockHttpsCallable.call(any))
        .thenAnswer((_) async => mockHttpsCallableResult);
    when(mockAuth.getSignedInUser())
        .thenAnswer((_) async => some(ShopifyUser(id: userId)));
  }

  setUp(() async {
    mockNetworkInfo = MockNetworkInfo();
    mockFirebaseFunctions = MockFirebaseFunctions();
    mockHttpsCallable = MockHttpsCallable();
    mockHttpsCallableResult = MockHttpsCallableResultString();
    fakeFirestore = FakeFirebaseFirestore();
    mockAuth = MockShopifyAuth();
    facade = FirebaseFavouritesFacadeImpl(
        firebase: fakeFirestore,
        networkInfo: mockNetworkInfo,
        firebaseFunctions: mockFirebaseFunctions,
        auth: mockAuth);
    setUpMocks();
    await setUpFirestore(fakeFirestore);
  });

  group('isFavourite', () {
    test(
      'should check the internet connection',
      () async {
        // act
        await facade.isFavourite(productId);
        // assert
        verify(mockNetworkInfo.isConnected);
      },
    );

    test(
      'should return a failure if no internet connection is present',
      () async {
        // arrange
        when(mockNetworkInfo.isConnected).thenAnswer((_) async => false);
        // act
        final result = await facade.isFavourite(productId);
        // assert
        expect(result, isA<Left<FavouriteFailure, bool>>());
      },
    );

    test(
      'should return true if the product is in favourites',
      () async {
        // act
        final result = await facade.isFavourite(productId);
        // assert
        expect(result, right(true));
      },
    );
    test(
      'should return false if the product is not in favourites',
      () async {
        // act
        final result = await facade.isFavourite(UniqueId());
        // assert
        expect(result, right(false));
      },
    );
  });

  group('watchFavourites', () {
    test(
      'should check the internet connection',
      () async {
        // act
        facade.watchFavourites().listen((event) {});
        await untilCalled(mockNetworkInfo.isConnected);
        // assert
        verify(mockNetworkInfo.isConnected);
      },
    );
    test(
      'should yield a failure if no internet connection is present',
      () async {
        // arrange
        when(mockNetworkInfo.isConnected).thenAnswer((_) async => false);
        // act
        final result = facade.watchFavourites();
        // assert
        expect(
            result.asBroadcastStream(),
            emits(left<FavouriteFailure, KtList<FavouriteProduct>>(
                const FavouriteFailure.noInternetConnection())));
      },
    );

    test(
      'should yield products from the db',
      () async {
        // act
        final result = facade.watchFavourites();
        // assert
        expect(
            result.asBroadcastStream(),
            emits(right<FavouriteFailure, KtList<FavouriteProduct>>(
                KtList.from([favouriteProduct]))));
      },
    );
  });

  group('addToFavourites', () {
    test(
      'should check internet connection',
      () async {
        // act
        await facade.addToFavourites(productId);
        // assert
        verify(mockNetworkInfo.isConnected);
      },
    );
    test(
      'should return a failure if no internet connection is present',
      () async {
        // arrange
        when(mockNetworkInfo.isConnected).thenAnswer((_) async => false);
        // act
        final result = await facade.addToFavourites(productId);
        // assert
        expect(result, isA<Left<FavouriteFailure, Unit>>());
      },
    );
    test(
      'should get httpsCallable',
      () async {
        // act
        await facade.addToFavourites(productId);
        // assert
        verify(
            mockFirebaseFunctions.httpsCallable('favourites-addToFavourites'));
      },
    );
    test(
      'should call httpsCallable',
      () async {
        // act
        await facade.addToFavourites(productId);
        // assert
        verify(mockHttpsCallable.call({'productId': productId.getOrCrash()}));
      },
    );
    test(
      'should return unit if success',
      () async {
        // act
        final result = await facade.addToFavourites(productId);
        // assert
        expect(result, isA<Right<FavouriteFailure, Unit>>());
      },
    );

    test(
      'should return a failure if https callable throws an error',
      () async {
        // arrange
        when(mockHttpsCallable.call(any)).thenThrow(FirebaseFunctionsException(
            code: 'not-found', message: 'product not found'));
        // act
        final result = await facade.addToFavourites(productId);
        // assert
        expect(result, isA<Left<FavouriteFailure, Unit>>());
      },
    );
    test(
      'should return a failure if timed out',
      () async {
        // arrange
        when(mockHttpsCallable.call(any)).thenAnswer((realInvocation) async {
          await Future.delayed(timeoutDuration);
          await Future.delayed(timeoutDuration);
          return mockHttpsCallableResult;
        });
        // act
        final result = await facade.addToFavourites(productId);
        // assert
        expect(result, isA<Left<FavouriteFailure, Unit>>());
      },
    );
  });

  group('removeFromFavourites', () {
    test(
      'should check internet connection',
      () async {
        // act
        await facade.removeFromFavourites(productId);
        // assert
        verify(mockNetworkInfo.isConnected);
      },
    );
    test(
      'should return a failure if no internet connection is present',
      () async {
        // arrange
        when(mockNetworkInfo.isConnected).thenAnswer((_) async => false);
        // act
        final result = await facade.removeFromFavourites(productId);
        // assert
        expect(result, isA<Left<FavouriteFailure, Unit>>());
      },
    );
    test(
      'should get httpsCallable',
      () async {
        // act
        await facade.removeFromFavourites(productId);
        // assert
        verify(mockFirebaseFunctions
            .httpsCallable('favourites-removeFromFavourites'));
      },
    );
    test(
      'should call httpsCallable',
      () async {
        // act
        await facade.removeFromFavourites(productId);
        // assert
        verify(mockHttpsCallable.call({'productId': productId.getOrCrash()}));
      },
    );
    test(
      'should return unit if success',
      () async {
        // act
        final result = await facade.removeFromFavourites(productId);
        // assert
        expect(result, isA<Right<FavouriteFailure, Unit>>());
      },
    );

    test(
      'should return a failure if https callable throws an error',
      () async {
        // arrange
        when(mockHttpsCallable.call(any)).thenThrow(FirebaseFunctionsException(
            code: 'not-found', message: 'product not found'));
        // act
        final result = await facade.removeFromFavourites(productId);
        // assert
        expect(result, isA<Left<FavouriteFailure, Unit>>());
      },
    );
    test(
      'should return a failure if timed out',
      () async {
        // arrange
        when(mockHttpsCallable.call(any)).thenAnswer((realInvocation) async {
          await Future.delayed(timeoutDuration);
          await Future.delayed(timeoutDuration);
          return mockHttpsCallableResult;
        });
        // act
        final result = await facade.removeFromFavourites(productId);
        // assert
        expect(result, isA<Left<FavouriteFailure, Unit>>());
      },
    );
  });
}
