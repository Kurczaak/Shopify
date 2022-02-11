// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'shop_location_picker_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ShopLocationPickerEventTearOff {
  const _$ShopLocationPickerEventTearOff();

  _LocationChanged locationChanged(
      {required double latitude, required double longitude}) {
    return _LocationChanged(
      latitude: latitude,
      longitude: longitude,
    );
  }
}

/// @nodoc
const $ShopLocationPickerEvent = _$ShopLocationPickerEventTearOff();

/// @nodoc
mixin _$ShopLocationPickerEvent {
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double latitude, double longitude)
        locationChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(double latitude, double longitude)? locationChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double latitude, double longitude)? locationChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LocationChanged value) locationChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LocationChanged value)? locationChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocationChanged value)? locationChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShopLocationPickerEventCopyWith<ShopLocationPickerEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopLocationPickerEventCopyWith<$Res> {
  factory $ShopLocationPickerEventCopyWith(ShopLocationPickerEvent value,
          $Res Function(ShopLocationPickerEvent) then) =
      _$ShopLocationPickerEventCopyWithImpl<$Res>;
  $Res call({double latitude, double longitude});
}

/// @nodoc
class _$ShopLocationPickerEventCopyWithImpl<$Res>
    implements $ShopLocationPickerEventCopyWith<$Res> {
  _$ShopLocationPickerEventCopyWithImpl(this._value, this._then);

  final ShopLocationPickerEvent _value;
  // ignore: unused_field
  final $Res Function(ShopLocationPickerEvent) _then;

  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
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
    ));
  }
}

/// @nodoc
abstract class _$LocationChangedCopyWith<$Res>
    implements $ShopLocationPickerEventCopyWith<$Res> {
  factory _$LocationChangedCopyWith(
          _LocationChanged value, $Res Function(_LocationChanged) then) =
      __$LocationChangedCopyWithImpl<$Res>;
  @override
  $Res call({double latitude, double longitude});
}

/// @nodoc
class __$LocationChangedCopyWithImpl<$Res>
    extends _$ShopLocationPickerEventCopyWithImpl<$Res>
    implements _$LocationChangedCopyWith<$Res> {
  __$LocationChangedCopyWithImpl(
      _LocationChanged _value, $Res Function(_LocationChanged) _then)
      : super(_value, (v) => _then(v as _LocationChanged));

  @override
  _LocationChanged get _value => super._value as _LocationChanged;

  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_LocationChanged(
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_LocationChanged implements _LocationChanged {
  _$_LocationChanged({required this.latitude, required this.longitude});

  @override
  final double latitude;
  @override
  final double longitude;

  @override
  String toString() {
    return 'ShopLocationPickerEvent.locationChanged(latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LocationChanged &&
            const DeepCollectionEquality().equals(other.latitude, latitude) &&
            const DeepCollectionEquality().equals(other.longitude, longitude));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(latitude),
      const DeepCollectionEquality().hash(longitude));

  @JsonKey(ignore: true)
  @override
  _$LocationChangedCopyWith<_LocationChanged> get copyWith =>
      __$LocationChangedCopyWithImpl<_LocationChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double latitude, double longitude)
        locationChanged,
  }) {
    return locationChanged(latitude, longitude);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(double latitude, double longitude)? locationChanged,
  }) {
    return locationChanged?.call(latitude, longitude);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double latitude, double longitude)? locationChanged,
    required TResult orElse(),
  }) {
    if (locationChanged != null) {
      return locationChanged(latitude, longitude);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LocationChanged value) locationChanged,
  }) {
    return locationChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LocationChanged value)? locationChanged,
  }) {
    return locationChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocationChanged value)? locationChanged,
    required TResult orElse(),
  }) {
    if (locationChanged != null) {
      return locationChanged(this);
    }
    return orElse();
  }
}

abstract class _LocationChanged implements ShopLocationPickerEvent {
  factory _LocationChanged(
      {required double latitude,
      required double longitude}) = _$_LocationChanged;

  @override
  double get latitude;
  @override
  double get longitude;
  @override
  @JsonKey(ignore: true)
  _$LocationChangedCopyWith<_LocationChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ShopLocationPickerStateTearOff {
  const _$ShopLocationPickerStateTearOff();

  _ShopLocationPickerState call({required Option<Location> location}) {
    return _ShopLocationPickerState(
      location: location,
    );
  }
}

/// @nodoc
const $ShopLocationPickerState = _$ShopLocationPickerStateTearOff();

/// @nodoc
mixin _$ShopLocationPickerState {
  Option<Location> get location => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShopLocationPickerStateCopyWith<ShopLocationPickerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopLocationPickerStateCopyWith<$Res> {
  factory $ShopLocationPickerStateCopyWith(ShopLocationPickerState value,
          $Res Function(ShopLocationPickerState) then) =
      _$ShopLocationPickerStateCopyWithImpl<$Res>;
  $Res call({Option<Location> location});
}

/// @nodoc
class _$ShopLocationPickerStateCopyWithImpl<$Res>
    implements $ShopLocationPickerStateCopyWith<$Res> {
  _$ShopLocationPickerStateCopyWithImpl(this._value, this._then);

  final ShopLocationPickerState _value;
  // ignore: unused_field
  final $Res Function(ShopLocationPickerState) _then;

  @override
  $Res call({
    Object? location = freezed,
  }) {
    return _then(_value.copyWith(
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Option<Location>,
    ));
  }
}

/// @nodoc
abstract class _$ShopLocationPickerStateCopyWith<$Res>
    implements $ShopLocationPickerStateCopyWith<$Res> {
  factory _$ShopLocationPickerStateCopyWith(_ShopLocationPickerState value,
          $Res Function(_ShopLocationPickerState) then) =
      __$ShopLocationPickerStateCopyWithImpl<$Res>;
  @override
  $Res call({Option<Location> location});
}

/// @nodoc
class __$ShopLocationPickerStateCopyWithImpl<$Res>
    extends _$ShopLocationPickerStateCopyWithImpl<$Res>
    implements _$ShopLocationPickerStateCopyWith<$Res> {
  __$ShopLocationPickerStateCopyWithImpl(_ShopLocationPickerState _value,
      $Res Function(_ShopLocationPickerState) _then)
      : super(_value, (v) => _then(v as _ShopLocationPickerState));

  @override
  _ShopLocationPickerState get _value =>
      super._value as _ShopLocationPickerState;

  @override
  $Res call({
    Object? location = freezed,
  }) {
    return _then(_ShopLocationPickerState(
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Option<Location>,
    ));
  }
}

/// @nodoc

class _$_ShopLocationPickerState implements _ShopLocationPickerState {
  const _$_ShopLocationPickerState({required this.location});

  @override
  final Option<Location> location;

  @override
  String toString() {
    return 'ShopLocationPickerState(location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ShopLocationPickerState &&
            const DeepCollectionEquality().equals(other.location, location));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(location));

  @JsonKey(ignore: true)
  @override
  _$ShopLocationPickerStateCopyWith<_ShopLocationPickerState> get copyWith =>
      __$ShopLocationPickerStateCopyWithImpl<_ShopLocationPickerState>(
          this, _$identity);
}

abstract class _ShopLocationPickerState implements ShopLocationPickerState {
  const factory _ShopLocationPickerState({required Option<Location> location}) =
      _$_ShopLocationPickerState;

  @override
  Option<Location> get location;
  @override
  @JsonKey(ignore: true)
  _$ShopLocationPickerStateCopyWith<_ShopLocationPickerState> get copyWith =>
      throw _privateConstructorUsedError;
}
