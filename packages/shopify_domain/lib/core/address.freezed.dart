// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'address.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Address {
  StreetName get streetName => throw _privateConstructorUsedError;
  StreetNumber get streetNumber => throw _privateConstructorUsedError;
  AddressNumber get apartmentNumber => throw _privateConstructorUsedError;
  CityName get city => throw _privateConstructorUsedError;
  PostalCode get postalCode => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddressCopyWith<Address> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressCopyWith<$Res> {
  factory $AddressCopyWith(Address value, $Res Function(Address) then) =
      _$AddressCopyWithImpl<$Res>;
  $Res call(
      {StreetName streetName,
      StreetNumber streetNumber,
      AddressNumber apartmentNumber,
      CityName city,
      PostalCode postalCode});
}

/// @nodoc
class _$AddressCopyWithImpl<$Res> implements $AddressCopyWith<$Res> {
  _$AddressCopyWithImpl(this._value, this._then);

  final Address _value;
  // ignore: unused_field
  final $Res Function(Address) _then;

  @override
  $Res call({
    Object? streetName = freezed,
    Object? streetNumber = freezed,
    Object? apartmentNumber = freezed,
    Object? city = freezed,
    Object? postalCode = freezed,
  }) {
    return _then(_value.copyWith(
      streetName: streetName == freezed
          ? _value.streetName
          : streetName // ignore: cast_nullable_to_non_nullable
              as StreetName,
      streetNumber: streetNumber == freezed
          ? _value.streetNumber
          : streetNumber // ignore: cast_nullable_to_non_nullable
              as StreetNumber,
      apartmentNumber: apartmentNumber == freezed
          ? _value.apartmentNumber
          : apartmentNumber // ignore: cast_nullable_to_non_nullable
              as AddressNumber,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as CityName,
      postalCode: postalCode == freezed
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as PostalCode,
    ));
  }
}

/// @nodoc
abstract class _$$_AddressCopyWith<$Res> implements $AddressCopyWith<$Res> {
  factory _$$_AddressCopyWith(
          _$_Address value, $Res Function(_$_Address) then) =
      __$$_AddressCopyWithImpl<$Res>;
  @override
  $Res call(
      {StreetName streetName,
      StreetNumber streetNumber,
      AddressNumber apartmentNumber,
      CityName city,
      PostalCode postalCode});
}

/// @nodoc
class __$$_AddressCopyWithImpl<$Res> extends _$AddressCopyWithImpl<$Res>
    implements _$$_AddressCopyWith<$Res> {
  __$$_AddressCopyWithImpl(_$_Address _value, $Res Function(_$_Address) _then)
      : super(_value, (v) => _then(v as _$_Address));

  @override
  _$_Address get _value => super._value as _$_Address;

  @override
  $Res call({
    Object? streetName = freezed,
    Object? streetNumber = freezed,
    Object? apartmentNumber = freezed,
    Object? city = freezed,
    Object? postalCode = freezed,
  }) {
    return _then(_$_Address(
      streetName: streetName == freezed
          ? _value.streetName
          : streetName // ignore: cast_nullable_to_non_nullable
              as StreetName,
      streetNumber: streetNumber == freezed
          ? _value.streetNumber
          : streetNumber // ignore: cast_nullable_to_non_nullable
              as StreetNumber,
      apartmentNumber: apartmentNumber == freezed
          ? _value.apartmentNumber
          : apartmentNumber // ignore: cast_nullable_to_non_nullable
              as AddressNumber,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as CityName,
      postalCode: postalCode == freezed
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as PostalCode,
    ));
  }
}

/// @nodoc

class _$_Address extends _Address {
  const _$_Address(
      {required this.streetName,
      required this.streetNumber,
      required this.apartmentNumber,
      required this.city,
      required this.postalCode})
      : super._();

  @override
  final StreetName streetName;
  @override
  final StreetNumber streetNumber;
  @override
  final AddressNumber apartmentNumber;
  @override
  final CityName city;
  @override
  final PostalCode postalCode;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Address &&
            const DeepCollectionEquality()
                .equals(other.streetName, streetName) &&
            const DeepCollectionEquality()
                .equals(other.streetNumber, streetNumber) &&
            const DeepCollectionEquality()
                .equals(other.apartmentNumber, apartmentNumber) &&
            const DeepCollectionEquality().equals(other.city, city) &&
            const DeepCollectionEquality()
                .equals(other.postalCode, postalCode));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(streetName),
      const DeepCollectionEquality().hash(streetNumber),
      const DeepCollectionEquality().hash(apartmentNumber),
      const DeepCollectionEquality().hash(city),
      const DeepCollectionEquality().hash(postalCode));

  @JsonKey(ignore: true)
  @override
  _$$_AddressCopyWith<_$_Address> get copyWith =>
      __$$_AddressCopyWithImpl<_$_Address>(this, _$identity);
}

abstract class _Address extends Address {
  const factory _Address(
      {required final StreetName streetName,
      required final StreetNumber streetNumber,
      required final AddressNumber apartmentNumber,
      required final CityName city,
      required final PostalCode postalCode}) = _$_Address;
  const _Address._() : super._();

  @override
  StreetName get streetName => throw _privateConstructorUsedError;
  @override
  StreetNumber get streetNumber => throw _privateConstructorUsedError;
  @override
  AddressNumber get apartmentNumber => throw _privateConstructorUsedError;
  @override
  CityName get city => throw _privateConstructorUsedError;
  @override
  PostalCode get postalCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_AddressCopyWith<_$_Address> get copyWith =>
      throw _privateConstructorUsedError;
}
