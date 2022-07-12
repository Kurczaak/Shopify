import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopify_domain/order/order.dart';
import 'package:shopify_domain/src/cart/cart_dtos.dart';
part 'order_dtos.freezed.dart';
part 'order_dtos.g.dart';

@freezed
class OrderDto with _$OrderDto {
  const OrderDto._();
  @JsonSerializable()
  const factory OrderDto({
    @Default('') @JsonKey(ignore: true) String id,
    @ServerTimestampConverter() required DateTime timestamp,
    required CartDto cart,
    required String status,
  }) = _OrderDto;

  ShopifyOrder toDomain() => ShopifyOrder(
      date: timestamp,
      cart: cart.toDomain(),
      orderStatus: OrderStatus.fromString(status));

  factory OrderDto.fromJson(Map<String, dynamic> json) =>
      _$OrderDtoFromJson(json);

  factory OrderDto.fromFirestore(DocumentSnapshot doc) =>
      OrderDto.fromJson(doc.data() as Map<String, dynamic>)
          .copyWith(id: doc.id);
}

class ServerTimestampConverter implements JsonConverter<DateTime?, Object?> {
  const ServerTimestampConverter();

  @override
  DateTime? fromJson(Object? timestamp) {
    if (timestamp is Timestamp) {
      return timestamp.toDate();
    } else {
      return DateTime.fromMillisecondsSinceEpoch(0);
    }
  }

  @override
  Object? toJson(DateTime? date) =>
      date != null ? FieldValue.serverTimestamp() : null;
}
