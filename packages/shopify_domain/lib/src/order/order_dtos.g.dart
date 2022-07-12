// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderDto _$$_OrderDtoFromJson(Map<String, dynamic> json) => _$_OrderDto(
      timestamp: DateTime.parse(json['timestamp'] as String),
      cart: CartDto.fromJson(json['cart'] as Map<String, dynamic>),
      status: json['status'] as String,
    );

Map<String, dynamic> _$$_OrderDtoToJson(_$_OrderDto instance) =>
    <String, dynamic>{
      'timestamp': instance.timestamp.toIso8601String(),
      'cart': instance.cart.toJson(),
      'status': instance.status,
    };
