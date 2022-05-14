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
      {@GeoPointConverter() required GeoPoint geopoint,
      required String geohash}) {
    return _LocationDto(
      geopoint: geopoint,
      geohash: geohash,
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
  @GeoPointConverter()
  GeoPoint get geopoint => throw _privateConstructorUsedError;
  String get geohash => throw _privateConstructorUsedError;

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
  $Res call({@GeoPointConverter() GeoPoint geopoint, String geohash});
}

/// @nodoc
class _$LocationDtoCopyWithImpl<$Res> implements $LocationDtoCopyWith<$Res> {
  _$LocationDtoCopyWithImpl(this._value, this._then);

  final LocationDto _value;
  // ignore: unused_field
  final $Res Function(LocationDto) _then;

  @override
  $Res call({
    Object? geopoint = freezed,
    Object? geohash = freezed,
  }) {
    return _then(_value.copyWith(
      geopoint: geopoint == freezed
          ? _value.geopoint
          : geopoint // ignore: cast_nullable_to_non_nullable
              as GeoPoint,
      geohash: geohash == freezed
          ? _value.geohash
          : geohash // ignore: cast_nullable_to_non_nullable
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
  $Res call({@GeoPointConverter() GeoPoint geopoint, String geohash});
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
    Object? geopoint = freezed,
    Object? geohash = freezed,
  }) {
    return _then(_LocationDto(
      geopoint: geopoint == freezed
          ? _value.geopoint
          : geopoint // ignore: cast_nullable_to_non_nullable
              as GeoPoint,
      geohash: geohash == freezed
          ? _value.geohash
          : geohash // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LocationDto extends _LocationDto {
  const _$_LocationDto(
      {@GeoPointConverter() required this.geopoint, required this.geohash})
      : super._();

  factory _$_LocationDto.fromJson(Map<String, dynamic> json) =>
      _$$_LocationDtoFromJson(json);

  @override
  @GeoPointConverter()
  final GeoPoint geopoint;
  @override
  final String geohash;

  @override
  String toString() {
    return 'LocationDto(geopoint: $geopoint, geohash: $geohash)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LocationDto &&
            const DeepCollectionEquality().equals(other.geopoint, geopoint) &&
            const DeepCollectionEquality().equals(other.geohash, geohash));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(geopoint),
      const DeepCollectionEquality().hash(geohash));

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
      {@GeoPointConverter() required GeoPoint geopoint,
      required String geohash}) = _$_LocationDto;
  const _LocationDto._() : super._();

  factory _LocationDto.fromJson(Map<String, dynamic> json) =
      _$_LocationDto.fromJson;

  @override
  @GeoPointConverter()
  GeoPoint get geopoint;
  @override
  String get geohash;
  @override
  @JsonKey(ignore: true)
  _$LocationDtoCopyWith<_LocationDto> get copyWith =>
      throw _privateConstructorUsedError;
}
