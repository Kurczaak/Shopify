// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'location_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LocationState {
  Location get location => throw _privateConstructorUsedError;
  double get radius => throw _privateConstructorUsedError;
  Option<LocationFailure> get locationFailureOption =>
      throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocationStateCopyWith<LocationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationStateCopyWith<$Res> {
  factory $LocationStateCopyWith(
          LocationState value, $Res Function(LocationState) then) =
      _$LocationStateCopyWithImpl<$Res>;
  $Res call(
      {Location location,
      double radius,
      Option<LocationFailure> locationFailureOption,
      bool isLoading});

  $LocationCopyWith<$Res> get location;
}

/// @nodoc
class _$LocationStateCopyWithImpl<$Res>
    implements $LocationStateCopyWith<$Res> {
  _$LocationStateCopyWithImpl(this._value, this._then);

  final LocationState _value;
  // ignore: unused_field
  final $Res Function(LocationState) _then;

  @override
  $Res call({
    Object? location = freezed,
    Object? radius = freezed,
    Object? locationFailureOption = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location,
      radius: radius == freezed
          ? _value.radius
          : radius // ignore: cast_nullable_to_non_nullable
              as double,
      locationFailureOption: locationFailureOption == freezed
          ? _value.locationFailureOption
          : locationFailureOption // ignore: cast_nullable_to_non_nullable
              as Option<LocationFailure>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $LocationCopyWith<$Res> get location {
    return $LocationCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value));
    });
  }
}

/// @nodoc
abstract class _$$_LocationStateCopyWith<$Res>
    implements $LocationStateCopyWith<$Res> {
  factory _$$_LocationStateCopyWith(
          _$_LocationState value, $Res Function(_$_LocationState) then) =
      __$$_LocationStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Location location,
      double radius,
      Option<LocationFailure> locationFailureOption,
      bool isLoading});

  @override
  $LocationCopyWith<$Res> get location;
}

/// @nodoc
class __$$_LocationStateCopyWithImpl<$Res>
    extends _$LocationStateCopyWithImpl<$Res>
    implements _$$_LocationStateCopyWith<$Res> {
  __$$_LocationStateCopyWithImpl(
      _$_LocationState _value, $Res Function(_$_LocationState) _then)
      : super(_value, (v) => _then(v as _$_LocationState));

  @override
  _$_LocationState get _value => super._value as _$_LocationState;

  @override
  $Res call({
    Object? location = freezed,
    Object? radius = freezed,
    Object? locationFailureOption = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_$_LocationState(
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location,
      radius: radius == freezed
          ? _value.radius
          : radius // ignore: cast_nullable_to_non_nullable
              as double,
      locationFailureOption: locationFailureOption == freezed
          ? _value.locationFailureOption
          : locationFailureOption // ignore: cast_nullable_to_non_nullable
              as Option<LocationFailure>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_LocationState implements _LocationState {
  const _$_LocationState(
      {required this.location,
      required this.radius,
      required this.locationFailureOption,
      required this.isLoading});

  @override
  final Location location;
  @override
  final double radius;
  @override
  final Option<LocationFailure> locationFailureOption;
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'LocationState(location: $location, radius: $radius, locationFailureOption: $locationFailureOption, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocationState &&
            const DeepCollectionEquality().equals(other.location, location) &&
            const DeepCollectionEquality().equals(other.radius, radius) &&
            const DeepCollectionEquality()
                .equals(other.locationFailureOption, locationFailureOption) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(location),
      const DeepCollectionEquality().hash(radius),
      const DeepCollectionEquality().hash(locationFailureOption),
      const DeepCollectionEquality().hash(isLoading));

  @JsonKey(ignore: true)
  @override
  _$$_LocationStateCopyWith<_$_LocationState> get copyWith =>
      __$$_LocationStateCopyWithImpl<_$_LocationState>(this, _$identity);
}

abstract class _LocationState implements LocationState {
  const factory _LocationState(
      {required final Location location,
      required final double radius,
      required final Option<LocationFailure> locationFailureOption,
      required final bool isLoading}) = _$_LocationState;

  @override
  Location get location => throw _privateConstructorUsedError;
  @override
  double get radius => throw _privateConstructorUsedError;
  @override
  Option<LocationFailure> get locationFailureOption =>
      throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_LocationStateCopyWith<_$_LocationState> get copyWith =>
      throw _privateConstructorUsedError;
}
