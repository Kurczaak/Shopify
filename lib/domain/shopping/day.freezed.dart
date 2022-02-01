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
class _$WorkingDayTearOff {
  const _$WorkingDayTearOff();

  _WorkingDay call(Day day,
      {required WorkingHour openingHour,
      required WorkingHour closingHour,
      required bool isOpen}) {
    return _WorkingDay(
      day,
      openingHour: openingHour,
      closingHour: closingHour,
      isOpen: isOpen,
    );
  }
}

/// @nodoc
const $WorkingDay = _$WorkingDayTearOff();

/// @nodoc
mixin _$WorkingDay {
  Day get day => throw _privateConstructorUsedError;
  WorkingHour get openingHour => throw _privateConstructorUsedError;
  WorkingHour get closingHour => throw _privateConstructorUsedError;
  bool get isOpen => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WorkingDayCopyWith<WorkingDay> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkingDayCopyWith<$Res> {
  factory $WorkingDayCopyWith(
          WorkingDay value, $Res Function(WorkingDay) then) =
      _$WorkingDayCopyWithImpl<$Res>;
  $Res call(
      {Day day, WorkingHour openingHour, WorkingHour closingHour, bool isOpen});

  $WorkingHourCopyWith<$Res> get openingHour;
  $WorkingHourCopyWith<$Res> get closingHour;
}

/// @nodoc
class _$WorkingDayCopyWithImpl<$Res> implements $WorkingDayCopyWith<$Res> {
  _$WorkingDayCopyWithImpl(this._value, this._then);

  final WorkingDay _value;
  // ignore: unused_field
  final $Res Function(WorkingDay) _then;

  @override
  $Res call({
    Object? day = freezed,
    Object? openingHour = freezed,
    Object? closingHour = freezed,
    Object? isOpen = freezed,
  }) {
    return _then(_value.copyWith(
      day: day == freezed
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as Day,
      openingHour: openingHour == freezed
          ? _value.openingHour
          : openingHour // ignore: cast_nullable_to_non_nullable
              as WorkingHour,
      closingHour: closingHour == freezed
          ? _value.closingHour
          : closingHour // ignore: cast_nullable_to_non_nullable
              as WorkingHour,
      isOpen: isOpen == freezed
          ? _value.isOpen
          : isOpen // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $WorkingHourCopyWith<$Res> get openingHour {
    return $WorkingHourCopyWith<$Res>(_value.openingHour, (value) {
      return _then(_value.copyWith(openingHour: value));
    });
  }

  @override
  $WorkingHourCopyWith<$Res> get closingHour {
    return $WorkingHourCopyWith<$Res>(_value.closingHour, (value) {
      return _then(_value.copyWith(closingHour: value));
    });
  }
}

/// @nodoc
abstract class _$WorkingDayCopyWith<$Res> implements $WorkingDayCopyWith<$Res> {
  factory _$WorkingDayCopyWith(
          _WorkingDay value, $Res Function(_WorkingDay) then) =
      __$WorkingDayCopyWithImpl<$Res>;
  @override
  $Res call(
      {Day day, WorkingHour openingHour, WorkingHour closingHour, bool isOpen});

  @override
  $WorkingHourCopyWith<$Res> get openingHour;
  @override
  $WorkingHourCopyWith<$Res> get closingHour;
}

/// @nodoc
class __$WorkingDayCopyWithImpl<$Res> extends _$WorkingDayCopyWithImpl<$Res>
    implements _$WorkingDayCopyWith<$Res> {
  __$WorkingDayCopyWithImpl(
      _WorkingDay _value, $Res Function(_WorkingDay) _then)
      : super(_value, (v) => _then(v as _WorkingDay));

  @override
  _WorkingDay get _value => super._value as _WorkingDay;

  @override
  $Res call({
    Object? day = freezed,
    Object? openingHour = freezed,
    Object? closingHour = freezed,
    Object? isOpen = freezed,
  }) {
    return _then(_WorkingDay(
      day == freezed
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as Day,
      openingHour: openingHour == freezed
          ? _value.openingHour
          : openingHour // ignore: cast_nullable_to_non_nullable
              as WorkingHour,
      closingHour: closingHour == freezed
          ? _value.closingHour
          : closingHour // ignore: cast_nullable_to_non_nullable
              as WorkingHour,
      isOpen: isOpen == freezed
          ? _value.isOpen
          : isOpen // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_WorkingDay extends _WorkingDay {
  const _$_WorkingDay(this.day,
      {required this.openingHour,
      required this.closingHour,
      required this.isOpen})
      : super._();

  @override
  final Day day;
  @override
  final WorkingHour openingHour;
  @override
  final WorkingHour closingHour;
  @override
  final bool isOpen;

  @override
  String toString() {
    return 'WorkingDay(day: $day, openingHour: $openingHour, closingHour: $closingHour, isOpen: $isOpen)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WorkingDay &&
            const DeepCollectionEquality().equals(other.day, day) &&
            const DeepCollectionEquality()
                .equals(other.openingHour, openingHour) &&
            const DeepCollectionEquality()
                .equals(other.closingHour, closingHour) &&
            const DeepCollectionEquality().equals(other.isOpen, isOpen));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(day),
      const DeepCollectionEquality().hash(openingHour),
      const DeepCollectionEquality().hash(closingHour),
      const DeepCollectionEquality().hash(isOpen));

  @JsonKey(ignore: true)
  @override
  _$WorkingDayCopyWith<_WorkingDay> get copyWith =>
      __$WorkingDayCopyWithImpl<_WorkingDay>(this, _$identity);
}

abstract class _WorkingDay extends WorkingDay {
  const factory _WorkingDay(Day day,
      {required WorkingHour openingHour,
      required WorkingHour closingHour,
      required bool isOpen}) = _$_WorkingDay;
  const _WorkingDay._() : super._();

  @override
  Day get day;
  @override
  WorkingHour get openingHour;
  @override
  WorkingHour get closingHour;
  @override
  bool get isOpen;
  @override
  @JsonKey(ignore: true)
  _$WorkingDayCopyWith<_WorkingDay> get copyWith =>
      throw _privateConstructorUsedError;
}
