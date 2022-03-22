// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'day.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DayTearOff {
  const _$DayTearOff();

  _Day call(
      {required DayName day,
      required bool isOpen,
      required TimeInterval openingInterval}) {
    return _Day(
      day: day,
      isOpen: isOpen,
      openingInterval: openingInterval,
    );
  }
}

/// @nodoc
const $Day = _$DayTearOff();

/// @nodoc
mixin _$Day {
  DayName get day => throw _privateConstructorUsedError;
  bool get isOpen => throw _privateConstructorUsedError;
  TimeInterval get openingInterval => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DayCopyWith<Day> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DayCopyWith<$Res> {
  factory $DayCopyWith(Day value, $Res Function(Day) then) =
      _$DayCopyWithImpl<$Res>;
  $Res call({DayName day, bool isOpen, TimeInterval openingInterval});
}

/// @nodoc
class _$DayCopyWithImpl<$Res> implements $DayCopyWith<$Res> {
  _$DayCopyWithImpl(this._value, this._then);

  final Day _value;
  // ignore: unused_field
  final $Res Function(Day) _then;

  @override
  $Res call({
    Object? day = freezed,
    Object? isOpen = freezed,
    Object? openingInterval = freezed,
  }) {
    return _then(_value.copyWith(
      day: day == freezed
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as DayName,
      isOpen: isOpen == freezed
          ? _value.isOpen
          : isOpen // ignore: cast_nullable_to_non_nullable
              as bool,
      openingInterval: openingInterval == freezed
          ? _value.openingInterval
          : openingInterval // ignore: cast_nullable_to_non_nullable
              as TimeInterval,
    ));
  }
}

/// @nodoc
abstract class _$DayCopyWith<$Res> implements $DayCopyWith<$Res> {
  factory _$DayCopyWith(_Day value, $Res Function(_Day) then) =
      __$DayCopyWithImpl<$Res>;
  @override
  $Res call({DayName day, bool isOpen, TimeInterval openingInterval});
}

/// @nodoc
class __$DayCopyWithImpl<$Res> extends _$DayCopyWithImpl<$Res>
    implements _$DayCopyWith<$Res> {
  __$DayCopyWithImpl(_Day _value, $Res Function(_Day) _then)
      : super(_value, (v) => _then(v as _Day));

  @override
  _Day get _value => super._value as _Day;

  @override
  $Res call({
    Object? day = freezed,
    Object? isOpen = freezed,
    Object? openingInterval = freezed,
  }) {
    return _then(_Day(
      day: day == freezed
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as DayName,
      isOpen: isOpen == freezed
          ? _value.isOpen
          : isOpen // ignore: cast_nullable_to_non_nullable
              as bool,
      openingInterval: openingInterval == freezed
          ? _value.openingInterval
          : openingInterval // ignore: cast_nullable_to_non_nullable
              as TimeInterval,
    ));
  }
}

/// @nodoc

class _$_Day extends _Day {
  const _$_Day(
      {required this.day, required this.isOpen, required this.openingInterval})
      : super._();

  @override
  final DayName day;
  @override
  final bool isOpen;
  @override
  final TimeInterval openingInterval;

  @override
  String toString() {
    return 'Day(day: $day, isOpen: $isOpen, openingInterval: $openingInterval)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Day &&
            const DeepCollectionEquality().equals(other.day, day) &&
            const DeepCollectionEquality().equals(other.isOpen, isOpen) &&
            const DeepCollectionEquality()
                .equals(other.openingInterval, openingInterval));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(day),
      const DeepCollectionEquality().hash(isOpen),
      const DeepCollectionEquality().hash(openingInterval));

  @JsonKey(ignore: true)
  @override
  _$DayCopyWith<_Day> get copyWith =>
      __$DayCopyWithImpl<_Day>(this, _$identity);
}

abstract class _Day extends Day {
  const factory _Day(
      {required DayName day,
      required bool isOpen,
      required TimeInterval openingInterval}) = _$_Day;
  const _Day._() : super._();

  @override
  DayName get day;
  @override
  bool get isOpen;
  @override
  TimeInterval get openingInterval;
  @override
  @JsonKey(ignore: true)
  _$DayCopyWith<_Day> get copyWith => throw _privateConstructorUsedError;
}
