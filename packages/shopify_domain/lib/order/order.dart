import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopify_domain/cart/cart.dart';
import 'package:shopify_domain/core/failures.dart';
import 'package:shopify_domain/core/value_objects.dart';
import 'package:shopify_domain/order/value_failures.dart';

part 'order.freezed.dart';

@freezed
class Order with _$Order {
  const factory Order({
    required Cart cart,
    required OrderStatus orderStatus,
  }) = _Order;
}

enum OrderStatusEnum {
  pednding,
  completed,
  collected,
}

class OrderStatus extends ValueObject {
  const OrderStatus._(this.value);
  @override
  final Either<ValueFailure<OrderStatusEnum>, OrderStatusEnum> value;

  factory OrderStatus(OrderStatusEnum status) => OrderStatus._(right(status));

  factory OrderStatus.fromString(String statusString) {
    final normalizedString = statusString.toLowerCase();
    switch (normalizedString) {
      case 'pending':
        return OrderStatus._(right(OrderStatusEnum.pednding));
      case 'completed':
        return OrderStatus._(right(OrderStatusEnum.completed));
      case 'collected':
        return OrderStatus._(right(OrderStatusEnum.collected));
      default:
        return OrderStatus._(left(ValueFailure.order(
            OrderValueFailure.incorrectStatusString(normalizedString))));
    }
  }
}
  
      

// @freezed
// class OrderStatus with _$OrderStatus {
//   const OrderStatus._();
//   const factory OrderStatus({required OrderStatusEnum status}) = _OrderStatus;
//   factory OrderStatus.fromString(String status) {
//     final normalizedString = status.toLowerCase();

//     switch (normalizedString) {
//       case 'pending':
//         return const OrderStatus(status: OrderStatusEnum.pednding);
//       case 'completed':
//         return const OrderStatus(status: OrderStatusEnum.completed);
//       case 'collected':
//         return const OrderStatus(status: OrderStatusEnum.collected);
//       default:
//         throw UnimplementedError(
//             '$normalizedString is not a valid OrderStatus');
//     }
//   }
// }


