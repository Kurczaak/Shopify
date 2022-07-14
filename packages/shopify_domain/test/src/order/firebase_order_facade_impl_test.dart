import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:shopify_domain/auth/shopify_auth.dart';
import 'package:shopify_domain/auth/user.dart';
import 'package:shopify_domain/core.dart';
import 'package:shopify_domain/core/network/network_info.dart';
import 'package:shopify_domain/order/order.dart';
import 'package:shopify_domain/order/order_failure.dart';
import 'package:shopify_domain/src/order/firebase_order_facade_impl.dart';
import 'package:shopify_domain/src/order/order_dtos.dart';

import 'firebase_order_facade_impl_test.mocks.dart';

@GenerateMocks([
  NetworkInfo,
  FirebaseFirestore,
  ShopifyAuth,
  DocumentReference,
  DocumentSnapshot,
  CollectionReference,
  OrderDto
])
void main() {
  late MockNetworkInfo mockNetworkInfo;
  late MockFirebaseFirestore mockFirebase;
  late MockShopifyAuth mockAuth;
  late FirebaseOrderFacadeImpl facade;

  // firebase
  late MockCollectionReference<Map<String, dynamic>> ordersCollection;
  late MockDocumentReference<Map<String, dynamic>> orderDocumentReference;
  late MockDocumentSnapshot<Map<String, dynamic>> orderDocumentSnapshot;

  // auth
  final user = ShopifyUser(id: UniqueId());

  void setUpFirestore() {
    ordersCollection = MockCollectionReference();
    orderDocumentReference = MockDocumentReference();
    orderDocumentSnapshot = MockDocumentSnapshot();
    when(mockFirebase.collection('orders')).thenReturn(ordersCollection);
    when(ordersCollection.doc(any)).thenReturn(orderDocumentReference);
    when(orderDocumentReference.get())
        .thenAnswer((_) async => orderDocumentSnapshot);
  }

  setUp(() {
    mockNetworkInfo = MockNetworkInfo();
    mockFirebase = MockFirebaseFirestore();
    mockAuth = MockShopifyAuth();
    facade = FirebaseOrderFacadeImpl(
        networkInfo: mockNetworkInfo, firebase: mockFirebase, auth: mockAuth);

    when(mockNetworkInfo.isConnected).thenAnswer((_) async => true);
    when(mockAuth.getSignedInUser()).thenAnswer((_) async => some(user));
    setUpFirestore();
  });

  group('watchUserOrders', () {
    final OrderStatus status = OrderStatus(OrderStatusEnum.pending);
    // test(
    //   'should check internet connection',
    //   () async {
    //     // act
    //     facade.watchUserOrders(status).listen((event) {});
    //     // assert
    //     verify(mockNetworkInfo.isConnected);
    //   },
    // );

    test(
      'should return failure if no internet connection is present',
      () async {
        // arrange
        when(mockNetworkInfo.isConnected).thenAnswer((_) async => false);
        // act
        final result = facade.watchUserOrders(status);
        // assert
        expect(result.asBroadcastStream(),
            emits(left(const OrderFailure.noInternetConnection())));
      },
    );

    // test(
    //   'should get orders collection',
    //   () async {
    //     // act
    //     facade.watchUserOrders(status).listen((event) {});
    //     // assert
    //     verify(mockFirebase.collection('orders'));
    //   },
    // );
    // test(
    //   'should get orders collection',
    //   () async {
    //     // act
    //     facade.watchUserOrders(status).listen((event) {});
    //     // assert
    //     verify(mockFirebase.collection('orders'));
    //   },
    // );
  });
}
