// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'primitive_hour.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PrimitiveHour {
  int get hours => throw _privateConstructorUsedError;
  int get minutes => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PrimitiveHourCopyWith<PrimitiveHour> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrimitiveHourCopyWith<$Res> {
  factory $PrimitiveHourCopyWith(
          PrimitiveHour value, $Res Function(PrimitiveHour) then) =
      _$PrimitiveHourCopyWithImpl<$Res>;
  $Res call({int hours, int minutes});
}

/// @nodoc
class _$PrimitiveHourCopyWithImpl<$Res>
    implements $PrimitiveHourCopyWith<$Res> {
  _$PrimitiveHourCopyWithImpl(this._value, this._then);

  final PrimitiveHour _value;
  // ignore: unused_field
  final $Res Function(PrimitiveHour) _then;

  @override
  $Res call({
    Object? hours = freezed,
    Object? minutes = freezed,
  }) {
    return _then(_value.copyWith(
      hours: hours == freezed
          ? _value.hours
          : hours // ignore: cast_nullable_to_non_nullable
              as int,
      minutes: minutes == freezed
          ? _value.minutes
          : minutes // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_PrimitiveHourCopyWith<$Res>
    implements $PrimitiveHourCopyWith<$Res> {
  factory _$$_PrimitiveHourCopyWith(
          _$_PrimitiveHour value, $Res Function(_$_PrimitiveHour) then) =
      __$$_PrimitiveHourCopyWithImpl<$Res>;
  @override
  $Res call({int hours, int minutes});
}

/// @nodoc
class __$$_PrimitiveHourCopyWithImpl<$Res>
    extends _$PrimitiveHourCopyWithImpl<$Res>
    implements _$$_PrimitiveHourCopyWith<$Res> {
  __$$_PrimitiveHourCopyWithImpl(
      _$_PrimitiveHour _value, $Res Function(_$_PrimitiveHour) _then)
      : super(_value, (v) => _then(v as _$_PrimitiveHour));

  @override
  _$_PrimitiveHour get _value => super._value as _$_PrimitiveHour;

  @override
  $Res call({
    Object? hours = freezed,
    Object? minutes = freezed,
  }) {
    return _then(_$_PrimitiveHour(
      hours: hours == freezed
          ? _value.hours
          : hours // ignore: cast_nullable_to_non_nullable
              as int,
      minutes: minutes == freezed
          ? _value.minutes
          : minutes // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_PrimitiveHour extends _PrimitiveHour {
  const _$_PrimitiveHour({required this.hours, required this.minutes})
      : super._();

  @override
  final int hours;
  @override
  final int minutes;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PrimitiveHour &&
            const DeepCollectionEquality().equals(other.hours, hours) &&
            const DeepCollectionEquality().equals(other.minutes, minutes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(hours),
      const DeepCollectionEquality().hash(minutes));

  @JsonKey(ignore: true)
  @override
  _$$_PrimitiveHourCopyWith<_$_PrimitiveHour> get copyWith =>
      __$$_PrimitiveHourCopyWithImpl<_$_PrimitiveHour>(this, _$identity);
}

abstract class _PrimitiveHour extends PrimitiveHour {
  const factory _PrimitiveHour(
      {required final int hours,
      required final int minutes}) = _$_PrimitiveHour;
  const _PrimitiveHour._() : super._();

  @override
  int get hours => throw _privateConstructorUsedError;
  @override
  int get minutes => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_PrimitiveHourCopyWith<_$_PrimitiveHour> get copyWith =>
      throw _privateConstructorUsedError;
}
