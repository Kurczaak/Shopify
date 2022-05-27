// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'shop_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ShopDto _$ShopDtoFromJson(Map<String, dynamic> json) {
  return _ShopItemDto.fromJson(json);
}

/// @nodoc
class _$ShopDtoTearOff {
  const _$ShopDtoTearOff();

  _ShopItemDto call(
      {@JsonKey(ignore: true) String id = '',
      required String shopName,
      required AddressDto address,
      required WeekDto week,
      required LocationDto position,
      required String logoUrl}) {
    return _ShopItemDto(
      id: id,
      shopName: shopName,
      address: address,
      week: week,
      position: position,
      logoUrl: logoUrl,
    );
  }

  ShopDto fromJson(Map<String, Object?> json) {
    return ShopDto.fromJson(json);
  }
}

/// @nodoc
const $ShopDto = _$ShopDtoTearOff();

/// @nodoc
mixin _$ShopDto {
  @JsonKey(ignore: true)
  String get id => throw _privateConstructorUsedError;
  String get shopName => throw _privateConstructorUsedError;
  AddressDto get address => throw _privateConstructorUsedError;
  WeekDto get week => throw _privateConstructorUsedError;
  LocationDto get position => throw _privateConstructorUsedError;
  String get logoUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShopDtoCopyWith<ShopDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopDtoCopyWith<$Res> {
  factory $ShopDtoCopyWith(ShopDto value, $Res Function(ShopDto) then) =
      _$ShopDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String id,
      String shopName,
      AddressDto address,
      WeekDto week,
      LocationDto position,
      String logoUrl});

  $AddressDtoCopyWith<$Res> get address;
  $WeekDtoCopyWith<$Res> get week;
  $LocationDtoCopyWith<$Res> get position;
}

/// @nodoc
class _$ShopDtoCopyWithImpl<$Res> implements $ShopDtoCopyWith<$Res> {
  _$ShopDtoCopyWithImpl(this._value, this._then);

  final ShopDto _value;
  // ignore: unused_field
  final $Res Function(ShopDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? shopName = freezed,
    Object? address = freezed,
    Object? week = freezed,
    Object? position = freezed,
    Object? logoUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      shopName: shopName == freezed
          ? _value.shopName
          : shopName // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as AddressDto,
      week: week == freezed
          ? _value.week
          : week // ignore: cast_nullable_to_non_nullable
              as WeekDto,
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as LocationDto,
      logoUrl: logoUrl == freezed
          ? _value.logoUrl
          : logoUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $AddressDtoCopyWith<$Res> get address {
    return $AddressDtoCopyWith<$Res>(_value.address, (value) {
      return _then(_value.copyWith(address: value));
    });
  }

  @override
  $WeekDtoCopyWith<$Res> get week {
    return $WeekDtoCopyWith<$Res>(_value.week, (value) {
      return _then(_value.copyWith(week: value));
    });
  }

  @override
  $LocationDtoCopyWith<$Res> get position {
    return $LocationDtoCopyWith<$Res>(_value.position, (value) {
      return _then(_value.copyWith(position: value));
    });
  }
}

/// @nodoc
abstract class _$ShopItemDtoCopyWith<$Res> implements $ShopDtoCopyWith<$Res> {
  factory _$ShopItemDtoCopyWith(
          _ShopItemDto value, $Res Function(_ShopItemDto) then) =
      __$ShopItemDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String id,
      String shopName,
      AddressDto address,
      WeekDto week,
      LocationDto position,
      String logoUrl});

  @override
  $AddressDtoCopyWith<$Res> get address;
  @override
  $WeekDtoCopyWith<$Res> get week;
  @override
  $LocationDtoCopyWith<$Res> get position;
}

/// @nodoc
class __$ShopItemDtoCopyWithImpl<$Res> extends _$ShopDtoCopyWithImpl<$Res>
    implements _$ShopItemDtoCopyWith<$Res> {
  __$ShopItemDtoCopyWithImpl(
      _ShopItemDto _value, $Res Function(_ShopItemDto) _then)
      : super(_value, (v) => _then(v as _ShopItemDto));

  @override
  _ShopItemDto get _value => super._value as _ShopItemDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? shopName = freezed,
    Object? address = freezed,
    Object? week = freezed,
    Object? position = freezed,
    Object? logoUrl = freezed,
  }) {
    return _then(_ShopItemDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      shopName: shopName == freezed
          ? _value.shopName
          : shopName // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as AddressDto,
      week: week == freezed
          ? _value.week
          : week // ignore: cast_nullable_to_non_nullable
              as WeekDto,
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as LocationDto,
      logoUrl: logoUrl == freezed
          ? _value.logoUrl
          : logoUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ShopItemDto extends _ShopItemDto {
  const _$_ShopItemDto(
      {@JsonKey(ignore: true) this.id = '',
      required this.shopName,
      required this.address,
      required this.week,
      required this.position,
      required this.logoUrl})
      : super._();

  factory _$_ShopItemDto.fromJson(Map<String, dynamic> json) =>
      _$$_ShopItemDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String id;
  @override
  final String shopName;
  @override
  final AddressDto address;
  @override
  final WeekDto week;
  @override
  final LocationDto position;
  @override
  final String logoUrl;

  @override
  String toString() {
    return 'ShopDto(id: $id, shopName: $shopName, address: $address, week: $week, position: $position, logoUrl: $logoUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ShopItemDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.shopName, shopName) &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality().equals(other.week, week) &&
            const DeepCollectionEquality().equals(other.position, position) &&
            const DeepCollectionEquality().equals(other.logoUrl, logoUrl));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(shopName),
      const DeepCollectionEquality().hash(address),
      const DeepCollectionEquality().hash(week),
      const DeepCollectionEquality().hash(position),
      const DeepCollectionEquality().hash(logoUrl));

  @JsonKey(ignore: true)
  @override
  _$ShopItemDtoCopyWith<_ShopItemDto> get copyWith =>
      __$ShopItemDtoCopyWithImpl<_ShopItemDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShopItemDtoToJson(this);
  }
}

abstract class _ShopItemDto extends ShopDto {
  const factory _ShopItemDto(
      {@JsonKey(ignore: true) String id,
      required String shopName,
      required AddressDto address,
      required WeekDto week,
      required LocationDto position,
      required String logoUrl}) = _$_ShopItemDto;
  const _ShopItemDto._() : super._();

  factory _ShopItemDto.fromJson(Map<String, dynamic> json) =
      _$_ShopItemDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String get id;
  @override
  String get shopName;
  @override
  AddressDto get address;
  @override
  WeekDto get week;
  @override
  LocationDto get position;
  @override
  String get logoUrl;
  @override
  @JsonKey(ignore: true)
  _$ShopItemDtoCopyWith<_ShopItemDto> get copyWith =>
      throw _privateConstructorUsedError;
}
