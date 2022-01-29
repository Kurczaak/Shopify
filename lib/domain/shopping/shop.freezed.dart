// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'shop.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ShopTearOff {
  const _$ShopTearOff();

  _Shop call(
      {required UniqueId id,
      required ShopName shopName,
      required Address address}) {
    return _Shop(
      id: id,
      shopName: shopName,
      address: address,
    );
  }
}

/// @nodoc
const $Shop = _$ShopTearOff();

/// @nodoc
mixin _$Shop {
  UniqueId get id => throw _privateConstructorUsedError;
  ShopName get shopName => throw _privateConstructorUsedError;
  Address get address => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShopCopyWith<Shop> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopCopyWith<$Res> {
  factory $ShopCopyWith(Shop value, $Res Function(Shop) then) =
      _$ShopCopyWithImpl<$Res>;
  $Res call({UniqueId id, ShopName shopName, Address address});

  $AddressCopyWith<$Res> get address;
}

/// @nodoc
class _$ShopCopyWithImpl<$Res> implements $ShopCopyWith<$Res> {
  _$ShopCopyWithImpl(this._value, this._then);

  final Shop _value;
  // ignore: unused_field
  final $Res Function(Shop) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? shopName = freezed,
    Object? address = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      shopName: shopName == freezed
          ? _value.shopName
          : shopName // ignore: cast_nullable_to_non_nullable
              as ShopName,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
    ));
  }

  @override
  $AddressCopyWith<$Res> get address {
    return $AddressCopyWith<$Res>(_value.address, (value) {
      return _then(_value.copyWith(address: value));
    });
  }
}

/// @nodoc
abstract class _$ShopCopyWith<$Res> implements $ShopCopyWith<$Res> {
  factory _$ShopCopyWith(_Shop value, $Res Function(_Shop) then) =
      __$ShopCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId id, ShopName shopName, Address address});

  @override
  $AddressCopyWith<$Res> get address;
}

/// @nodoc
class __$ShopCopyWithImpl<$Res> extends _$ShopCopyWithImpl<$Res>
    implements _$ShopCopyWith<$Res> {
  __$ShopCopyWithImpl(_Shop _value, $Res Function(_Shop) _then)
      : super(_value, (v) => _then(v as _Shop));

  @override
  _Shop get _value => super._value as _Shop;

  @override
  $Res call({
    Object? id = freezed,
    Object? shopName = freezed,
    Object? address = freezed,
  }) {
    return _then(_Shop(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      shopName: shopName == freezed
          ? _value.shopName
          : shopName // ignore: cast_nullable_to_non_nullable
              as ShopName,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
    ));
  }
}

/// @nodoc

class _$_Shop extends _Shop {
  const _$_Shop(
      {required this.id, required this.shopName, required this.address})
      : super._();

  @override
  final UniqueId id;
  @override
  final ShopName shopName;
  @override
  final Address address;

  @override
  String toString() {
    return 'Shop(id: $id, shopName: $shopName, address: $address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Shop &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.shopName, shopName) &&
            const DeepCollectionEquality().equals(other.address, address));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(shopName),
      const DeepCollectionEquality().hash(address));

  @JsonKey(ignore: true)
  @override
  _$ShopCopyWith<_Shop> get copyWith =>
      __$ShopCopyWithImpl<_Shop>(this, _$identity);
}

abstract class _Shop extends Shop {
  const factory _Shop(
      {required UniqueId id,
      required ShopName shopName,
      required Address address}) = _$_Shop;
  const _Shop._() : super._();

  @override
  UniqueId get id;
  @override
  ShopName get shopName;
  @override
  Address get address;
  @override
  @JsonKey(ignore: true)
  _$ShopCopyWith<_Shop> get copyWith => throw _privateConstructorUsedError;
}
