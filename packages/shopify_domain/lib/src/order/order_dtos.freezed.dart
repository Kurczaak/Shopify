// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'order_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderDto _$OrderDtoFromJson(Map<String, dynamic> json) {
  return _OrderDto.fromJson(json);
}

/// @nodoc
mixin _$OrderDto {
  @JsonKey(ignore: true)
  String get id => throw _privateConstructorUsedError;
  CartDto get cart => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderDtoCopyWith<OrderDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderDtoCopyWith<$Res> {
  factory $OrderDtoCopyWith(OrderDto value, $Res Function(OrderDto) then) =
      _$OrderDtoCopyWithImpl<$Res>;
  $Res call({@JsonKey(ignore: true) String id, CartDto cart, String status});

  $CartDtoCopyWith<$Res> get cart;
}

/// @nodoc
class _$OrderDtoCopyWithImpl<$Res> implements $OrderDtoCopyWith<$Res> {
  _$OrderDtoCopyWithImpl(this._value, this._then);

  final OrderDto _value;
  // ignore: unused_field
  final $Res Function(OrderDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? cart = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      cart: cart == freezed
          ? _value.cart
          : cart // ignore: cast_nullable_to_non_nullable
              as CartDto,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $CartDtoCopyWith<$Res> get cart {
    return $CartDtoCopyWith<$Res>(_value.cart, (value) {
      return _then(_value.copyWith(cart: value));
    });
  }
}

/// @nodoc
abstract class _$$_OrderDtoCopyWith<$Res> implements $OrderDtoCopyWith<$Res> {
  factory _$$_OrderDtoCopyWith(
          _$_OrderDto value, $Res Function(_$_OrderDto) then) =
      __$$_OrderDtoCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(ignore: true) String id, CartDto cart, String status});

  @override
  $CartDtoCopyWith<$Res> get cart;
}

/// @nodoc
class __$$_OrderDtoCopyWithImpl<$Res> extends _$OrderDtoCopyWithImpl<$Res>
    implements _$$_OrderDtoCopyWith<$Res> {
  __$$_OrderDtoCopyWithImpl(
      _$_OrderDto _value, $Res Function(_$_OrderDto) _then)
      : super(_value, (v) => _then(v as _$_OrderDto));

  @override
  _$_OrderDto get _value => super._value as _$_OrderDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? cart = freezed,
    Object? status = freezed,
  }) {
    return _then(_$_OrderDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      cart: cart == freezed
          ? _value.cart
          : cart // ignore: cast_nullable_to_non_nullable
              as CartDto,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderDto extends _OrderDto {
  const _$_OrderDto(
      {@JsonKey(ignore: true) this.id = '',
      required this.cart,
      required this.status})
      : super._();

  factory _$_OrderDto.fromJson(Map<String, dynamic> json) =>
      _$$_OrderDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String id;
  @override
  final CartDto cart;
  @override
  final String status;

  @override
  String toString() {
    return 'OrderDto(id: $id, cart: $cart, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.cart, cart) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(cart),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$$_OrderDtoCopyWith<_$_OrderDto> get copyWith =>
      __$$_OrderDtoCopyWithImpl<_$_OrderDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderDtoToJson(this);
  }
}

abstract class _OrderDto extends OrderDto {
  const factory _OrderDto(
      {@JsonKey(ignore: true) final String id,
      required final CartDto cart,
      required final String status}) = _$_OrderDto;
  const _OrderDto._() : super._();

  factory _OrderDto.fromJson(Map<String, dynamic> json) = _$_OrderDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String get id => throw _privateConstructorUsedError;
  @override
  CartDto get cart => throw _privateConstructorUsedError;
  @override
  String get status => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_OrderDtoCopyWith<_$_OrderDto> get copyWith =>
      throw _privateConstructorUsedError;
}
