import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:shopify_domain/auth/shopify_auth.dart';
import 'package:shopify_domain/core/network/network_info.dart';
import 'package:shopify_domain/order/order.dart';
import 'package:shopify_domain/order/order_failure.dart';
import 'package:shopify_domain/core/value_objects.dart';
import 'package:kt_dart/kt.dart';
import 'package:dartz/dartz.dart';
import 'package:shopify_domain/order/shopify_order_facade.dart';
import 'package:shopify_domain/src/core/firestore_helpers.dart';
import 'package:shopify_domain/src/order/order_dtos.dart';

@Injectable(as: ShopifyOrderFacade)
class FirebaseOrderFacadeImpl implements ShopifyOrderFacade {
  final NetworkInfo networkInfo;
  final FirebaseFirestore firebase;
  final ShopifyAuth auth;

  FirebaseOrderFacadeImpl(
      {required this.networkInfo, required this.firebase, required this.auth});

  @override
  Future<Either<OrderFailure, Unit>> changeOrderStatus(bool isCompleted) {
    // TODO: implement changeOrderStatus
    throw UnimplementedError();
  }

  @override
  Stream<Either<OrderFailure, KtList<ShopifyOrder>>> watchShopOrders(
      UniqueId shopId) {
    // TODO: implement watchShopOrders
    throw UnimplementedError();
  }

  @override
  Stream<Either<OrderFailure, KtList<ShopifyOrder>>> watchUserOrders(
      OrderStatus status) async* {
    if (await networkInfo.isConnected) {
      final userOption = await auth.getSignedInUser();
      final user = userOption.getOrElse(() {
        throw UnimplementedError('User is not signed in!');
      });
      print('KURWAAAAAAAAAAAAAAAAA');
      print(user.id.getOrCrash());
      print('KURWAAAAAAAAAAAAAAAAA');
      print('KURWAAAAAAAAAAAAAAAAA2');
      print(status.getOrCrash().name);
      print('KURWAAAAAAAAAAAAAAAAA2');
      final userOrdersQuery = firebase.ordersCollection
          .where(FieldPath(const ['cart', 'userId']),
              isEqualTo: user.id.getOrCrash())
          .where('status', isEqualTo: status.getOrCrash().name);

      try {
        yield* userOrdersQuery
            .snapshots()
            .asyncMap<Either<OrderFailure, KtList<ShopifyOrder>>>(
                (ordersSnapshot) async {
          if (ordersSnapshot.docs.isEmpty) {
            print('KURWAAAAAAAAAAAAAAAAA');
            print('Empty');
            print('KURWAAAAAAAAAAAAAAAAA');
            return left(const OrderFailure.empty());
          } else {
            print('KURWAAAAAAAAAAAAAAAAA');
            print('COŚ JEST KURWO');
            print('KURWAAAAAAAAAAAAAAAAA');
            final List<ShopifyOrder> orders = [];
            for (final orderSnapshot in ordersSnapshot.docs) {
              orders.add(OrderDto.fromFirestore(orderSnapshot).toDomain());
            }
            return right(KtList.from(orders));
          }
        });
      } on FirebaseException catch (e) {
        if (e.code.contains('permission-denied')) {
          yield left(const OrderFailure.insufficientPermission());
        } else {
          yield left(const OrderFailure.unexpectd());
        }
      }
    } else {
      yield left(const OrderFailure.noInternetConnection());
    }
  }
}
