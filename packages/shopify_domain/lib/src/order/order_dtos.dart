import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopify_domain/order/order.dart';
import 'package:shopify_domain/src/cart/cart_dtos.dart';
part 'order_dtos.freezed.dart';
part 'order_dtos.g.dart';

@freezed
class OrderDto with _$OrderDto {
  const OrderDto._();
  const factory OrderDto({
    @Default('') @JsonKey(ignore: true) String id,
    required CartDto cart,
    required String status,
  }) = _OrderDto;

  ShopifyOrder toDomain() => ShopifyOrder(
      cart: cart.toDomain(), orderStatus: OrderStatus.fromString(status));

  factory OrderDto.fromJson(Map<String, dynamic> json) =>
      _$OrderDtoFromJson(json);

  factory OrderDto.fromFirestore(DocumentSnapshot doc) =>
      OrderDto.fromJson(doc.data() as Map<String, dynamic>)
          .copyWith(id: doc.id);
}
