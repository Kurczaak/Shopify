// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'day_presentation_classes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DayPrimitive {
  String get day => throw _privateConstructorUsedError;
  bool get isOpen => throw _privateConstructorUsedError;
  TimeIntervalPrimitive get timeInterval => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DayPrimitiveCopyWith<DayPrimitive> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DayPrimitiveCopyWith<$Res> {
  factory $DayPrimitiveCopyWith(
          DayPrimitive value, $Res Function(DayPrimitive) then) =
      _$DayPrimitiveCopyWithImpl<$Res>;
  $Res call({String day, bool isOpen, TimeIntervalPrimitive timeInterval});

  $TimeIntervalPrimitiveCopyWith<$Res> get timeInterval;
}

/// @nodoc
class _$DayPrimitiveCopyWithImpl<$Res> implements $DayPrimitiveCopyWith<$Res> {
  _$DayPrimitiveCopyWithImpl(this._value, this._then);

  final DayPrimitive _value;
  // ignore: unused_field
  final $Res Function(DayPrimitive) _then;

  @override
  $Res call({
    Object? day = freezed,
    Object? isOpen = freezed,
    Object? timeInterval = freezed,
  }) {
    return _then(_value.copyWith(
      day: day == freezed
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String,
      isOpen: isOpen == freezed
          ? _value.isOpen
          : isOpen // ignore: cast_nullable_to_non_nullable
              as bool,
      timeInterval: timeInterval == freezed
          ? _value.timeInterval
          : timeInterval // ignore: cast_nullable_to_non_nullable
              as TimeIntervalPrimitive,
    ));
  }

  @override
  $TimeIntervalPrimitiveCopyWith<$Res> get timeInterval {
    return $TimeIntervalPrimitiveCopyWith<$Res>(_value.timeInterval, (value) {
      return _then(_value.copyWith(timeInterval: value));
    });
  }
}

/// @nodoc
abstract class _$$_DayPrimitiveCopyWith<$Res>
    implements $DayPrimitiveCopyWith<$Res> {
  factory _$$_DayPrimitiveCopyWith(
          _$_DayPrimitive value, $Res Function(_$_DayPrimitive) then) =
      __$$_DayPrimitiveCopyWithImpl<$Res>;
  @override
  $Res call({String day, bool isOpen, TimeIntervalPrimitive timeInterval});

  @override
  $TimeIntervalPrimitiveCopyWith<$Res> get timeInterval;
}

/// @nodoc
class __$$_DayPrimitiveCopyWithImpl<$Res>
    extends _$DayPrimitiveCopyWithImpl<$Res>
    implements _$$_DayPrimitiveCopyWith<$Res> {
  __$$_DayPrimitiveCopyWithImpl(
      _$_DayPrimitive _value, $Res Function(_$_DayPrimitive) _then)
      : super(_value, (v) => _then(v as _$_DayPrimitive));

  @override
  _$_DayPrimitive get _value => super._value as _$_DayPrimitive;

  @override
  $Res call({
    Object? day = freezed,
    Object? isOpen = freezed,
    Object? timeInterval = freezed,
  }) {
    return _then(_$_DayPrimitive(
      day: day == freezed
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String,
      isOpen: isOpen == freezed
          ? _value.isOpen
          : isOpen // ignore: cast_nullable_to_non_nullable
              as bool,
      timeInterval: timeInterval == freezed
          ? _value.timeInterval
          : timeInterval // ignore: cast_nullable_to_non_nullable
              as TimeIntervalPrimitive,
    ));
  }
}

/// @nodoc

class _$_DayPrimitive extends _DayPrimitive {
  const _$_DayPrimitive(
      {required this.day, required this.isOpen, required this.timeInterval})
      : super._();

  @override
  final String day;
  @override
  final bool isOpen;
  @override
  final TimeIntervalPrimitive timeInterval;

  @override
  String toString() {
    return 'DayPrimitive(day: $day, isOpen: $isOpen, timeInterval: $timeInterval)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DayPrimitive &&
            const DeepCollectionEquality().equals(other.day, day) &&
            const DeepCollectionEquality().equals(other.isOpen, isOpen) &&
            const DeepCollectionEquality()
                .equals(other.timeInterval, timeInterval));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(day),
      const DeepCollectionEquality().hash(isOpen),
      const DeepCollectionEquality().hash(timeInterval));

  @JsonKey(ignore: true)
  @override
  _$$_DayPrimitiveCopyWith<_$_DayPrimitive> get copyWith =>
      __$$_DayPrimitiveCopyWithImpl<_$_DayPrimitive>(this, _$identity);
}

abstract class _DayPrimitive extends DayPrimitive {
  const factory _DayPrimitive(
      {required final String day,
      required final bool isOpen,
      required final TimeIntervalPrimitive timeInterval}) = _$_DayPrimitive;
  const _DayPrimitive._() : super._();

  @override
  String get day => throw _privateConstructorUsedError;
  @override
  bool get isOpen => throw _privateConstructorUsedError;
  @override
  TimeIntervalPrimitive get timeInterval => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_DayPrimitiveCopyWith<_$_DayPrimitive> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TimeIntervalPrimitive {
  int get openingHour => throw _privateConstructorUsedError;
  int get openingMinutes => throw _privateConstructorUsedError;
  int get closingHour => throw _privateConstructorUsedError;
  int get closingMinutes => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TimeIntervalPrimitiveCopyWith<TimeIntervalPrimitive> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeIntervalPrimitiveCopyWith<$Res> {
  factory $TimeIntervalPrimitiveCopyWith(TimeIntervalPrimitive value,
          $Res Function(TimeIntervalPrimitive) then) =
      _$TimeIntervalPrimitiveCopyWithImpl<$Res>;
  $Res call(
      {int openingHour,
      int openingMinutes,
      int closingHour,
      int closingMinutes});
}

/// @nodoc
class _$TimeIntervalPrimitiveCopyWithImpl<$Res>
    implements $TimeIntervalPrimitiveCopyWith<$Res> {
  _$TimeIntervalPrimitiveCopyWithImpl(this._value, this._then);

  final TimeIntervalPrimitive _value;
  // ignore: unused_field
  final $Res Function(TimeIntervalPrimitive) _then;

  @override
  $Res call({
    Object? openingHour = freezed,
    Object? openingMinutes = freezed,
    Object? closingHour = freezed,
    Object? closingMinutes = freezed,
  }) {
    return _then(_value.copyWith(
      openingHour: openingHour == freezed
          ? _value.openingHour
          : openingHour // ignore: cast_nullable_to_non_nullable
              as int,
      openingMinutes: openingMinutes == freezed
          ? _value.openingMinutes
          : openingMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      closingHour: closingHour == freezed
          ? _value.closingHour
          : closingHour // ignore: cast_nullable_to_non_nullable
              as int,
      closingMinutes: closingMinutes == freezed
          ? _value.closingMinutes
          : closingMinutes // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_TimeIntervalPrimitiveCopyWith<$Res>
    implements $TimeIntervalPrimitiveCopyWith<$Res> {
  factory _$$_TimeIntervalPrimitiveCopyWith(_$_TimeIntervalPrimitive value,
          $Res Function(_$_TimeIntervalPrimitive) then) =
      __$$_TimeIntervalPrimitiveCopyWithImpl<$Res>;
  @override
  $Res call(
      {int openingHour,
      int openingMinutes,
      int closingHour,
      int closingMinutes});
}

/// @nodoc
class __$$_TimeIntervalPrimitiveCopyWithImpl<$Res>
    extends _$TimeIntervalPrimitiveCopyWithImpl<$Res>
    implements _$$_TimeIntervalPrimitiveCopyWith<$Res> {
  __$$_TimeIntervalPrimitiveCopyWithImpl(_$_TimeIntervalPrimitive _value,
      $Res Function(_$_TimeIntervalPrimitive) _then)
      : super(_value, (v) => _then(v as _$_TimeIntervalPrimitive));

  @override
  _$_TimeIntervalPrimitive get _value =>
      super._value as _$_TimeIntervalPrimitive;

  @override
  $Res call({
    Object? openingHour = freezed,
    Object? openingMinutes = freezed,
    Object? closingHour = freezed,
    Object? closingMinutes = freezed,
  }) {
    return _then(_$_TimeIntervalPrimitive(
      openingHour: openingHour == freezed
          ? _value.openingHour
          : openingHour // ignore: cast_nullable_to_non_nullable
              as int,
      openingMinutes: openingMinutes == freezed
          ? _value.openingMinutes
          : openingMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      closingHour: closingHour == freezed
          ? _value.closingHour
          : closingHour // ignore: cast_nullable_to_non_nullable
              as int,
      closingMinutes: closingMinutes == freezed
          ? _value.closingMinutes
          : closingMinutes // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_TimeIntervalPrimitive extends _TimeIntervalPrimitive {
  const _$_TimeIntervalPrimitive(
      {required this.openingHour,
      required this.openingMinutes,
      required this.closingHour,
      required this.closingMinutes})
      : super._();

  @override
  final int openingHour;
  @override
  final int openingMinutes;
  @override
  final int closingHour;
  @override
  final int closingMinutes;

  @override
  String toString() {
    return 'TimeIntervalPrimitive(openingHour: $openingHour, openingMinutes: $openingMinutes, closingHour: $closingHour, closingMinutes: $closingMinutes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TimeIntervalPrimitive &&
            const DeepCollectionEquality()
                .equals(other.openingHour, openingHour) &&
            const DeepCollectionEquality()
                .equals(other.openingMinutes, openingMinutes) &&
            const DeepCollectionEquality()
                .equals(other.closingHour, closingHour) &&
            const DeepCollectionEquality()
                .equals(other.closingMinutes, closingMinutes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(openingHour),
      const DeepCollectionEquality().hash(openingMinutes),
      const DeepCollectionEquality().hash(closingHour),
      const DeepCollectionEquality().hash(closingMinutes));

  @JsonKey(ignore: true)
  @override
  _$$_TimeIntervalPrimitiveCopyWith<_$_TimeIntervalPrimitive> get copyWith =>
      __$$_TimeIntervalPrimitiveCopyWithImpl<_$_TimeIntervalPrimitive>(
          this, _$identity);
}

abstract class _TimeIntervalPrimitive extends TimeIntervalPrimitive {
  const factory _TimeIntervalPrimitive(
      {required final int openingHour,
      required final int openingMinutes,
      required final int closingHour,
      required final int closingMinutes}) = _$_TimeIntervalPrimitive;
  const _TimeIntervalPrimitive._() : super._();

  @override
  int get openingHour => throw _privateConstructorUsedError;
  @override
  int get openingMinutes => throw _privateConstructorUsedError;
  @override
  int get closingHour => throw _privateConstructorUsedError;
  @override
  int get closingMinutes => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_TimeIntervalPrimitiveCopyWith<_$_TimeIntervalPrimitive> get copyWith =>
      throw _privateConstructorUsedError;
}
