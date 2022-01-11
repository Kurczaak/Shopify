// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
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
      required String streetName,
      required int streetNumber,
      required String postalCode,
      required String city,
      @ServerTimestampConverter() required FieldValue serverTimeStamp}) {
    return _ShopItemDto(
      id: id,
      shopName: shopName,
      streetName: streetName,
      streetNumber: streetNumber,
      postalCode: postalCode,
      city: city,
      serverTimeStamp: serverTimeStamp,
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
  String get streetName => throw _privateConstructorUsedError;
  int get streetNumber => throw _privateConstructorUsedError;
  String get postalCode => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  @ServerTimestampConverter()
  FieldValue get serverTimeStamp => throw _privateConstructorUsedError;

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
      String streetName,
      int streetNumber,
      String postalCode,
      String city,
      @ServerTimestampConverter() FieldValue serverTimeStamp});
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
    Object? streetName = freezed,
    Object? streetNumber = freezed,
    Object? postalCode = freezed,
    Object? city = freezed,
    Object? serverTimeStamp = freezed,
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
      streetName: streetName == freezed
          ? _value.streetName
          : streetName // ignore: cast_nullable_to_non_nullable
              as String,
      streetNumber: streetNumber == freezed
          ? _value.streetNumber
          : streetNumber // ignore: cast_nullable_to_non_nullable
              as int,
      postalCode: postalCode == freezed
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      serverTimeStamp: serverTimeStamp == freezed
          ? _value.serverTimeStamp
          : serverTimeStamp // ignore: cast_nullable_to_non_nullable
              as FieldValue,
    ));
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
      String streetName,
      int streetNumber,
      String postalCode,
      String city,
      @ServerTimestampConverter() FieldValue serverTimeStamp});
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
    Object? streetName = freezed,
    Object? streetNumber = freezed,
    Object? postalCode = freezed,
    Object? city = freezed,
    Object? serverTimeStamp = freezed,
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
      streetName: streetName == freezed
          ? _value.streetName
          : streetName // ignore: cast_nullable_to_non_nullable
              as String,
      streetNumber: streetNumber == freezed
          ? _value.streetNumber
          : streetNumber // ignore: cast_nullable_to_non_nullable
              as int,
      postalCode: postalCode == freezed
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      serverTimeStamp: serverTimeStamp == freezed
          ? _value.serverTimeStamp
          : serverTimeStamp // ignore: cast_nullable_to_non_nullable
              as FieldValue,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ShopItemDto extends _ShopItemDto {
  const _$_ShopItemDto(
      {@JsonKey(ignore: true) this.id = '',
      required this.shopName,
      required this.streetName,
      required this.streetNumber,
      required this.postalCode,
      required this.city,
      @ServerTimestampConverter() required this.serverTimeStamp})
      : super._();

  factory _$_ShopItemDto.fromJson(Map<String, dynamic> json) =>
      _$$_ShopItemDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String id;
  @override
  final String shopName;
  @override
  final String streetName;
  @override
  final int streetNumber;
  @override
  final String postalCode;
  @override
  final String city;
  @override
  @ServerTimestampConverter()
  final FieldValue serverTimeStamp;

  @override
  String toString() {
    return 'ShopDto(id: $id, shopName: $shopName, streetName: $streetName, streetNumber: $streetNumber, postalCode: $postalCode, city: $city, serverTimeStamp: $serverTimeStamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ShopItemDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.shopName, shopName) &&
            const DeepCollectionEquality()
                .equals(other.streetName, streetName) &&
            const DeepCollectionEquality()
                .equals(other.streetNumber, streetNumber) &&
            const DeepCollectionEquality()
                .equals(other.postalCode, postalCode) &&
            const DeepCollectionEquality().equals(other.city, city) &&
            const DeepCollectionEquality()
                .equals(other.serverTimeStamp, serverTimeStamp));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(shopName),
      const DeepCollectionEquality().hash(streetName),
      const DeepCollectionEquality().hash(streetNumber),
      const DeepCollectionEquality().hash(postalCode),
      const DeepCollectionEquality().hash(city),
      const DeepCollectionEquality().hash(serverTimeStamp));

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
          required String streetName,
          required int streetNumber,
          required String postalCode,
          required String city,
          @ServerTimestampConverter() required FieldValue serverTimeStamp}) =
      _$_ShopItemDto;
  const _ShopItemDto._() : super._();

  factory _ShopItemDto.fromJson(Map<String, dynamic> json) =
      _$_ShopItemDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String get id;
  @override
  String get shopName;
  @override
  String get streetName;
  @override
  int get streetNumber;
  @override
  String get postalCode;
  @override
  String get city;
  @override
  @ServerTimestampConverter()
  FieldValue get serverTimeStamp;
  @override
  @JsonKey(ignore: true)
  _$ShopItemDtoCopyWith<_ShopItemDto> get copyWith =>
      throw _privateConstructorUsedError;
}
