// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'best_offer_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BestOfferDto _$BestOfferDtoFromJson(Map<String, dynamic> json) {
  return _BestOfferDto.fromJson(json);
}

/// @nodoc
mixin _$BestOfferDto {
  @JsonKey(ignore: true)
  String get shopId => throw _privateConstructorUsedError;
  AddressDto get address => throw _privateConstructorUsedError;
  String get logoUrl => throw _privateConstructorUsedError;
  LocationDto get position => throw _privateConstructorUsedError;
  String get shopName => throw _privateConstructorUsedError;
  PriceDto get price => throw _privateConstructorUsedError;
  WeekDto get week => throw _privateConstructorUsedError;
  double get distance => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BestOfferDtoCopyWith<BestOfferDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BestOfferDtoCopyWith<$Res> {
  factory $BestOfferDtoCopyWith(
          BestOfferDto value, $Res Function(BestOfferDto) then) =
      _$BestOfferDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String shopId,
      AddressDto address,
      String logoUrl,
      LocationDto position,
      String shopName,
      PriceDto price,
      WeekDto week,
      double distance});

  $AddressDtoCopyWith<$Res> get address;
  $LocationDtoCopyWith<$Res> get position;
  $PriceDtoCopyWith<$Res> get price;
  $WeekDtoCopyWith<$Res> get week;
}

/// @nodoc
class _$BestOfferDtoCopyWithImpl<$Res> implements $BestOfferDtoCopyWith<$Res> {
  _$BestOfferDtoCopyWithImpl(this._value, this._then);

  final BestOfferDto _value;
  // ignore: unused_field
  final $Res Function(BestOfferDto) _then;

  @override
  $Res call({
    Object? shopId = freezed,
    Object? address = freezed,
    Object? logoUrl = freezed,
    Object? position = freezed,
    Object? shopName = freezed,
    Object? price = freezed,
    Object? week = freezed,
    Object? distance = freezed,
  }) {
    return _then(_value.copyWith(
      shopId: shopId == freezed
          ? _value.shopId
          : shopId // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as AddressDto,
      logoUrl: logoUrl == freezed
          ? _value.logoUrl
          : logoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as LocationDto,
      shopName: shopName == freezed
          ? _value.shopName
          : shopName // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as PriceDto,
      week: week == freezed
          ? _value.week
          : week // ignore: cast_nullable_to_non_nullable
              as WeekDto,
      distance: distance == freezed
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }

  @override
  $AddressDtoCopyWith<$Res> get address {
    return $AddressDtoCopyWith<$Res>(_value.address, (value) {
      return _then(_value.copyWith(address: value));
    });
  }

  @override
  $LocationDtoCopyWith<$Res> get position {
    return $LocationDtoCopyWith<$Res>(_value.position, (value) {
      return _then(_value.copyWith(position: value));
    });
  }

  @override
  $PriceDtoCopyWith<$Res> get price {
    return $PriceDtoCopyWith<$Res>(_value.price, (value) {
      return _then(_value.copyWith(price: value));
    });
  }

  @override
  $WeekDtoCopyWith<$Res> get week {
    return $WeekDtoCopyWith<$Res>(_value.week, (value) {
      return _then(_value.copyWith(week: value));
    });
  }
}

/// @nodoc
abstract class _$$_BestOfferDtoCopyWith<$Res>
    implements $BestOfferDtoCopyWith<$Res> {
  factory _$$_BestOfferDtoCopyWith(
          _$_BestOfferDto value, $Res Function(_$_BestOfferDto) then) =
      __$$_BestOfferDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String shopId,
      AddressDto address,
      String logoUrl,
      LocationDto position,
      String shopName,
      PriceDto price,
      WeekDto week,
      double distance});

  @override
  $AddressDtoCopyWith<$Res> get address;
  @override
  $LocationDtoCopyWith<$Res> get position;
  @override
  $PriceDtoCopyWith<$Res> get price;
  @override
  $WeekDtoCopyWith<$Res> get week;
}

/// @nodoc
class __$$_BestOfferDtoCopyWithImpl<$Res>
    extends _$BestOfferDtoCopyWithImpl<$Res>
    implements _$$_BestOfferDtoCopyWith<$Res> {
  __$$_BestOfferDtoCopyWithImpl(
      _$_BestOfferDto _value, $Res Function(_$_BestOfferDto) _then)
      : super(_value, (v) => _then(v as _$_BestOfferDto));

  @override
  _$_BestOfferDto get _value => super._value as _$_BestOfferDto;

  @override
  $Res call({
    Object? shopId = freezed,
    Object? address = freezed,
    Object? logoUrl = freezed,
    Object? position = freezed,
    Object? shopName = freezed,
    Object? price = freezed,
    Object? week = freezed,
    Object? distance = freezed,
  }) {
    return _then(_$_BestOfferDto(
      shopId: shopId == freezed
          ? _value.shopId
          : shopId // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as AddressDto,
      logoUrl: logoUrl == freezed
          ? _value.logoUrl
          : logoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as LocationDto,
      shopName: shopName == freezed
          ? _value.shopName
          : shopName // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as PriceDto,
      week: week == freezed
          ? _value.week
          : week // ignore: cast_nullable_to_non_nullable
              as WeekDto,
      distance: distance == freezed
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BestOfferDto extends _BestOfferDto {
  const _$_BestOfferDto(
      {@JsonKey(ignore: true) this.shopId = '',
      required this.address,
      required this.logoUrl,
      required this.position,
      required this.shopName,
      required this.price,
      required this.week,
      required this.distance})
      : super._();

  factory _$_BestOfferDto.fromJson(Map<String, dynamic> json) =>
      _$$_BestOfferDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String shopId;
  @override
  final AddressDto address;
  @override
  final String logoUrl;
  @override
  final LocationDto position;
  @override
  final String shopName;
  @override
  final PriceDto price;
  @override
  final WeekDto week;
  @override
  final double distance;

  @override
  String toString() {
    return 'BestOfferDto(shopId: $shopId, address: $address, logoUrl: $logoUrl, position: $position, shopName: $shopName, price: $price, week: $week, distance: $distance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BestOfferDto &&
            const DeepCollectionEquality().equals(other.shopId, shopId) &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality().equals(other.logoUrl, logoUrl) &&
            const DeepCollectionEquality().equals(other.position, position) &&
            const DeepCollectionEquality().equals(other.shopName, shopName) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.week, week) &&
            const DeepCollectionEquality().equals(other.distance, distance));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(shopId),
      const DeepCollectionEquality().hash(address),
      const DeepCollectionEquality().hash(logoUrl),
      const DeepCollectionEquality().hash(position),
      const DeepCollectionEquality().hash(shopName),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(week),
      const DeepCollectionEquality().hash(distance));

  @JsonKey(ignore: true)
  @override
  _$$_BestOfferDtoCopyWith<_$_BestOfferDto> get copyWith =>
      __$$_BestOfferDtoCopyWithImpl<_$_BestOfferDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BestOfferDtoToJson(this);
  }
}

abstract class _BestOfferDto extends BestOfferDto {
  const factory _BestOfferDto(
      {@JsonKey(ignore: true) final String shopId,
      required final AddressDto address,
      required final String logoUrl,
      required final LocationDto position,
      required final String shopName,
      required final PriceDto price,
      required final WeekDto week,
      required final double distance}) = _$_BestOfferDto;
  const _BestOfferDto._() : super._();

  factory _BestOfferDto.fromJson(Map<String, dynamic> json) =
      _$_BestOfferDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String get shopId => throw _privateConstructorUsedError;
  @override
  AddressDto get address => throw _privateConstructorUsedError;
  @override
  String get logoUrl => throw _privateConstructorUsedError;
  @override
  LocationDto get position => throw _privateConstructorUsedError;
  @override
  String get shopName => throw _privateConstructorUsedError;
  @override
  PriceDto get price => throw _privateConstructorUsedError;
  @override
  WeekDto get week => throw _privateConstructorUsedError;
  @override
  double get distance => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_BestOfferDtoCopyWith<_$_BestOfferDto> get copyWith =>
      throw _privateConstructorUsedError;
}
