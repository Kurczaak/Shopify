// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'shop.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
  $LocationCopyWith<$Res> get location;
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
  $LocationCopyWith<$Res> get location {
    return $LocationCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value));
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
abstract class _$$_ShopCopyWith<$Res> implements $ShopCopyWith<$Res> {
  factory _$$_ShopCopyWith(_$_Shop value, $Res Function(_$_Shop) then) =
      __$$_ShopCopyWithImpl<$Res>;
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
  $LocationCopyWith<$Res> get location;
  @override
  $WeekCopyWith<$Res> get workingWeek;
}

/// @nodoc
class __$$_ShopCopyWithImpl<$Res> extends _$ShopCopyWithImpl<$Res>
    implements _$$_ShopCopyWith<$Res> {
  __$$_ShopCopyWithImpl(_$_Shop _value, $Res Function(_$_Shop) _then)
      : super(_value, (v) => _then(v as _$_Shop));

  @override
  _$_Shop get _value => super._value as _$_Shop;

  @override
  $Res call({
    Object? id = freezed,
    Object? shopName = freezed,
    Object? address = freezed,
    Object? location = freezed,
    Object? workingWeek = freezed,
    Object? logoUrl = freezed,
  }) {
    return _then(_$_Shop(
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
            other is _$_Shop &&
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
  _$$_ShopCopyWith<_$_Shop> get copyWith =>
      __$$_ShopCopyWithImpl<_$_Shop>(this, _$identity);
}

abstract class _Shop extends Shop {
  const factory _Shop(
      {required final UniqueId id,
      required final ShopName shopName,
      required final Address address,
      required final Location location,
      required final Week workingWeek,
      required final ShopifyUrl logoUrl}) = _$_Shop;
  const _Shop._() : super._();

  @override
  UniqueId get id => throw _privateConstructorUsedError;
  @override
  ShopName get shopName => throw _privateConstructorUsedError;
  @override
  Address get address => throw _privateConstructorUsedError;
  @override
  Location get location => throw _privateConstructorUsedError;
  @override
  Week get workingWeek => throw _privateConstructorUsedError;
  @override
  ShopifyUrl get logoUrl => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ShopCopyWith<_$_Shop> get copyWith => throw _privateConstructorUsedError;
}
