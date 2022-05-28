// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'shop_location_picker_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ShopLocationPickerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double latitude, double longitude)
        locationChanged,
    required TResult Function() locationNotFound,
    required TResult Function() saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(double latitude, double longitude)? locationChanged,
    TResult Function()? locationNotFound,
    TResult Function()? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double latitude, double longitude)? locationChanged,
    TResult Function()? locationNotFound,
    TResult Function()? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LocationChanged value) locationChanged,
    required TResult Function(_LocationNotFound value) locationNotFound,
    required TResult Function(_Saved value) saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LocationChanged value)? locationChanged,
    TResult Function(_LocationNotFound value)? locationNotFound,
    TResult Function(_Saved value)? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocationChanged value)? locationChanged,
    TResult Function(_LocationNotFound value)? locationNotFound,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopLocationPickerEventCopyWith<$Res> {
  factory $ShopLocationPickerEventCopyWith(ShopLocationPickerEvent value,
          $Res Function(ShopLocationPickerEvent) then) =
      _$ShopLocationPickerEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ShopLocationPickerEventCopyWithImpl<$Res>
    implements $ShopLocationPickerEventCopyWith<$Res> {
  _$ShopLocationPickerEventCopyWithImpl(this._value, this._then);

  final ShopLocationPickerEvent _value;
  // ignore: unused_field
  final $Res Function(ShopLocationPickerEvent) _then;
}

/// @nodoc
abstract class _$$_LocationChangedCopyWith<$Res> {
  factory _$$_LocationChangedCopyWith(
          _$_LocationChanged value, $Res Function(_$_LocationChanged) then) =
      __$$_LocationChangedCopyWithImpl<$Res>;
  $Res call({double latitude, double longitude});
}

/// @nodoc
class __$$_LocationChangedCopyWithImpl<$Res>
    extends _$ShopLocationPickerEventCopyWithImpl<$Res>
    implements _$$_LocationChangedCopyWith<$Res> {
  __$$_LocationChangedCopyWithImpl(
      _$_LocationChanged _value, $Res Function(_$_LocationChanged) _then)
      : super(_value, (v) => _then(v as _$_LocationChanged));

  @override
  _$_LocationChanged get _value => super._value as _$_LocationChanged;

  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_$_LocationChanged(
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
            other is _$_LocationChanged &&
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
  _$$_LocationChangedCopyWith<_$_LocationChanged> get copyWith =>
      __$$_LocationChangedCopyWithImpl<_$_LocationChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double latitude, double longitude)
        locationChanged,
    required TResult Function() locationNotFound,
    required TResult Function() saved,
  }) {
    return locationChanged(latitude, longitude);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(double latitude, double longitude)? locationChanged,
    TResult Function()? locationNotFound,
    TResult Function()? saved,
  }) {
    return locationChanged?.call(latitude, longitude);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double latitude, double longitude)? locationChanged,
    TResult Function()? locationNotFound,
    TResult Function()? saved,
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
    required TResult Function(_LocationNotFound value) locationNotFound,
    required TResult Function(_Saved value) saved,
  }) {
    return locationChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LocationChanged value)? locationChanged,
    TResult Function(_LocationNotFound value)? locationNotFound,
    TResult Function(_Saved value)? saved,
  }) {
    return locationChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocationChanged value)? locationChanged,
    TResult Function(_LocationNotFound value)? locationNotFound,
    TResult Function(_Saved value)? saved,
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
      {required final double latitude,
      required final double longitude}) = _$_LocationChanged;

  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_LocationChangedCopyWith<_$_LocationChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LocationNotFoundCopyWith<$Res> {
  factory _$$_LocationNotFoundCopyWith(
          _$_LocationNotFound value, $Res Function(_$_LocationNotFound) then) =
      __$$_LocationNotFoundCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LocationNotFoundCopyWithImpl<$Res>
    extends _$ShopLocationPickerEventCopyWithImpl<$Res>
    implements _$$_LocationNotFoundCopyWith<$Res> {
  __$$_LocationNotFoundCopyWithImpl(
      _$_LocationNotFound _value, $Res Function(_$_LocationNotFound) _then)
      : super(_value, (v) => _then(v as _$_LocationNotFound));

  @override
  _$_LocationNotFound get _value => super._value as _$_LocationNotFound;
}

/// @nodoc

class _$_LocationNotFound implements _LocationNotFound {
  _$_LocationNotFound();

  @override
  String toString() {
    return 'ShopLocationPickerEvent.locationNotFound()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LocationNotFound);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double latitude, double longitude)
        locationChanged,
    required TResult Function() locationNotFound,
    required TResult Function() saved,
  }) {
    return locationNotFound();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(double latitude, double longitude)? locationChanged,
    TResult Function()? locationNotFound,
    TResult Function()? saved,
  }) {
    return locationNotFound?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double latitude, double longitude)? locationChanged,
    TResult Function()? locationNotFound,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (locationNotFound != null) {
      return locationNotFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LocationChanged value) locationChanged,
    required TResult Function(_LocationNotFound value) locationNotFound,
    required TResult Function(_Saved value) saved,
  }) {
    return locationNotFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LocationChanged value)? locationChanged,
    TResult Function(_LocationNotFound value)? locationNotFound,
    TResult Function(_Saved value)? saved,
  }) {
    return locationNotFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocationChanged value)? locationChanged,
    TResult Function(_LocationNotFound value)? locationNotFound,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (locationNotFound != null) {
      return locationNotFound(this);
    }
    return orElse();
  }
}

abstract class _LocationNotFound implements ShopLocationPickerEvent {
  factory _LocationNotFound() = _$_LocationNotFound;
}

/// @nodoc
abstract class _$$_SavedCopyWith<$Res> {
  factory _$$_SavedCopyWith(_$_Saved value, $Res Function(_$_Saved) then) =
      __$$_SavedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SavedCopyWithImpl<$Res>
    extends _$ShopLocationPickerEventCopyWithImpl<$Res>
    implements _$$_SavedCopyWith<$Res> {
  __$$_SavedCopyWithImpl(_$_Saved _value, $Res Function(_$_Saved) _then)
      : super(_value, (v) => _then(v as _$_Saved));

  @override
  _$_Saved get _value => super._value as _$_Saved;
}

/// @nodoc

class _$_Saved implements _Saved {
  _$_Saved();

  @override
  String toString() {
    return 'ShopLocationPickerEvent.saved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Saved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double latitude, double longitude)
        locationChanged,
    required TResult Function() locationNotFound,
    required TResult Function() saved,
  }) {
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(double latitude, double longitude)? locationChanged,
    TResult Function()? locationNotFound,
    TResult Function()? saved,
  }) {
    return saved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double latitude, double longitude)? locationChanged,
    TResult Function()? locationNotFound,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LocationChanged value) locationChanged,
    required TResult Function(_LocationNotFound value) locationNotFound,
    required TResult Function(_Saved value) saved,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LocationChanged value)? locationChanged,
    TResult Function(_LocationNotFound value)? locationNotFound,
    TResult Function(_Saved value)? saved,
  }) {
    return saved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocationChanged value)? locationChanged,
    TResult Function(_LocationNotFound value)? locationNotFound,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _Saved implements ShopLocationPickerEvent {
  factory _Saved() = _$_Saved;
}

/// @nodoc
mixin _$ShopLocationPickerState {
  Option<Location> get location => throw _privateConstructorUsedError;
  bool get saved => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShopLocationPickerStateCopyWith<ShopLocationPickerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopLocationPickerStateCopyWith<$Res> {
  factory $ShopLocationPickerStateCopyWith(ShopLocationPickerState value,
          $Res Function(ShopLocationPickerState) then) =
      _$ShopLocationPickerStateCopyWithImpl<$Res>;
  $Res call({Option<Location> location, bool saved});
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
    Object? saved = freezed,
  }) {
    return _then(_value.copyWith(
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Option<Location>,
      saved: saved == freezed
          ? _value.saved
          : saved // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_ShopLocationPickerStateCopyWith<$Res>
    implements $ShopLocationPickerStateCopyWith<$Res> {
  factory _$$_ShopLocationPickerStateCopyWith(_$_ShopLocationPickerState value,
          $Res Function(_$_ShopLocationPickerState) then) =
      __$$_ShopLocationPickerStateCopyWithImpl<$Res>;
  @override
  $Res call({Option<Location> location, bool saved});
}

/// @nodoc
class __$$_ShopLocationPickerStateCopyWithImpl<$Res>
    extends _$ShopLocationPickerStateCopyWithImpl<$Res>
    implements _$$_ShopLocationPickerStateCopyWith<$Res> {
  __$$_ShopLocationPickerStateCopyWithImpl(_$_ShopLocationPickerState _value,
      $Res Function(_$_ShopLocationPickerState) _then)
      : super(_value, (v) => _then(v as _$_ShopLocationPickerState));

  @override
  _$_ShopLocationPickerState get _value =>
      super._value as _$_ShopLocationPickerState;

  @override
  $Res call({
    Object? location = freezed,
    Object? saved = freezed,
  }) {
    return _then(_$_ShopLocationPickerState(
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Option<Location>,
      saved: saved == freezed
          ? _value.saved
          : saved // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ShopLocationPickerState implements _ShopLocationPickerState {
  const _$_ShopLocationPickerState(
      {required this.location, required this.saved});

  @override
  final Option<Location> location;
  @override
  final bool saved;

  @override
  String toString() {
    return 'ShopLocationPickerState(location: $location, saved: $saved)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShopLocationPickerState &&
            const DeepCollectionEquality().equals(other.location, location) &&
            const DeepCollectionEquality().equals(other.saved, saved));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(location),
      const DeepCollectionEquality().hash(saved));

  @JsonKey(ignore: true)
  @override
  _$$_ShopLocationPickerStateCopyWith<_$_ShopLocationPickerState>
      get copyWith =>
          __$$_ShopLocationPickerStateCopyWithImpl<_$_ShopLocationPickerState>(
              this, _$identity);
}

abstract class _ShopLocationPickerState implements ShopLocationPickerState {
  const factory _ShopLocationPickerState(
      {required final Option<Location> location,
      required final bool saved}) = _$_ShopLocationPickerState;

  @override
  Option<Location> get location => throw _privateConstructorUsedError;
  @override
  bool get saved => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ShopLocationPickerStateCopyWith<_$_ShopLocationPickerState>
      get copyWith => throw _privateConstructorUsedError;
}
