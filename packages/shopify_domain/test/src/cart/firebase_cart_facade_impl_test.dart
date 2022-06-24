import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:shopify_domain/auth.dart';
import 'package:shopify_domain/cart/cart_failure.dart';
import 'package:shopify_domain/cart/cart_item.dart';
import 'package:shopify_domain/core/network/network_info.dart';
import 'package:shopify_domain/core/value_objects.dart';
import 'package:shopify_domain/product.dart';
import 'package:shopify_domain/shop/shop.dart';
import 'package:shopify_domain/src/cart/firebase_cart_facade_impl.dart';
import 'package:shopify_domain/src/core/firestore_helpers.dart';

import 'package:get_it/get_it.dart';
import '../../utils/fixture_reader.dart';
import 'firebase_cart_facade_impl_test.mocks.dart';

@GenerateMocks([
  FirebaseFirestore,
  NetworkInfo,
  ShopifyAuth,
  CollectionReference,
  DocumentReference
])
void main() {
  late MockFirebaseFirestore mockFirebase;
  late MockNetworkInfo mockNetworkInfo;
  late FirebaseCartFacadeImpl facade;
  final MockShopifyAuth mockShopifyAuth = MockShopifyAuth();
  final jsonPricedProduct = json.decode(fixture('priced_product.json'));
  final pricedProduct = PricedProductDto.fromJson(jsonPricedProduct).toDomain();
  late CartItem tCartItem;

  // Shop
  Shop tShop = Shop.empty();

  // User
  final userId = UniqueId();
  late MockCollectionReference<Map<String, dynamic>> mockUsersCollection;
  late MockDocumentReference<Map<String, dynamic>> mockUserDocument;
  late MockCollectionReference<Map<String, dynamic>> mockUserCartsCollection;
  late MockDocumentReference<Map<String, dynamic>> mockUserCartDocument;
  late MockCollectionReference<Map<String, dynamic>>
      mockUserCartProductCollection;
  late MockDocumentReference<Map<String, dynamic>> mockUserCartProductDocument;

  void _setUpShopifyAuth() {
    final tUser = ShopifyUser(id: userId);
    GetIt.instance.registerSingleton<MockShopifyAuth>(mockShopifyAuth);
    when(mockShopifyAuth.getSignedInUser())
        .thenAnswer((_) async => some(tUser));
  }

  void _setUpUserFirebase() {
    // users
    when(mockFirebase.usersCollection).thenReturn(mockUsersCollection);
    // users -> current user
    when(mockUsersCollection.doc(userId.getOrCrash()))
        .thenReturn(mockUserDocument);
    // current user -> carts
    when(mockUserDocument.collection('carts'))
        .thenReturn(mockUserCartsCollection);
    // carts -> cart with the shop's id
    when(mockUserCartsCollection.doc(tShop.id.getOrCrash()))
        .thenReturn(mockUserCartDocument);
    // cart with the shop's id -> products
    when(mockUserCartDocument.collection('products'))
        .thenReturn(mockUserCartProductCollection);
    // products -> product with the priced product's id
    when(mockUserCartProductCollection
            .doc(pricedProduct.pricedProductId.getOrCrash()))
        .thenReturn(mockUserCartProductDocument);
  }

  void _setUpUserMocks() {
    mockUsersCollection = MockCollectionReference<Map<String, dynamic>>();
    mockUserDocument = MockDocumentReference<Map<String, dynamic>>();
    mockUserCartsCollection = MockCollectionReference<Map<String, dynamic>>();
    mockUserCartDocument = MockDocumentReference<Map<String, dynamic>>();
    mockUserCartProductCollection =
        MockCollectionReference<Map<String, dynamic>>();
    mockUserCartProductDocument = MockDocumentReference<Map<String, dynamic>>();
  }

  setUp(() {
    mockFirebase = MockFirebaseFirestore();
    mockNetworkInfo = MockNetworkInfo();
    facade = FirebaseCartFacadeImpl(
        firebase: mockFirebase, networkInfo: mockNetworkInfo);
    tCartItem = CartItem(product: pricedProduct, quantity: NonnegativeInt(5));

    _setUpUserMocks();
  });
  group('addItemToCart', () {
    _setUpShopifyAuth();
    test(
      'should check internet connection',
      () async {
        // act
        await facade.addItemToCart(tCartItem);
        // assert
        verify(mockNetworkInfo.isConnected);
      },
    );
    test(
      'should return a failure if no internet connection is available',
      () async {
        // act
        final result = await facade.addItemToCart(tCartItem);
        // assert
        expect(result, isA<Left<CartFailure, Unit>>());
      },
    );

    test(
      'should get the users collection',
      () async {
        // act
        await facade.addItemToCart(tCartItem);
        // assert
        verify(mockFirebase.usersCollection);
      },
    );
    test(
      'should get the document of the user',
      () async {
        // act
        await facade.addItemToCart(tCartItem);
        // assert
        verify(mockUsersCollection.doc(userId.getOrCrash()));
      },
    );

    test(
      'should get the user carts collection',
      () async {
        // act
        await facade.addItemToCart(tCartItem);
        // assert
        verify(mockUserDocument.collection('carts'));
      },
    );
    test(
      'should get given shop cart',
      () async {
        // act
        await facade.addItemToCart(tCartItem);
        // assert
        verify(mockUserCartsCollection.doc(tShop.id.getOrCrash()));
      },
    );

    test(
      'should get given shop cart\'s products collection',
      () async {
        // act
        await facade.addItemToCart(tCartItem);
        // assert
        verify(mockUserCartDocument.collection('products'));
      },
    );

    test(
      'should get given the cart\'s product document',
      () async {
        // act
        await facade.addItemToCart(tCartItem);
        // assert
        verify(mockUserCartProductCollection
            .doc(pricedProduct.pricedProductId.getOrCrash()));
      },
    );

    test(
      'should set the data',
      () async {
        // arrange

        // act
        await facade.addItemToCart(tCartItem);
        // assert
        verify(
            mockUserCartProductDocument.set({'quantity': tCartItem.quantity}));
      },
    );
  });
}
