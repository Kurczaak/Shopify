// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderDto _$$_OrderDtoFromJson(Map<String, dynamic> json) => _$_OrderDto(
      timestamp: const ServerTimestampConverter().fromJson(json['timestamp']),
      cart: CartDto.fromJson(json['cart'] as Map<String, dynamic>),
      status: json['status'] as String,
      cartItems: (json['cartItems'] as List<dynamic>)
          .map((e) => CartItemDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_OrderDtoToJson(_$_OrderDto instance) =>
    <String, dynamic>{
      'timestamp': const ServerTimestampConverter().toJson(instance.timestamp),
      'cart': instance.cart.toJson(),
      'status': instance.status,
      'cartItems': instance.cartItems.map((e) => e.toJson()).toList(),
    };
