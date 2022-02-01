// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'working_hour.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$WorkingHourTearOff {
  const _$WorkingHourTearOff();

  _WorkingHour call(
      {required Hour hour,
      required Minute minutes,
      required bool twelveHourFormat,
      required bool am}) {
    return _WorkingHour(
      hour: hour,
      minutes: minutes,
      twelveHourFormat: twelveHourFormat,
      am: am,
    );
  }
}

/// @nodoc
const $WorkingHour = _$WorkingHourTearOff();

/// @nodoc
mixin _$WorkingHour {
  Hour get hour => throw _privateConstructorUsedError;
  Minute get minutes => throw _privateConstructorUsedError;
  bool get twelveHourFormat => throw _privateConstructorUsedError;
  bool get am => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WorkingHourCopyWith<WorkingHour> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkingHourCopyWith<$Res> {
  factory $WorkingHourCopyWith(
          WorkingHour value, $Res Function(WorkingHour) then) =
      _$WorkingHourCopyWithImpl<$Res>;
  $Res call({Hour hour, Minute minutes, bool twelveHourFormat, bool am});
}

/// @nodoc
class _$WorkingHourCopyWithImpl<$Res> implements $WorkingHourCopyWith<$Res> {
  _$WorkingHourCopyWithImpl(this._value, this._then);

  final WorkingHour _value;
  // ignore: unused_field
  final $Res Function(WorkingHour) _then;

  @override
  $Res call({
    Object? hour = freezed,
    Object? minutes = freezed,
    Object? twelveHourFormat = freezed,
    Object? am = freezed,
  }) {
    return _then(_value.copyWith(
      hour: hour == freezed
          ? _value.hour
          : hour // ignore: cast_nullable_to_non_nullable
              as Hour,
      minutes: minutes == freezed
          ? _value.minutes
          : minutes // ignore: cast_nullable_to_non_nullable
              as Minute,
      twelveHourFormat: twelveHourFormat == freezed
          ? _value.twelveHourFormat
          : twelveHourFormat // ignore: cast_nullable_to_non_nullable
              as bool,
      am: am == freezed
          ? _value.am
          : am // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$WorkingHourCopyWith<$Res>
    implements $WorkingHourCopyWith<$Res> {
  factory _$WorkingHourCopyWith(
          _WorkingHour value, $Res Function(_WorkingHour) then) =
      __$WorkingHourCopyWithImpl<$Res>;
  @override
  $Res call({Hour hour, Minute minutes, bool twelveHourFormat, bool am});
}

/// @nodoc
class __$WorkingHourCopyWithImpl<$Res> extends _$WorkingHourCopyWithImpl<$Res>
    implements _$WorkingHourCopyWith<$Res> {
  __$WorkingHourCopyWithImpl(
      _WorkingHour _value, $Res Function(_WorkingHour) _then)
      : super(_value, (v) => _then(v as _WorkingHour));

  @override
  _WorkingHour get _value => super._value as _WorkingHour;

  @override
  $Res call({
    Object? hour = freezed,
    Object? minutes = freezed,
    Object? twelveHourFormat = freezed,
    Object? am = freezed,
  }) {
    return _then(_WorkingHour(
      hour: hour == freezed
          ? _value.hour
          : hour // ignore: cast_nullable_to_non_nullable
              as Hour,
      minutes: minutes == freezed
          ? _value.minutes
          : minutes // ignore: cast_nullable_to_non_nullable
              as Minute,
      twelveHourFormat: twelveHourFormat == freezed
          ? _value.twelveHourFormat
          : twelveHourFormat // ignore: cast_nullable_to_non_nullable
              as bool,
      am: am == freezed
          ? _value.am
          : am // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_WorkingHour extends _WorkingHour {
  const _$_WorkingHour(
      {required this.hour,
      required this.minutes,
      required this.twelveHourFormat,
      required this.am})
      : super._();

  @override
  final Hour hour;
  @override
  final Minute minutes;
  @override
  final bool twelveHourFormat;
  @override
  final bool am;

  @override
  String toString() {
    return 'WorkingHour(hour: $hour, minutes: $minutes, twelveHourFormat: $twelveHourFormat, am: $am)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WorkingHour &&
            const DeepCollectionEquality().equals(other.hour, hour) &&
            const DeepCollectionEquality().equals(other.minutes, minutes) &&
            const DeepCollectionEquality()
                .equals(other.twelveHourFormat, twelveHourFormat) &&
            const DeepCollectionEquality().equals(other.am, am));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(hour),
      const DeepCollectionEquality().hash(minutes),
      const DeepCollectionEquality().hash(twelveHourFormat),
      const DeepCollectionEquality().hash(am));

  @JsonKey(ignore: true)
  @override
  _$WorkingHourCopyWith<_WorkingHour> get copyWith =>
      __$WorkingHourCopyWithImpl<_WorkingHour>(this, _$identity);
}

abstract class _WorkingHour extends WorkingHour {
  const factory _WorkingHour(
      {required Hour hour,
      required Minute minutes,
      required bool twelveHourFormat,
      required bool am}) = _$_WorkingHour;
  const _WorkingHour._() : super._();

  @override
  Hour get hour;
  @override
  Minute get minutes;
  @override
  bool get twelveHourFormat;
  @override
  bool get am;
  @override
  @JsonKey(ignore: true)
  _$WorkingHourCopyWith<_WorkingHour> get copyWith =>
      throw _privateConstructorUsedError;
}
