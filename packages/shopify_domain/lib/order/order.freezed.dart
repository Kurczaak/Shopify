// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ShopifyOrder {
  Cart get cart => throw _privateConstructorUsedError;
  OrderStatus get orderStatus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShopifyOrderCopyWith<ShopifyOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopifyOrderCopyWith<$Res> {
  factory $ShopifyOrderCopyWith(
          ShopifyOrder value, $Res Function(ShopifyOrder) then) =
      _$ShopifyOrderCopyWithImpl<$Res>;
  $Res call({Cart cart, OrderStatus orderStatus});

  $CartCopyWith<$Res> get cart;
}

/// @nodoc
class _$ShopifyOrderCopyWithImpl<$Res> implements $ShopifyOrderCopyWith<$Res> {
  _$ShopifyOrderCopyWithImpl(this._value, this._then);

  final ShopifyOrder _value;
  // ignore: unused_field
  final $Res Function(ShopifyOrder) _then;

  @override
  $Res call({
    Object? cart = freezed,
    Object? orderStatus = freezed,
  }) {
    return _then(_value.copyWith(
      cart: cart == freezed
          ? _value.cart
          : cart // ignore: cast_nullable_to_non_nullable
              as Cart,
      orderStatus: orderStatus == freezed
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
              as OrderStatus,
    ));
  }

  @override
  $CartCopyWith<$Res> get cart {
    return $CartCopyWith<$Res>(_value.cart, (value) {
      return _then(_value.copyWith(cart: value));
    });
  }
}

/// @nodoc
abstract class _$$_OrderCopyWith<$Res> implements $ShopifyOrderCopyWith<$Res> {
  factory _$$_OrderCopyWith(_$_Order value, $Res Function(_$_Order) then) =
      __$$_OrderCopyWithImpl<$Res>;
  @override
  $Res call({Cart cart, OrderStatus orderStatus});

  @override
  $CartCopyWith<$Res> get cart;
}

/// @nodoc
class __$$_OrderCopyWithImpl<$Res> extends _$ShopifyOrderCopyWithImpl<$Res>
    implements _$$_OrderCopyWith<$Res> {
  __$$_OrderCopyWithImpl(_$_Order _value, $Res Function(_$_Order) _then)
      : super(_value, (v) => _then(v as _$_Order));

  @override
  _$_Order get _value => super._value as _$_Order;

  @override
  $Res call({
    Object? cart = freezed,
    Object? orderStatus = freezed,
  }) {
    return _then(_$_Order(
      cart: cart == freezed
          ? _value.cart
          : cart // ignore: cast_nullable_to_non_nullable
              as Cart,
      orderStatus: orderStatus == freezed
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
              as OrderStatus,
    ));
  }
}

/// @nodoc

class _$_Order implements _Order {
  const _$_Order({required this.cart, required this.orderStatus});

  @override
  final Cart cart;
  @override
  final OrderStatus orderStatus;

  @override
  String toString() {
    return 'ShopifyOrder(cart: $cart, orderStatus: $orderStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Order &&
            const DeepCollectionEquality().equals(other.cart, cart) &&
            const DeepCollectionEquality()
                .equals(other.orderStatus, orderStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(cart),
      const DeepCollectionEquality().hash(orderStatus));

  @JsonKey(ignore: true)
  @override
  _$$_OrderCopyWith<_$_Order> get copyWith =>
      __$$_OrderCopyWithImpl<_$_Order>(this, _$identity);
}

abstract class _Order implements ShopifyOrder {
  const factory _Order(
      {required final Cart cart,
      required final OrderStatus orderStatus}) = _$_Order;

  @override
  Cart get cart => throw _privateConstructorUsedError;
  @override
  OrderStatus get orderStatus => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_OrderCopyWith<_$_Order> get copyWith =>
      throw _privateConstructorUsedError;
}
