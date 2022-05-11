// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'time_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeekDto _$WeekDtoFromJson(Map<String, dynamic> json) {
  return _WeekDto.fromJson(json);
}

/// @nodoc
class _$WeekDtoTearOff {
  const _$WeekDtoTearOff();

  _WeekDto call(
      {required DayDto monday,
      required DayDto tuesday,
      required DayDto wednesday,
      required DayDto thursday,
      required DayDto friday,
      required DayDto saturday,
      required DayDto sunday}) {
    return _WeekDto(
      monday: monday,
      tuesday: tuesday,
      wednesday: wednesday,
      thursday: thursday,
      friday: friday,
      saturday: saturday,
      sunday: sunday,
    );
  }

  WeekDto fromJson(Map<String, Object?> json) {
    return WeekDto.fromJson(json);
  }
}

/// @nodoc
const $WeekDto = _$WeekDtoTearOff();

/// @nodoc
mixin _$WeekDto {
  DayDto get monday => throw _privateConstructorUsedError;
  DayDto get tuesday => throw _privateConstructorUsedError;
  DayDto get wednesday => throw _privateConstructorUsedError;
  DayDto get thursday => throw _privateConstructorUsedError;
  DayDto get friday => throw _privateConstructorUsedError;
  DayDto get saturday => throw _privateConstructorUsedError;
  DayDto get sunday => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeekDtoCopyWith<WeekDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeekDtoCopyWith<$Res> {
  factory $WeekDtoCopyWith(WeekDto value, $Res Function(WeekDto) then) =
      _$WeekDtoCopyWithImpl<$Res>;
  $Res call(
      {DayDto monday,
      DayDto tuesday,
      DayDto wednesday,
      DayDto thursday,
      DayDto friday,
      DayDto saturday,
      DayDto sunday});

  $DayDtoCopyWith<$Res> get monday;
  $DayDtoCopyWith<$Res> get tuesday;
  $DayDtoCopyWith<$Res> get wednesday;
  $DayDtoCopyWith<$Res> get thursday;
  $DayDtoCopyWith<$Res> get friday;
  $DayDtoCopyWith<$Res> get saturday;
  $DayDtoCopyWith<$Res> get sunday;
}

/// @nodoc
class _$WeekDtoCopyWithImpl<$Res> implements $WeekDtoCopyWith<$Res> {
  _$WeekDtoCopyWithImpl(this._value, this._then);

  final WeekDto _value;
  // ignore: unused_field
  final $Res Function(WeekDto) _then;

  @override
  $Res call({
    Object? monday = freezed,
    Object? tuesday = freezed,
    Object? wednesday = freezed,
    Object? thursday = freezed,
    Object? friday = freezed,
    Object? saturday = freezed,
    Object? sunday = freezed,
  }) {
    return _then(_value.copyWith(
      monday: monday == freezed
          ? _value.monday
          : monday // ignore: cast_nullable_to_non_nullable
              as DayDto,
      tuesday: tuesday == freezed
          ? _value.tuesday
          : tuesday // ignore: cast_nullable_to_non_nullable
              as DayDto,
      wednesday: wednesday == freezed
          ? _value.wednesday
          : wednesday // ignore: cast_nullable_to_non_nullable
              as DayDto,
      thursday: thursday == freezed
          ? _value.thursday
          : thursday // ignore: cast_nullable_to_non_nullable
              as DayDto,
      friday: friday == freezed
          ? _value.friday
          : friday // ignore: cast_nullable_to_non_nullable
              as DayDto,
      saturday: saturday == freezed
          ? _value.saturday
          : saturday // ignore: cast_nullable_to_non_nullable
              as DayDto,
      sunday: sunday == freezed
          ? _value.sunday
          : sunday // ignore: cast_nullable_to_non_nullable
              as DayDto,
    ));
  }

  @override
  $DayDtoCopyWith<$Res> get monday {
    return $DayDtoCopyWith<$Res>(_value.monday, (value) {
      return _then(_value.copyWith(monday: value));
    });
  }

  @override
  $DayDtoCopyWith<$Res> get tuesday {
    return $DayDtoCopyWith<$Res>(_value.tuesday, (value) {
      return _then(_value.copyWith(tuesday: value));
    });
  }

  @override
  $DayDtoCopyWith<$Res> get wednesday {
    return $DayDtoCopyWith<$Res>(_value.wednesday, (value) {
      return _then(_value.copyWith(wednesday: value));
    });
  }

  @override
  $DayDtoCopyWith<$Res> get thursday {
    return $DayDtoCopyWith<$Res>(_value.thursday, (value) {
      return _then(_value.copyWith(thursday: value));
    });
  }

  @override
  $DayDtoCopyWith<$Res> get friday {
    return $DayDtoCopyWith<$Res>(_value.friday, (value) {
      return _then(_value.copyWith(friday: value));
    });
  }

  @override
  $DayDtoCopyWith<$Res> get saturday {
    return $DayDtoCopyWith<$Res>(_value.saturday, (value) {
      return _then(_value.copyWith(saturday: value));
    });
  }

  @override
  $DayDtoCopyWith<$Res> get sunday {
    return $DayDtoCopyWith<$Res>(_value.sunday, (value) {
      return _then(_value.copyWith(sunday: value));
    });
  }
}

/// @nodoc
abstract class _$WeekDtoCopyWith<$Res> implements $WeekDtoCopyWith<$Res> {
  factory _$WeekDtoCopyWith(_WeekDto value, $Res Function(_WeekDto) then) =
      __$WeekDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {DayDto monday,
      DayDto tuesday,
      DayDto wednesday,
      DayDto thursday,
      DayDto friday,
      DayDto saturday,
      DayDto sunday});

  @override
  $DayDtoCopyWith<$Res> get monday;
  @override
  $DayDtoCopyWith<$Res> get tuesday;
  @override
  $DayDtoCopyWith<$Res> get wednesday;
  @override
  $DayDtoCopyWith<$Res> get thursday;
  @override
  $DayDtoCopyWith<$Res> get friday;
  @override
  $DayDtoCopyWith<$Res> get saturday;
  @override
  $DayDtoCopyWith<$Res> get sunday;
}

/// @nodoc
class __$WeekDtoCopyWithImpl<$Res> extends _$WeekDtoCopyWithImpl<$Res>
    implements _$WeekDtoCopyWith<$Res> {
  __$WeekDtoCopyWithImpl(_WeekDto _value, $Res Function(_WeekDto) _then)
      : super(_value, (v) => _then(v as _WeekDto));

  @override
  _WeekDto get _value => super._value as _WeekDto;

  @override
  $Res call({
    Object? monday = freezed,
    Object? tuesday = freezed,
    Object? wednesday = freezed,
    Object? thursday = freezed,
    Object? friday = freezed,
    Object? saturday = freezed,
    Object? sunday = freezed,
  }) {
    return _then(_WeekDto(
      monday: monday == freezed
          ? _value.monday
          : monday // ignore: cast_nullable_to_non_nullable
              as DayDto,
      tuesday: tuesday == freezed
          ? _value.tuesday
          : tuesday // ignore: cast_nullable_to_non_nullable
              as DayDto,
      wednesday: wednesday == freezed
          ? _value.wednesday
          : wednesday // ignore: cast_nullable_to_non_nullable
              as DayDto,
      thursday: thursday == freezed
          ? _value.thursday
          : thursday // ignore: cast_nullable_to_non_nullable
              as DayDto,
      friday: friday == freezed
          ? _value.friday
          : friday // ignore: cast_nullable_to_non_nullable
              as DayDto,
      saturday: saturday == freezed
          ? _value.saturday
          : saturday // ignore: cast_nullable_to_non_nullable
              as DayDto,
      sunday: sunday == freezed
          ? _value.sunday
          : sunday // ignore: cast_nullable_to_non_nullable
              as DayDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WeekDto extends _WeekDto {
  const _$_WeekDto(
      {required this.monday,
      required this.tuesday,
      required this.wednesday,
      required this.thursday,
      required this.friday,
      required this.saturday,
      required this.sunday})
      : super._();

  factory _$_WeekDto.fromJson(Map<String, dynamic> json) =>
      _$$_WeekDtoFromJson(json);

  @override
  final DayDto monday;
  @override
  final DayDto tuesday;
  @override
  final DayDto wednesday;
  @override
  final DayDto thursday;
  @override
  final DayDto friday;
  @override
  final DayDto saturday;
  @override
  final DayDto sunday;

  @override
  String toString() {
    return 'WeekDto(monday: $monday, tuesday: $tuesday, wednesday: $wednesday, thursday: $thursday, friday: $friday, saturday: $saturday, sunday: $sunday)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WeekDto &&
            const DeepCollectionEquality().equals(other.monday, monday) &&
            const DeepCollectionEquality().equals(other.tuesday, tuesday) &&
            const DeepCollectionEquality().equals(other.wednesday, wednesday) &&
            const DeepCollectionEquality().equals(other.thursday, thursday) &&
            const DeepCollectionEquality().equals(other.friday, friday) &&
            const DeepCollectionEquality().equals(other.saturday, saturday) &&
            const DeepCollectionEquality().equals(other.sunday, sunday));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(monday),
      const DeepCollectionEquality().hash(tuesday),
      const DeepCollectionEquality().hash(wednesday),
      const DeepCollectionEquality().hash(thursday),
      const DeepCollectionEquality().hash(friday),
      const DeepCollectionEquality().hash(saturday),
      const DeepCollectionEquality().hash(sunday));

  @JsonKey(ignore: true)
  @override
  _$WeekDtoCopyWith<_WeekDto> get copyWith =>
      __$WeekDtoCopyWithImpl<_WeekDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeekDtoToJson(this);
  }
}

abstract class _WeekDto extends WeekDto {
  const factory _WeekDto(
      {required DayDto monday,
      required DayDto tuesday,
      required DayDto wednesday,
      required DayDto thursday,
      required DayDto friday,
      required DayDto saturday,
      required DayDto sunday}) = _$_WeekDto;
  const _WeekDto._() : super._();

  factory _WeekDto.fromJson(Map<String, dynamic> json) = _$_WeekDto.fromJson;

  @override
  DayDto get monday;
  @override
  DayDto get tuesday;
  @override
  DayDto get wednesday;
  @override
  DayDto get thursday;
  @override
  DayDto get friday;
  @override
  DayDto get saturday;
  @override
  DayDto get sunday;
  @override
  @JsonKey(ignore: true)
  _$WeekDtoCopyWith<_WeekDto> get copyWith =>
      throw _privateConstructorUsedError;
}

DayDto _$DayDtoFromJson(Map<String, dynamic> json) {
  return _DayDto.fromJson(json);
}

/// @nodoc
class _$DayDtoTearOff {
  const _$DayDtoTearOff();

  _DayDto call(
      {required String day,
      required bool isOpen,
      required TimeIntervalDto timeInterval}) {
    return _DayDto(
      day: day,
      isOpen: isOpen,
      timeInterval: timeInterval,
    );
  }

  DayDto fromJson(Map<String, Object?> json) {
    return DayDto.fromJson(json);
  }
}

/// @nodoc
const $DayDto = _$DayDtoTearOff();

/// @nodoc
mixin _$DayDto {
  String get day => throw _privateConstructorUsedError;
  bool get isOpen => throw _privateConstructorUsedError;
  TimeIntervalDto get timeInterval => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DayDtoCopyWith<DayDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DayDtoCopyWith<$Res> {
  factory $DayDtoCopyWith(DayDto value, $Res Function(DayDto) then) =
      _$DayDtoCopyWithImpl<$Res>;
  $Res call({String day, bool isOpen, TimeIntervalDto timeInterval});

  $TimeIntervalDtoCopyWith<$Res> get timeInterval;
}

/// @nodoc
class _$DayDtoCopyWithImpl<$Res> implements $DayDtoCopyWith<$Res> {
  _$DayDtoCopyWithImpl(this._value, this._then);

  final DayDto _value;
  // ignore: unused_field
  final $Res Function(DayDto) _then;

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
              as TimeIntervalDto,
    ));
  }

  @override
  $TimeIntervalDtoCopyWith<$Res> get timeInterval {
    return $TimeIntervalDtoCopyWith<$Res>(_value.timeInterval, (value) {
      return _then(_value.copyWith(timeInterval: value));
    });
  }
}

/// @nodoc
abstract class _$DayDtoCopyWith<$Res> implements $DayDtoCopyWith<$Res> {
  factory _$DayDtoCopyWith(_DayDto value, $Res Function(_DayDto) then) =
      __$DayDtoCopyWithImpl<$Res>;
  @override
  $Res call({String day, bool isOpen, TimeIntervalDto timeInterval});

  @override
  $TimeIntervalDtoCopyWith<$Res> get timeInterval;
}

/// @nodoc
class __$DayDtoCopyWithImpl<$Res> extends _$DayDtoCopyWithImpl<$Res>
    implements _$DayDtoCopyWith<$Res> {
  __$DayDtoCopyWithImpl(_DayDto _value, $Res Function(_DayDto) _then)
      : super(_value, (v) => _then(v as _DayDto));

  @override
  _DayDto get _value => super._value as _DayDto;

  @override
  $Res call({
    Object? day = freezed,
    Object? isOpen = freezed,
    Object? timeInterval = freezed,
  }) {
    return _then(_DayDto(
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
              as TimeIntervalDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DayDto extends _DayDto {
  const _$_DayDto(
      {required this.day, required this.isOpen, required this.timeInterval})
      : super._();

  factory _$_DayDto.fromJson(Map<String, dynamic> json) =>
      _$$_DayDtoFromJson(json);

  @override
  final String day;
  @override
  final bool isOpen;
  @override
  final TimeIntervalDto timeInterval;

  @override
  String toString() {
    return 'DayDto(day: $day, isOpen: $isOpen, timeInterval: $timeInterval)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DayDto &&
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
  _$DayDtoCopyWith<_DayDto> get copyWith =>
      __$DayDtoCopyWithImpl<_DayDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DayDtoToJson(this);
  }
}

abstract class _DayDto extends DayDto {
  const factory _DayDto(
      {required String day,
      required bool isOpen,
      required TimeIntervalDto timeInterval}) = _$_DayDto;
  const _DayDto._() : super._();

  factory _DayDto.fromJson(Map<String, dynamic> json) = _$_DayDto.fromJson;

  @override
  String get day;
  @override
  bool get isOpen;
  @override
  TimeIntervalDto get timeInterval;
  @override
  @JsonKey(ignore: true)
  _$DayDtoCopyWith<_DayDto> get copyWith => throw _privateConstructorUsedError;
}

TimeIntervalDto _$TimeIntervalDtoFromJson(Map<String, dynamic> json) {
  return _TimeIntervalDto.fromJson(json);
}

/// @nodoc
class _$TimeIntervalDtoTearOff {
  const _$TimeIntervalDtoTearOff();

  _TimeIntervalDto call(
      {required int openingHour,
      required int openingMinutes,
      required int closingHour,
      required int closingMinutes}) {
    return _TimeIntervalDto(
      openingHour: openingHour,
      openingMinutes: openingMinutes,
      closingHour: closingHour,
      closingMinutes: closingMinutes,
    );
  }

  TimeIntervalDto fromJson(Map<String, Object?> json) {
    return TimeIntervalDto.fromJson(json);
  }
}

/// @nodoc
const $TimeIntervalDto = _$TimeIntervalDtoTearOff();

/// @nodoc
mixin _$TimeIntervalDto {
  int get openingHour => throw _privateConstructorUsedError;
  int get openingMinutes => throw _privateConstructorUsedError;
  int get closingHour => throw _privateConstructorUsedError;
  int get closingMinutes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TimeIntervalDtoCopyWith<TimeIntervalDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeIntervalDtoCopyWith<$Res> {
  factory $TimeIntervalDtoCopyWith(
          TimeIntervalDto value, $Res Function(TimeIntervalDto) then) =
      _$TimeIntervalDtoCopyWithImpl<$Res>;
  $Res call(
      {int openingHour,
      int openingMinutes,
      int closingHour,
      int closingMinutes});
}

/// @nodoc
class _$TimeIntervalDtoCopyWithImpl<$Res>
    implements $TimeIntervalDtoCopyWith<$Res> {
  _$TimeIntervalDtoCopyWithImpl(this._value, this._then);

  final TimeIntervalDto _value;
  // ignore: unused_field
  final $Res Function(TimeIntervalDto) _then;

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
abstract class _$TimeIntervalDtoCopyWith<$Res>
    implements $TimeIntervalDtoCopyWith<$Res> {
  factory _$TimeIntervalDtoCopyWith(
          _TimeIntervalDto value, $Res Function(_TimeIntervalDto) then) =
      __$TimeIntervalDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {int openingHour,
      int openingMinutes,
      int closingHour,
      int closingMinutes});
}

/// @nodoc
class __$TimeIntervalDtoCopyWithImpl<$Res>
    extends _$TimeIntervalDtoCopyWithImpl<$Res>
    implements _$TimeIntervalDtoCopyWith<$Res> {
  __$TimeIntervalDtoCopyWithImpl(
      _TimeIntervalDto _value, $Res Function(_TimeIntervalDto) _then)
      : super(_value, (v) => _then(v as _TimeIntervalDto));

  @override
  _TimeIntervalDto get _value => super._value as _TimeIntervalDto;

  @override
  $Res call({
    Object? openingHour = freezed,
    Object? openingMinutes = freezed,
    Object? closingHour = freezed,
    Object? closingMinutes = freezed,
  }) {
    return _then(_TimeIntervalDto(
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
@JsonSerializable()
class _$_TimeIntervalDto extends _TimeIntervalDto {
  const _$_TimeIntervalDto(
      {required this.openingHour,
      required this.openingMinutes,
      required this.closingHour,
      required this.closingMinutes})
      : super._();

  factory _$_TimeIntervalDto.fromJson(Map<String, dynamic> json) =>
      _$$_TimeIntervalDtoFromJson(json);

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
    return 'TimeIntervalDto(openingHour: $openingHour, openingMinutes: $openingMinutes, closingHour: $closingHour, closingMinutes: $closingMinutes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TimeIntervalDto &&
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
  _$TimeIntervalDtoCopyWith<_TimeIntervalDto> get copyWith =>
      __$TimeIntervalDtoCopyWithImpl<_TimeIntervalDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TimeIntervalDtoToJson(this);
  }
}

abstract class _TimeIntervalDto extends TimeIntervalDto {
  const factory _TimeIntervalDto(
      {required int openingHour,
      required int openingMinutes,
      required int closingHour,
      required int closingMinutes}) = _$_TimeIntervalDto;
  const _TimeIntervalDto._() : super._();

  factory _TimeIntervalDto.fromJson(Map<String, dynamic> json) =
      _$_TimeIntervalDto.fromJson;

  @override
  int get openingHour;
  @override
  int get openingMinutes;
  @override
  int get closingHour;
  @override
  int get closingMinutes;
  @override
  @JsonKey(ignore: true)
  _$TimeIntervalDtoCopyWith<_TimeIntervalDto> get copyWith =>
      throw _privateConstructorUsedError;
}
