// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'location_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LocationDto _$LocationDtoFromJson(Map<String, dynamic> json) {
  return _LocationDto.fromJson(json);
}

/// @nodoc
class _$LocationDtoTearOff {
  const _$LocationDtoTearOff();

  _LocationDto call(
      {required double latitude,
      required double longitude,
      required String geoHash}) {
    return _LocationDto(
      latitude: latitude,
      longitude: longitude,
      geoHash: geoHash,
    );
  }

  LocationDto fromJson(Map<String, Object?> json) {
    return LocationDto.fromJson(json);
  }
}

/// @nodoc
const $LocationDto = _$LocationDtoTearOff();

/// @nodoc
mixin _$LocationDto {
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  String get geoHash => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationDtoCopyWith<LocationDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationDtoCopyWith<$Res> {
  factory $LocationDtoCopyWith(
          LocationDto value, $Res Function(LocationDto) then) =
      _$LocationDtoCopyWithImpl<$Res>;
  $Res call({double latitude, double longitude, String geoHash});
}

/// @nodoc
class _$LocationDtoCopyWithImpl<$Res> implements $LocationDtoCopyWith<$Res> {
  _$LocationDtoCopyWithImpl(this._value, this._then);

  final LocationDto _value;
  // ignore: unused_field
  final $Res Function(LocationDto) _then;

  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? geoHash = freezed,
  }) {
    return _then(_value.copyWith(
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      geoHash: geoHash == freezed
          ? _value.geoHash
          : geoHash // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$LocationDtoCopyWith<$Res>
    implements $LocationDtoCopyWith<$Res> {
  factory _$LocationDtoCopyWith(
          _LocationDto value, $Res Function(_LocationDto) then) =
      __$LocationDtoCopyWithImpl<$Res>;
  @override
  $Res call({double latitude, double longitude, String geoHash});
}

/// @nodoc
class __$LocationDtoCopyWithImpl<$Res> extends _$LocationDtoCopyWithImpl<$Res>
    implements _$LocationDtoCopyWith<$Res> {
  __$LocationDtoCopyWithImpl(
      _LocationDto _value, $Res Function(_LocationDto) _then)
      : super(_value, (v) => _then(v as _LocationDto));

  @override
  _LocationDto get _value => super._value as _LocationDto;

  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? geoHash = freezed,
  }) {
    return _then(_LocationDto(
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      geoHash: geoHash == freezed
          ? _value.geoHash
          : geoHash // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LocationDto extends _LocationDto {
  const _$_LocationDto(
      {required this.latitude, required this.longitude, required this.geoHash})
      : super._();

  factory _$_LocationDto.fromJson(Map<String, dynamic> json) =>
      _$$_LocationDtoFromJson(json);

  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final String geoHash;

  @override
  String toString() {
    return 'LocationDto(latitude: $latitude, longitude: $longitude, geoHash: $geoHash)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LocationDto &&
            const DeepCollectionEquality().equals(other.latitude, latitude) &&
            const DeepCollectionEquality().equals(other.longitude, longitude) &&
            const DeepCollectionEquality().equals(other.geoHash, geoHash));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(latitude),
      const DeepCollectionEquality().hash(longitude),
      const DeepCollectionEquality().hash(geoHash));

  @JsonKey(ignore: true)
  @override
  _$LocationDtoCopyWith<_LocationDto> get copyWith =>
      __$LocationDtoCopyWithImpl<_LocationDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocationDtoToJson(this);
  }
}

abstract class _LocationDto extends LocationDto {
  const factory _LocationDto(
      {required double latitude,
      required double longitude,
      required String geoHash}) = _$_LocationDto;
  const _LocationDto._() : super._();

  factory _LocationDto.fromJson(Map<String, dynamic> json) =
      _$_LocationDto.fromJson;

  @override
  double get latitude;
  @override
  double get longitude;
  @override
  String get geoHash;
  @override
  @JsonKey(ignore: true)
  _$LocationDtoCopyWith<_LocationDto> get copyWith =>
      throw _privateConstructorUsedError;
}
