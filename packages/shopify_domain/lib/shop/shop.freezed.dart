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
      required Address address,
      required Location location,
      required Week workingWeek,
      required ShopifyUrl logoUrl}) {
    return _Shop(
      id: id,
      shopName: shopName,
      address: address,
      location: location,
      workingWeek: workingWeek,
      logoUrl: logoUrl,
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
  Location get location => throw _privateConstructorUsedError;
  Week get workingWeek => throw _privateConstructorUsedError;
  ShopifyUrl get logoUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShopCopyWith<Shop> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopCopyWith<$Res> {
  factory $ShopCopyWith(Shop value, $Res Function(Shop) then) =
      _$ShopCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      ShopName shopName,
      Address address,
      Location location,
      Week workingWeek,
      ShopifyUrl logoUrl});

  $AddressCopyWith<$Res> get address;
  $WeekCopyWith<$Res> get workingWeek;
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
    Object? location = freezed,
    Object? workingWeek = freezed,
    Object? logoUrl = freezed,
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
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location,
      workingWeek: workingWeek == freezed
          ? _value.workingWeek
          : workingWeek // ignore: cast_nullable_to_non_nullable
              as Week,
      logoUrl: logoUrl == freezed
          ? _value.logoUrl
          : logoUrl // ignore: cast_nullable_to_non_nullable
              as ShopifyUrl,
    ));
  }

  @override
  $AddressCopyWith<$Res> get address {
    return $AddressCopyWith<$Res>(_value.address, (value) {
      return _then(_value.copyWith(address: value));
    });
  }

  @override
  $WeekCopyWith<$Res> get workingWeek {
    return $WeekCopyWith<$Res>(_value.workingWeek, (value) {
      return _then(_value.copyWith(workingWeek: value));
    });
  }
}

/// @nodoc
abstract class _$ShopCopyWith<$Res> implements $ShopCopyWith<$Res> {
  factory _$ShopCopyWith(_Shop value, $Res Function(_Shop) then) =
      __$ShopCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      ShopName shopName,
      Address address,
      Location location,
      Week workingWeek,
      ShopifyUrl logoUrl});

  @override
  $AddressCopyWith<$Res> get address;
  @override
  $WeekCopyWith<$Res> get workingWeek;
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
    Object? location = freezed,
    Object? workingWeek = freezed,
    Object? logoUrl = freezed,
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
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location,
      workingWeek: workingWeek == freezed
          ? _value.workingWeek
          : workingWeek // ignore: cast_nullable_to_non_nullable
              as Week,
      logoUrl: logoUrl == freezed
          ? _value.logoUrl
          : logoUrl // ignore: cast_nullable_to_non_nullable
              as ShopifyUrl,
    ));
  }
}

/// @nodoc

class _$_Shop extends _Shop {
  const _$_Shop(
      {required this.id,
      required this.shopName,
      required this.address,
      required this.location,
      required this.workingWeek,
      required this.logoUrl})
      : super._();

  @override
  final UniqueId id;
  @override
  final ShopName shopName;
  @override
  final Address address;
  @override
  final Location location;
  @override
  final Week workingWeek;
  @override
  final ShopifyUrl logoUrl;

  @override
  String toString() {
    return 'Shop(id: $id, shopName: $shopName, address: $address, location: $location, workingWeek: $workingWeek, logoUrl: $logoUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Shop &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.shopName, shopName) &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality().equals(other.location, location) &&
            const DeepCollectionEquality()
                .equals(other.workingWeek, workingWeek) &&
            const DeepCollectionEquality().equals(other.logoUrl, logoUrl));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(shopName),
      const DeepCollectionEquality().hash(address),
      const DeepCollectionEquality().hash(location),
      const DeepCollectionEquality().hash(workingWeek),
      const DeepCollectionEquality().hash(logoUrl));

  @JsonKey(ignore: true)
  @override
  _$ShopCopyWith<_Shop> get copyWith =>
      __$ShopCopyWithImpl<_Shop>(this, _$identity);
}

abstract class _Shop extends Shop {
  const factory _Shop(
      {required UniqueId id,
      required ShopName shopName,
      required Address address,
      required Location location,
      required Week workingWeek,
      required ShopifyUrl logoUrl}) = _$_Shop;
  const _Shop._() : super._();

  @override
  UniqueId get id;
  @override
  ShopName get shopName;
  @override
  Address get address;
  @override
  Location get location;
  @override
  Week get workingWeek;
  @override
  ShopifyUrl get logoUrl;
  @override
  @JsonKey(ignore: true)
  _$ShopCopyWith<_Shop> get copyWith => throw _privateConstructorUsedError;
}
