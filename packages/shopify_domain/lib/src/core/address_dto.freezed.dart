// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'address_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AddressDto _$AddressDtoFromJson(Map<String, dynamic> json) {
  return _AddressDto.fromJson(json);
}

/// @nodoc
mixin _$AddressDto {
  String get streetName => throw _privateConstructorUsedError;
  String get postalCode => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get streetNumber => throw _privateConstructorUsedError;
  String get apartmentNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressDtoCopyWith<AddressDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressDtoCopyWith<$Res> {
  factory $AddressDtoCopyWith(
          AddressDto value, $Res Function(AddressDto) then) =
      _$AddressDtoCopyWithImpl<$Res>;
  $Res call(
      {String streetName,
      String postalCode,
      String city,
      String streetNumber,
      String apartmentNumber});
}

/// @nodoc
class _$AddressDtoCopyWithImpl<$Res> implements $AddressDtoCopyWith<$Res> {
  _$AddressDtoCopyWithImpl(this._value, this._then);

  final AddressDto _value;
  // ignore: unused_field
  final $Res Function(AddressDto) _then;

  @override
  $Res call({
    Object? streetName = freezed,
    Object? postalCode = freezed,
    Object? city = freezed,
    Object? streetNumber = freezed,
    Object? apartmentNumber = freezed,
  }) {
    return _then(_value.copyWith(
      streetName: streetName == freezed
          ? _value.streetName
          : streetName // ignore: cast_nullable_to_non_nullable
              as String,
      postalCode: postalCode == freezed
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      streetNumber: streetNumber == freezed
          ? _value.streetNumber
          : streetNumber // ignore: cast_nullable_to_non_nullable
              as String,
      apartmentNumber: apartmentNumber == freezed
          ? _value.apartmentNumber
          : apartmentNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_AddressDtoCopyWith<$Res>
    implements $AddressDtoCopyWith<$Res> {
  factory _$$_AddressDtoCopyWith(
          _$_AddressDto value, $Res Function(_$_AddressDto) then) =
      __$$_AddressDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String streetName,
      String postalCode,
      String city,
      String streetNumber,
      String apartmentNumber});
}

/// @nodoc
class __$$_AddressDtoCopyWithImpl<$Res> extends _$AddressDtoCopyWithImpl<$Res>
    implements _$$_AddressDtoCopyWith<$Res> {
  __$$_AddressDtoCopyWithImpl(
      _$_AddressDto _value, $Res Function(_$_AddressDto) _then)
      : super(_value, (v) => _then(v as _$_AddressDto));

  @override
  _$_AddressDto get _value => super._value as _$_AddressDto;

  @override
  $Res call({
    Object? streetName = freezed,
    Object? postalCode = freezed,
    Object? city = freezed,
    Object? streetNumber = freezed,
    Object? apartmentNumber = freezed,
  }) {
    return _then(_$_AddressDto(
      streetName: streetName == freezed
          ? _value.streetName
          : streetName // ignore: cast_nullable_to_non_nullable
              as String,
      postalCode: postalCode == freezed
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      streetNumber: streetNumber == freezed
          ? _value.streetNumber
          : streetNumber // ignore: cast_nullable_to_non_nullable
              as String,
      apartmentNumber: apartmentNumber == freezed
          ? _value.apartmentNumber
          : apartmentNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AddressDto extends _AddressDto {
  const _$_AddressDto(
      {required this.streetName,
      required this.postalCode,
      required this.city,
      required this.streetNumber,
      required this.apartmentNumber})
      : super._();

  factory _$_AddressDto.fromJson(Map<String, dynamic> json) =>
      _$$_AddressDtoFromJson(json);

  @override
  final String streetName;
  @override
  final String postalCode;
  @override
  final String city;
  @override
  final String streetNumber;
  @override
  final String apartmentNumber;

  @override
  String toString() {
    return 'AddressDto(streetName: $streetName, postalCode: $postalCode, city: $city, streetNumber: $streetNumber, apartmentNumber: $apartmentNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddressDto &&
            const DeepCollectionEquality()
                .equals(other.streetName, streetName) &&
            const DeepCollectionEquality()
                .equals(other.postalCode, postalCode) &&
            const DeepCollectionEquality().equals(other.city, city) &&
            const DeepCollectionEquality()
                .equals(other.streetNumber, streetNumber) &&
            const DeepCollectionEquality()
                .equals(other.apartmentNumber, apartmentNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(streetName),
      const DeepCollectionEquality().hash(postalCode),
      const DeepCollectionEquality().hash(city),
      const DeepCollectionEquality().hash(streetNumber),
      const DeepCollectionEquality().hash(apartmentNumber));

  @JsonKey(ignore: true)
  @override
  _$$_AddressDtoCopyWith<_$_AddressDto> get copyWith =>
      __$$_AddressDtoCopyWithImpl<_$_AddressDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddressDtoToJson(this);
  }
}

abstract class _AddressDto extends AddressDto {
  const factory _AddressDto(
      {required final String streetName,
      required final String postalCode,
      required final String city,
      required final String streetNumber,
      required final String apartmentNumber}) = _$_AddressDto;
  const _AddressDto._() : super._();

  factory _AddressDto.fromJson(Map<String, dynamic> json) =
      _$_AddressDto.fromJson;

  @override
  String get streetName => throw _privateConstructorUsedError;
  @override
  String get postalCode => throw _privateConstructorUsedError;
  @override
  String get city => throw _privateConstructorUsedError;
  @override
  String get streetNumber => throw _privateConstructorUsedError;
  @override
  String get apartmentNumber => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_AddressDtoCopyWith<_$_AddressDto> get copyWith =>
      throw _privateConstructorUsedError;
}
