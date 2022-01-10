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
      required Name shopName,
      required Name streetName,
      required PostalCode postalCode,
      required Name city}) {
    return _Shop(
      id: id,
      shopName: shopName,
      streetName: streetName,
      postalCode: postalCode,
      city: city,
    );
  }
}

/// @nodoc
const $Shop = _$ShopTearOff();

/// @nodoc
mixin _$Shop {
  UniqueId get id => throw _privateConstructorUsedError;
  Name get shopName => throw _privateConstructorUsedError;
  Name get streetName => throw _privateConstructorUsedError;
  PostalCode get postalCode => throw _privateConstructorUsedError;
  Name get city => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShopCopyWith<Shop> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopCopyWith<$Res> {
  factory $ShopCopyWith(Shop value, $Res Function(Shop) then) =
      _$ShopCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      Name shopName,
      Name streetName,
      PostalCode postalCode,
      Name city});
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
    Object? streetName = freezed,
    Object? postalCode = freezed,
    Object? city = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      shopName: shopName == freezed
          ? _value.shopName
          : shopName // ignore: cast_nullable_to_non_nullable
              as Name,
      streetName: streetName == freezed
          ? _value.streetName
          : streetName // ignore: cast_nullable_to_non_nullable
              as Name,
      postalCode: postalCode == freezed
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as PostalCode,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as Name,
    ));
  }
}

/// @nodoc
abstract class _$ShopCopyWith<$Res> implements $ShopCopyWith<$Res> {
  factory _$ShopCopyWith(_Shop value, $Res Function(_Shop) then) =
      __$ShopCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      Name shopName,
      Name streetName,
      PostalCode postalCode,
      Name city});
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
    Object? streetName = freezed,
    Object? postalCode = freezed,
    Object? city = freezed,
  }) {
    return _then(_Shop(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      shopName: shopName == freezed
          ? _value.shopName
          : shopName // ignore: cast_nullable_to_non_nullable
              as Name,
      streetName: streetName == freezed
          ? _value.streetName
          : streetName // ignore: cast_nullable_to_non_nullable
              as Name,
      postalCode: postalCode == freezed
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as PostalCode,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as Name,
    ));
  }
}

/// @nodoc

class _$_Shop extends _Shop {
  const _$_Shop(
      {required this.id,
      required this.shopName,
      required this.streetName,
      required this.postalCode,
      required this.city})
      : super._();

  @override
  final UniqueId id;
  @override
  final Name shopName;
  @override
  final Name streetName;
  @override
  final PostalCode postalCode;
  @override
  final Name city;

  @override
  String toString() {
    return 'Shop(id: $id, shopName: $shopName, streetName: $streetName, postalCode: $postalCode, city: $city)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Shop &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.shopName, shopName) &&
            const DeepCollectionEquality()
                .equals(other.streetName, streetName) &&
            const DeepCollectionEquality()
                .equals(other.postalCode, postalCode) &&
            const DeepCollectionEquality().equals(other.city, city));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(shopName),
      const DeepCollectionEquality().hash(streetName),
      const DeepCollectionEquality().hash(postalCode),
      const DeepCollectionEquality().hash(city));

  @JsonKey(ignore: true)
  @override
  _$ShopCopyWith<_Shop> get copyWith =>
      __$ShopCopyWithImpl<_Shop>(this, _$identity);
}

abstract class _Shop extends Shop {
  const factory _Shop(
      {required UniqueId id,
      required Name shopName,
      required Name streetName,
      required PostalCode postalCode,
      required Name city}) = _$_Shop;
  const _Shop._() : super._();

  @override
  UniqueId get id;
  @override
  Name get shopName;
  @override
  Name get streetName;
  @override
  PostalCode get postalCode;
  @override
  Name get city;
  @override
  @JsonKey(ignore: true)
  _$ShopCopyWith<_Shop> get copyWith => throw _privateConstructorUsedError;
}
