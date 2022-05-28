// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'shop_time_picker_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ShopTimePickerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DayPrimitive monday) mondayChanged,
    required TResult Function(DayPrimitive tuesday) tuesdayChanged,
    required TResult Function(DayPrimitive wednesday) wednesdayChanged,
    required TResult Function(DayPrimitive thursday) thursdayChanged,
    required TResult Function(DayPrimitive friday) fridayChanged,
    required TResult Function(DayPrimitive saturday) saturdayChanged,
    required TResult Function(DayPrimitive sunday) sundayChanged,
    required TResult Function() proceeded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DayPrimitive monday)? mondayChanged,
    TResult Function(DayPrimitive tuesday)? tuesdayChanged,
    TResult Function(DayPrimitive wednesday)? wednesdayChanged,
    TResult Function(DayPrimitive thursday)? thursdayChanged,
    TResult Function(DayPrimitive friday)? fridayChanged,
    TResult Function(DayPrimitive saturday)? saturdayChanged,
    TResult Function(DayPrimitive sunday)? sundayChanged,
    TResult Function()? proceeded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DayPrimitive monday)? mondayChanged,
    TResult Function(DayPrimitive tuesday)? tuesdayChanged,
    TResult Function(DayPrimitive wednesday)? wednesdayChanged,
    TResult Function(DayPrimitive thursday)? thursdayChanged,
    TResult Function(DayPrimitive friday)? fridayChanged,
    TResult Function(DayPrimitive saturday)? saturdayChanged,
    TResult Function(DayPrimitive sunday)? sundayChanged,
    TResult Function()? proceeded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MondayChanged value) mondayChanged,
    required TResult Function(_TuesdayChanged value) tuesdayChanged,
    required TResult Function(_WednesdayChanged value) wednesdayChanged,
    required TResult Function(_ThursdayChanged value) thursdayChanged,
    required TResult Function(_FridayChanged value) fridayChanged,
    required TResult Function(_SaturdayChanged value) saturdayChanged,
    required TResult Function(_SundayChanged value) sundayChanged,
    required TResult Function(_Proceeded value) proceeded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_MondayChanged value)? mondayChanged,
    TResult Function(_TuesdayChanged value)? tuesdayChanged,
    TResult Function(_WednesdayChanged value)? wednesdayChanged,
    TResult Function(_ThursdayChanged value)? thursdayChanged,
    TResult Function(_FridayChanged value)? fridayChanged,
    TResult Function(_SaturdayChanged value)? saturdayChanged,
    TResult Function(_SundayChanged value)? sundayChanged,
    TResult Function(_Proceeded value)? proceeded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MondayChanged value)? mondayChanged,
    TResult Function(_TuesdayChanged value)? tuesdayChanged,
    TResult Function(_WednesdayChanged value)? wednesdayChanged,
    TResult Function(_ThursdayChanged value)? thursdayChanged,
    TResult Function(_FridayChanged value)? fridayChanged,
    TResult Function(_SaturdayChanged value)? saturdayChanged,
    TResult Function(_SundayChanged value)? sundayChanged,
    TResult Function(_Proceeded value)? proceeded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopTimePickerEventCopyWith<$Res> {
  factory $ShopTimePickerEventCopyWith(
          ShopTimePickerEvent value, $Res Function(ShopTimePickerEvent) then) =
      _$ShopTimePickerEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ShopTimePickerEventCopyWithImpl<$Res>
    implements $ShopTimePickerEventCopyWith<$Res> {
  _$ShopTimePickerEventCopyWithImpl(this._value, this._then);

  final ShopTimePickerEvent _value;
  // ignore: unused_field
  final $Res Function(ShopTimePickerEvent) _then;
}

/// @nodoc
abstract class _$$_MondayChangedCopyWith<$Res> {
  factory _$$_MondayChangedCopyWith(
          _$_MondayChanged value, $Res Function(_$_MondayChanged) then) =
      __$$_MondayChangedCopyWithImpl<$Res>;
  $Res call({DayPrimitive monday});

  $DayPrimitiveCopyWith<$Res> get monday;
}

/// @nodoc
class __$$_MondayChangedCopyWithImpl<$Res>
    extends _$ShopTimePickerEventCopyWithImpl<$Res>
    implements _$$_MondayChangedCopyWith<$Res> {
  __$$_MondayChangedCopyWithImpl(
      _$_MondayChanged _value, $Res Function(_$_MondayChanged) _then)
      : super(_value, (v) => _then(v as _$_MondayChanged));

  @override
  _$_MondayChanged get _value => super._value as _$_MondayChanged;

  @override
  $Res call({
    Object? monday = freezed,
  }) {
    return _then(_$_MondayChanged(
      monday == freezed
          ? _value.monday
          : monday // ignore: cast_nullable_to_non_nullable
              as DayPrimitive,
    ));
  }

  @override
  $DayPrimitiveCopyWith<$Res> get monday {
    return $DayPrimitiveCopyWith<$Res>(_value.monday, (value) {
      return _then(_value.copyWith(monday: value));
    });
  }
}

/// @nodoc

class _$_MondayChanged implements _MondayChanged {
  const _$_MondayChanged(this.monday);

  @override
  final DayPrimitive monday;

  @override
  String toString() {
    return 'ShopTimePickerEvent.mondayChanged(monday: $monday)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MondayChanged &&
            const DeepCollectionEquality().equals(other.monday, monday));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(monday));

  @JsonKey(ignore: true)
  @override
  _$$_MondayChangedCopyWith<_$_MondayChanged> get copyWith =>
      __$$_MondayChangedCopyWithImpl<_$_MondayChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DayPrimitive monday) mondayChanged,
    required TResult Function(DayPrimitive tuesday) tuesdayChanged,
    required TResult Function(DayPrimitive wednesday) wednesdayChanged,
    required TResult Function(DayPrimitive thursday) thursdayChanged,
    required TResult Function(DayPrimitive friday) fridayChanged,
    required TResult Function(DayPrimitive saturday) saturdayChanged,
    required TResult Function(DayPrimitive sunday) sundayChanged,
    required TResult Function() proceeded,
  }) {
    return mondayChanged(monday);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DayPrimitive monday)? mondayChanged,
    TResult Function(DayPrimitive tuesday)? tuesdayChanged,
    TResult Function(DayPrimitive wednesday)? wednesdayChanged,
    TResult Function(DayPrimitive thursday)? thursdayChanged,
    TResult Function(DayPrimitive friday)? fridayChanged,
    TResult Function(DayPrimitive saturday)? saturdayChanged,
    TResult Function(DayPrimitive sunday)? sundayChanged,
    TResult Function()? proceeded,
  }) {
    return mondayChanged?.call(monday);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DayPrimitive monday)? mondayChanged,
    TResult Function(DayPrimitive tuesday)? tuesdayChanged,
    TResult Function(DayPrimitive wednesday)? wednesdayChanged,
    TResult Function(DayPrimitive thursday)? thursdayChanged,
    TResult Function(DayPrimitive friday)? fridayChanged,
    TResult Function(DayPrimitive saturday)? saturdayChanged,
    TResult Function(DayPrimitive sunday)? sundayChanged,
    TResult Function()? proceeded,
    required TResult orElse(),
  }) {
    if (mondayChanged != null) {
      return mondayChanged(monday);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MondayChanged value) mondayChanged,
    required TResult Function(_TuesdayChanged value) tuesdayChanged,
    required TResult Function(_WednesdayChanged value) wednesdayChanged,
    required TResult Function(_ThursdayChanged value) thursdayChanged,
    required TResult Function(_FridayChanged value) fridayChanged,
    required TResult Function(_SaturdayChanged value) saturdayChanged,
    required TResult Function(_SundayChanged value) sundayChanged,
    required TResult Function(_Proceeded value) proceeded,
  }) {
    return mondayChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_MondayChanged value)? mondayChanged,
    TResult Function(_TuesdayChanged value)? tuesdayChanged,
    TResult Function(_WednesdayChanged value)? wednesdayChanged,
    TResult Function(_ThursdayChanged value)? thursdayChanged,
    TResult Function(_FridayChanged value)? fridayChanged,
    TResult Function(_SaturdayChanged value)? saturdayChanged,
    TResult Function(_SundayChanged value)? sundayChanged,
    TResult Function(_Proceeded value)? proceeded,
  }) {
    return mondayChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MondayChanged value)? mondayChanged,
    TResult Function(_TuesdayChanged value)? tuesdayChanged,
    TResult Function(_WednesdayChanged value)? wednesdayChanged,
    TResult Function(_ThursdayChanged value)? thursdayChanged,
    TResult Function(_FridayChanged value)? fridayChanged,
    TResult Function(_SaturdayChanged value)? saturdayChanged,
    TResult Function(_SundayChanged value)? sundayChanged,
    TResult Function(_Proceeded value)? proceeded,
    required TResult orElse(),
  }) {
    if (mondayChanged != null) {
      return mondayChanged(this);
    }
    return orElse();
  }
}

abstract class _MondayChanged implements ShopTimePickerEvent {
  const factory _MondayChanged(final DayPrimitive monday) = _$_MondayChanged;

  DayPrimitive get monday => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_MondayChangedCopyWith<_$_MondayChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_TuesdayChangedCopyWith<$Res> {
  factory _$$_TuesdayChangedCopyWith(
          _$_TuesdayChanged value, $Res Function(_$_TuesdayChanged) then) =
      __$$_TuesdayChangedCopyWithImpl<$Res>;
  $Res call({DayPrimitive tuesday});

  $DayPrimitiveCopyWith<$Res> get tuesday;
}

/// @nodoc
class __$$_TuesdayChangedCopyWithImpl<$Res>
    extends _$ShopTimePickerEventCopyWithImpl<$Res>
    implements _$$_TuesdayChangedCopyWith<$Res> {
  __$$_TuesdayChangedCopyWithImpl(
      _$_TuesdayChanged _value, $Res Function(_$_TuesdayChanged) _then)
      : super(_value, (v) => _then(v as _$_TuesdayChanged));

  @override
  _$_TuesdayChanged get _value => super._value as _$_TuesdayChanged;

  @override
  $Res call({
    Object? tuesday = freezed,
  }) {
    return _then(_$_TuesdayChanged(
      tuesday == freezed
          ? _value.tuesday
          : tuesday // ignore: cast_nullable_to_non_nullable
              as DayPrimitive,
    ));
  }

  @override
  $DayPrimitiveCopyWith<$Res> get tuesday {
    return $DayPrimitiveCopyWith<$Res>(_value.tuesday, (value) {
      return _then(_value.copyWith(tuesday: value));
    });
  }
}

/// @nodoc

class _$_TuesdayChanged implements _TuesdayChanged {
  const _$_TuesdayChanged(this.tuesday);

  @override
  final DayPrimitive tuesday;

  @override
  String toString() {
    return 'ShopTimePickerEvent.tuesdayChanged(tuesday: $tuesday)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TuesdayChanged &&
            const DeepCollectionEquality().equals(other.tuesday, tuesday));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(tuesday));

  @JsonKey(ignore: true)
  @override
  _$$_TuesdayChangedCopyWith<_$_TuesdayChanged> get copyWith =>
      __$$_TuesdayChangedCopyWithImpl<_$_TuesdayChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DayPrimitive monday) mondayChanged,
    required TResult Function(DayPrimitive tuesday) tuesdayChanged,
    required TResult Function(DayPrimitive wednesday) wednesdayChanged,
    required TResult Function(DayPrimitive thursday) thursdayChanged,
    required TResult Function(DayPrimitive friday) fridayChanged,
    required TResult Function(DayPrimitive saturday) saturdayChanged,
    required TResult Function(DayPrimitive sunday) sundayChanged,
    required TResult Function() proceeded,
  }) {
    return tuesdayChanged(tuesday);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DayPrimitive monday)? mondayChanged,
    TResult Function(DayPrimitive tuesday)? tuesdayChanged,
    TResult Function(DayPrimitive wednesday)? wednesdayChanged,
    TResult Function(DayPrimitive thursday)? thursdayChanged,
    TResult Function(DayPrimitive friday)? fridayChanged,
    TResult Function(DayPrimitive saturday)? saturdayChanged,
    TResult Function(DayPrimitive sunday)? sundayChanged,
    TResult Function()? proceeded,
  }) {
    return tuesdayChanged?.call(tuesday);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DayPrimitive monday)? mondayChanged,
    TResult Function(DayPrimitive tuesday)? tuesdayChanged,
    TResult Function(DayPrimitive wednesday)? wednesdayChanged,
    TResult Function(DayPrimitive thursday)? thursdayChanged,
    TResult Function(DayPrimitive friday)? fridayChanged,
    TResult Function(DayPrimitive saturday)? saturdayChanged,
    TResult Function(DayPrimitive sunday)? sundayChanged,
    TResult Function()? proceeded,
    required TResult orElse(),
  }) {
    if (tuesdayChanged != null) {
      return tuesdayChanged(tuesday);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MondayChanged value) mondayChanged,
    required TResult Function(_TuesdayChanged value) tuesdayChanged,
    required TResult Function(_WednesdayChanged value) wednesdayChanged,
    required TResult Function(_ThursdayChanged value) thursdayChanged,
    required TResult Function(_FridayChanged value) fridayChanged,
    required TResult Function(_SaturdayChanged value) saturdayChanged,
    required TResult Function(_SundayChanged value) sundayChanged,
    required TResult Function(_Proceeded value) proceeded,
  }) {
    return tuesdayChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_MondayChanged value)? mondayChanged,
    TResult Function(_TuesdayChanged value)? tuesdayChanged,
    TResult Function(_WednesdayChanged value)? wednesdayChanged,
    TResult Function(_ThursdayChanged value)? thursdayChanged,
    TResult Function(_FridayChanged value)? fridayChanged,
    TResult Function(_SaturdayChanged value)? saturdayChanged,
    TResult Function(_SundayChanged value)? sundayChanged,
    TResult Function(_Proceeded value)? proceeded,
  }) {
    return tuesdayChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MondayChanged value)? mondayChanged,
    TResult Function(_TuesdayChanged value)? tuesdayChanged,
    TResult Function(_WednesdayChanged value)? wednesdayChanged,
    TResult Function(_ThursdayChanged value)? thursdayChanged,
    TResult Function(_FridayChanged value)? fridayChanged,
    TResult Function(_SaturdayChanged value)? saturdayChanged,
    TResult Function(_SundayChanged value)? sundayChanged,
    TResult Function(_Proceeded value)? proceeded,
    required TResult orElse(),
  }) {
    if (tuesdayChanged != null) {
      return tuesdayChanged(this);
    }
    return orElse();
  }
}

abstract class _TuesdayChanged implements ShopTimePickerEvent {
  const factory _TuesdayChanged(final DayPrimitive tuesday) = _$_TuesdayChanged;

  DayPrimitive get tuesday => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_TuesdayChangedCopyWith<_$_TuesdayChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_WednesdayChangedCopyWith<$Res> {
  factory _$$_WednesdayChangedCopyWith(
          _$_WednesdayChanged value, $Res Function(_$_WednesdayChanged) then) =
      __$$_WednesdayChangedCopyWithImpl<$Res>;
  $Res call({DayPrimitive wednesday});

  $DayPrimitiveCopyWith<$Res> get wednesday;
}

/// @nodoc
class __$$_WednesdayChangedCopyWithImpl<$Res>
    extends _$ShopTimePickerEventCopyWithImpl<$Res>
    implements _$$_WednesdayChangedCopyWith<$Res> {
  __$$_WednesdayChangedCopyWithImpl(
      _$_WednesdayChanged _value, $Res Function(_$_WednesdayChanged) _then)
      : super(_value, (v) => _then(v as _$_WednesdayChanged));

  @override
  _$_WednesdayChanged get _value => super._value as _$_WednesdayChanged;

  @override
  $Res call({
    Object? wednesday = freezed,
  }) {
    return _then(_$_WednesdayChanged(
      wednesday == freezed
          ? _value.wednesday
          : wednesday // ignore: cast_nullable_to_non_nullable
              as DayPrimitive,
    ));
  }

  @override
  $DayPrimitiveCopyWith<$Res> get wednesday {
    return $DayPrimitiveCopyWith<$Res>(_value.wednesday, (value) {
      return _then(_value.copyWith(wednesday: value));
    });
  }
}

/// @nodoc

class _$_WednesdayChanged implements _WednesdayChanged {
  const _$_WednesdayChanged(this.wednesday);

  @override
  final DayPrimitive wednesday;

  @override
  String toString() {
    return 'ShopTimePickerEvent.wednesdayChanged(wednesday: $wednesday)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WednesdayChanged &&
            const DeepCollectionEquality().equals(other.wednesday, wednesday));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(wednesday));

  @JsonKey(ignore: true)
  @override
  _$$_WednesdayChangedCopyWith<_$_WednesdayChanged> get copyWith =>
      __$$_WednesdayChangedCopyWithImpl<_$_WednesdayChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DayPrimitive monday) mondayChanged,
    required TResult Function(DayPrimitive tuesday) tuesdayChanged,
    required TResult Function(DayPrimitive wednesday) wednesdayChanged,
    required TResult Function(DayPrimitive thursday) thursdayChanged,
    required TResult Function(DayPrimitive friday) fridayChanged,
    required TResult Function(DayPrimitive saturday) saturdayChanged,
    required TResult Function(DayPrimitive sunday) sundayChanged,
    required TResult Function() proceeded,
  }) {
    return wednesdayChanged(wednesday);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DayPrimitive monday)? mondayChanged,
    TResult Function(DayPrimitive tuesday)? tuesdayChanged,
    TResult Function(DayPrimitive wednesday)? wednesdayChanged,
    TResult Function(DayPrimitive thursday)? thursdayChanged,
    TResult Function(DayPrimitive friday)? fridayChanged,
    TResult Function(DayPrimitive saturday)? saturdayChanged,
    TResult Function(DayPrimitive sunday)? sundayChanged,
    TResult Function()? proceeded,
  }) {
    return wednesdayChanged?.call(wednesday);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DayPrimitive monday)? mondayChanged,
    TResult Function(DayPrimitive tuesday)? tuesdayChanged,
    TResult Function(DayPrimitive wednesday)? wednesdayChanged,
    TResult Function(DayPrimitive thursday)? thursdayChanged,
    TResult Function(DayPrimitive friday)? fridayChanged,
    TResult Function(DayPrimitive saturday)? saturdayChanged,
    TResult Function(DayPrimitive sunday)? sundayChanged,
    TResult Function()? proceeded,
    required TResult orElse(),
  }) {
    if (wednesdayChanged != null) {
      return wednesdayChanged(wednesday);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MondayChanged value) mondayChanged,
    required TResult Function(_TuesdayChanged value) tuesdayChanged,
    required TResult Function(_WednesdayChanged value) wednesdayChanged,
    required TResult Function(_ThursdayChanged value) thursdayChanged,
    required TResult Function(_FridayChanged value) fridayChanged,
    required TResult Function(_SaturdayChanged value) saturdayChanged,
    required TResult Function(_SundayChanged value) sundayChanged,
    required TResult Function(_Proceeded value) proceeded,
  }) {
    return wednesdayChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_MondayChanged value)? mondayChanged,
    TResult Function(_TuesdayChanged value)? tuesdayChanged,
    TResult Function(_WednesdayChanged value)? wednesdayChanged,
    TResult Function(_ThursdayChanged value)? thursdayChanged,
    TResult Function(_FridayChanged value)? fridayChanged,
    TResult Function(_SaturdayChanged value)? saturdayChanged,
    TResult Function(_SundayChanged value)? sundayChanged,
    TResult Function(_Proceeded value)? proceeded,
  }) {
    return wednesdayChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MondayChanged value)? mondayChanged,
    TResult Function(_TuesdayChanged value)? tuesdayChanged,
    TResult Function(_WednesdayChanged value)? wednesdayChanged,
    TResult Function(_ThursdayChanged value)? thursdayChanged,
    TResult Function(_FridayChanged value)? fridayChanged,
    TResult Function(_SaturdayChanged value)? saturdayChanged,
    TResult Function(_SundayChanged value)? sundayChanged,
    TResult Function(_Proceeded value)? proceeded,
    required TResult orElse(),
  }) {
    if (wednesdayChanged != null) {
      return wednesdayChanged(this);
    }
    return orElse();
  }
}

abstract class _WednesdayChanged implements ShopTimePickerEvent {
  const factory _WednesdayChanged(final DayPrimitive wednesday) =
      _$_WednesdayChanged;

  DayPrimitive get wednesday => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_WednesdayChangedCopyWith<_$_WednesdayChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ThursdayChangedCopyWith<$Res> {
  factory _$$_ThursdayChangedCopyWith(
          _$_ThursdayChanged value, $Res Function(_$_ThursdayChanged) then) =
      __$$_ThursdayChangedCopyWithImpl<$Res>;
  $Res call({DayPrimitive thursday});

  $DayPrimitiveCopyWith<$Res> get thursday;
}

/// @nodoc
class __$$_ThursdayChangedCopyWithImpl<$Res>
    extends _$ShopTimePickerEventCopyWithImpl<$Res>
    implements _$$_ThursdayChangedCopyWith<$Res> {
  __$$_ThursdayChangedCopyWithImpl(
      _$_ThursdayChanged _value, $Res Function(_$_ThursdayChanged) _then)
      : super(_value, (v) => _then(v as _$_ThursdayChanged));

  @override
  _$_ThursdayChanged get _value => super._value as _$_ThursdayChanged;

  @override
  $Res call({
    Object? thursday = freezed,
  }) {
    return _then(_$_ThursdayChanged(
      thursday == freezed
          ? _value.thursday
          : thursday // ignore: cast_nullable_to_non_nullable
              as DayPrimitive,
    ));
  }

  @override
  $DayPrimitiveCopyWith<$Res> get thursday {
    return $DayPrimitiveCopyWith<$Res>(_value.thursday, (value) {
      return _then(_value.copyWith(thursday: value));
    });
  }
}

/// @nodoc

class _$_ThursdayChanged implements _ThursdayChanged {
  const _$_ThursdayChanged(this.thursday);

  @override
  final DayPrimitive thursday;

  @override
  String toString() {
    return 'ShopTimePickerEvent.thursdayChanged(thursday: $thursday)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ThursdayChanged &&
            const DeepCollectionEquality().equals(other.thursday, thursday));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(thursday));

  @JsonKey(ignore: true)
  @override
  _$$_ThursdayChangedCopyWith<_$_ThursdayChanged> get copyWith =>
      __$$_ThursdayChangedCopyWithImpl<_$_ThursdayChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DayPrimitive monday) mondayChanged,
    required TResult Function(DayPrimitive tuesday) tuesdayChanged,
    required TResult Function(DayPrimitive wednesday) wednesdayChanged,
    required TResult Function(DayPrimitive thursday) thursdayChanged,
    required TResult Function(DayPrimitive friday) fridayChanged,
    required TResult Function(DayPrimitive saturday) saturdayChanged,
    required TResult Function(DayPrimitive sunday) sundayChanged,
    required TResult Function() proceeded,
  }) {
    return thursdayChanged(thursday);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DayPrimitive monday)? mondayChanged,
    TResult Function(DayPrimitive tuesday)? tuesdayChanged,
    TResult Function(DayPrimitive wednesday)? wednesdayChanged,
    TResult Function(DayPrimitive thursday)? thursdayChanged,
    TResult Function(DayPrimitive friday)? fridayChanged,
    TResult Function(DayPrimitive saturday)? saturdayChanged,
    TResult Function(DayPrimitive sunday)? sundayChanged,
    TResult Function()? proceeded,
  }) {
    return thursdayChanged?.call(thursday);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DayPrimitive monday)? mondayChanged,
    TResult Function(DayPrimitive tuesday)? tuesdayChanged,
    TResult Function(DayPrimitive wednesday)? wednesdayChanged,
    TResult Function(DayPrimitive thursday)? thursdayChanged,
    TResult Function(DayPrimitive friday)? fridayChanged,
    TResult Function(DayPrimitive saturday)? saturdayChanged,
    TResult Function(DayPrimitive sunday)? sundayChanged,
    TResult Function()? proceeded,
    required TResult orElse(),
  }) {
    if (thursdayChanged != null) {
      return thursdayChanged(thursday);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MondayChanged value) mondayChanged,
    required TResult Function(_TuesdayChanged value) tuesdayChanged,
    required TResult Function(_WednesdayChanged value) wednesdayChanged,
    required TResult Function(_ThursdayChanged value) thursdayChanged,
    required TResult Function(_FridayChanged value) fridayChanged,
    required TResult Function(_SaturdayChanged value) saturdayChanged,
    required TResult Function(_SundayChanged value) sundayChanged,
    required TResult Function(_Proceeded value) proceeded,
  }) {
    return thursdayChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_MondayChanged value)? mondayChanged,
    TResult Function(_TuesdayChanged value)? tuesdayChanged,
    TResult Function(_WednesdayChanged value)? wednesdayChanged,
    TResult Function(_ThursdayChanged value)? thursdayChanged,
    TResult Function(_FridayChanged value)? fridayChanged,
    TResult Function(_SaturdayChanged value)? saturdayChanged,
    TResult Function(_SundayChanged value)? sundayChanged,
    TResult Function(_Proceeded value)? proceeded,
  }) {
    return thursdayChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MondayChanged value)? mondayChanged,
    TResult Function(_TuesdayChanged value)? tuesdayChanged,
    TResult Function(_WednesdayChanged value)? wednesdayChanged,
    TResult Function(_ThursdayChanged value)? thursdayChanged,
    TResult Function(_FridayChanged value)? fridayChanged,
    TResult Function(_SaturdayChanged value)? saturdayChanged,
    TResult Function(_SundayChanged value)? sundayChanged,
    TResult Function(_Proceeded value)? proceeded,
    required TResult orElse(),
  }) {
    if (thursdayChanged != null) {
      return thursdayChanged(this);
    }
    return orElse();
  }
}

abstract class _ThursdayChanged implements ShopTimePickerEvent {
  const factory _ThursdayChanged(final DayPrimitive thursday) =
      _$_ThursdayChanged;

  DayPrimitive get thursday => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_ThursdayChangedCopyWith<_$_ThursdayChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FridayChangedCopyWith<$Res> {
  factory _$$_FridayChangedCopyWith(
          _$_FridayChanged value, $Res Function(_$_FridayChanged) then) =
      __$$_FridayChangedCopyWithImpl<$Res>;
  $Res call({DayPrimitive friday});

  $DayPrimitiveCopyWith<$Res> get friday;
}

/// @nodoc
class __$$_FridayChangedCopyWithImpl<$Res>
    extends _$ShopTimePickerEventCopyWithImpl<$Res>
    implements _$$_FridayChangedCopyWith<$Res> {
  __$$_FridayChangedCopyWithImpl(
      _$_FridayChanged _value, $Res Function(_$_FridayChanged) _then)
      : super(_value, (v) => _then(v as _$_FridayChanged));

  @override
  _$_FridayChanged get _value => super._value as _$_FridayChanged;

  @override
  $Res call({
    Object? friday = freezed,
  }) {
    return _then(_$_FridayChanged(
      friday == freezed
          ? _value.friday
          : friday // ignore: cast_nullable_to_non_nullable
              as DayPrimitive,
    ));
  }

  @override
  $DayPrimitiveCopyWith<$Res> get friday {
    return $DayPrimitiveCopyWith<$Res>(_value.friday, (value) {
      return _then(_value.copyWith(friday: value));
    });
  }
}

/// @nodoc

class _$_FridayChanged implements _FridayChanged {
  const _$_FridayChanged(this.friday);

  @override
  final DayPrimitive friday;

  @override
  String toString() {
    return 'ShopTimePickerEvent.fridayChanged(friday: $friday)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FridayChanged &&
            const DeepCollectionEquality().equals(other.friday, friday));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(friday));

  @JsonKey(ignore: true)
  @override
  _$$_FridayChangedCopyWith<_$_FridayChanged> get copyWith =>
      __$$_FridayChangedCopyWithImpl<_$_FridayChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DayPrimitive monday) mondayChanged,
    required TResult Function(DayPrimitive tuesday) tuesdayChanged,
    required TResult Function(DayPrimitive wednesday) wednesdayChanged,
    required TResult Function(DayPrimitive thursday) thursdayChanged,
    required TResult Function(DayPrimitive friday) fridayChanged,
    required TResult Function(DayPrimitive saturday) saturdayChanged,
    required TResult Function(DayPrimitive sunday) sundayChanged,
    required TResult Function() proceeded,
  }) {
    return fridayChanged(friday);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DayPrimitive monday)? mondayChanged,
    TResult Function(DayPrimitive tuesday)? tuesdayChanged,
    TResult Function(DayPrimitive wednesday)? wednesdayChanged,
    TResult Function(DayPrimitive thursday)? thursdayChanged,
    TResult Function(DayPrimitive friday)? fridayChanged,
    TResult Function(DayPrimitive saturday)? saturdayChanged,
    TResult Function(DayPrimitive sunday)? sundayChanged,
    TResult Function()? proceeded,
  }) {
    return fridayChanged?.call(friday);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DayPrimitive monday)? mondayChanged,
    TResult Function(DayPrimitive tuesday)? tuesdayChanged,
    TResult Function(DayPrimitive wednesday)? wednesdayChanged,
    TResult Function(DayPrimitive thursday)? thursdayChanged,
    TResult Function(DayPrimitive friday)? fridayChanged,
    TResult Function(DayPrimitive saturday)? saturdayChanged,
    TResult Function(DayPrimitive sunday)? sundayChanged,
    TResult Function()? proceeded,
    required TResult orElse(),
  }) {
    if (fridayChanged != null) {
      return fridayChanged(friday);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MondayChanged value) mondayChanged,
    required TResult Function(_TuesdayChanged value) tuesdayChanged,
    required TResult Function(_WednesdayChanged value) wednesdayChanged,
    required TResult Function(_ThursdayChanged value) thursdayChanged,
    required TResult Function(_FridayChanged value) fridayChanged,
    required TResult Function(_SaturdayChanged value) saturdayChanged,
    required TResult Function(_SundayChanged value) sundayChanged,
    required TResult Function(_Proceeded value) proceeded,
  }) {
    return fridayChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_MondayChanged value)? mondayChanged,
    TResult Function(_TuesdayChanged value)? tuesdayChanged,
    TResult Function(_WednesdayChanged value)? wednesdayChanged,
    TResult Function(_ThursdayChanged value)? thursdayChanged,
    TResult Function(_FridayChanged value)? fridayChanged,
    TResult Function(_SaturdayChanged value)? saturdayChanged,
    TResult Function(_SundayChanged value)? sundayChanged,
    TResult Function(_Proceeded value)? proceeded,
  }) {
    return fridayChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MondayChanged value)? mondayChanged,
    TResult Function(_TuesdayChanged value)? tuesdayChanged,
    TResult Function(_WednesdayChanged value)? wednesdayChanged,
    TResult Function(_ThursdayChanged value)? thursdayChanged,
    TResult Function(_FridayChanged value)? fridayChanged,
    TResult Function(_SaturdayChanged value)? saturdayChanged,
    TResult Function(_SundayChanged value)? sundayChanged,
    TResult Function(_Proceeded value)? proceeded,
    required TResult orElse(),
  }) {
    if (fridayChanged != null) {
      return fridayChanged(this);
    }
    return orElse();
  }
}

abstract class _FridayChanged implements ShopTimePickerEvent {
  const factory _FridayChanged(final DayPrimitive friday) = _$_FridayChanged;

  DayPrimitive get friday => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_FridayChangedCopyWith<_$_FridayChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SaturdayChangedCopyWith<$Res> {
  factory _$$_SaturdayChangedCopyWith(
          _$_SaturdayChanged value, $Res Function(_$_SaturdayChanged) then) =
      __$$_SaturdayChangedCopyWithImpl<$Res>;
  $Res call({DayPrimitive saturday});

  $DayPrimitiveCopyWith<$Res> get saturday;
}

/// @nodoc
class __$$_SaturdayChangedCopyWithImpl<$Res>
    extends _$ShopTimePickerEventCopyWithImpl<$Res>
    implements _$$_SaturdayChangedCopyWith<$Res> {
  __$$_SaturdayChangedCopyWithImpl(
      _$_SaturdayChanged _value, $Res Function(_$_SaturdayChanged) _then)
      : super(_value, (v) => _then(v as _$_SaturdayChanged));

  @override
  _$_SaturdayChanged get _value => super._value as _$_SaturdayChanged;

  @override
  $Res call({
    Object? saturday = freezed,
  }) {
    return _then(_$_SaturdayChanged(
      saturday == freezed
          ? _value.saturday
          : saturday // ignore: cast_nullable_to_non_nullable
              as DayPrimitive,
    ));
  }

  @override
  $DayPrimitiveCopyWith<$Res> get saturday {
    return $DayPrimitiveCopyWith<$Res>(_value.saturday, (value) {
      return _then(_value.copyWith(saturday: value));
    });
  }
}

/// @nodoc

class _$_SaturdayChanged implements _SaturdayChanged {
  const _$_SaturdayChanged(this.saturday);

  @override
  final DayPrimitive saturday;

  @override
  String toString() {
    return 'ShopTimePickerEvent.saturdayChanged(saturday: $saturday)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SaturdayChanged &&
            const DeepCollectionEquality().equals(other.saturday, saturday));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(saturday));

  @JsonKey(ignore: true)
  @override
  _$$_SaturdayChangedCopyWith<_$_SaturdayChanged> get copyWith =>
      __$$_SaturdayChangedCopyWithImpl<_$_SaturdayChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DayPrimitive monday) mondayChanged,
    required TResult Function(DayPrimitive tuesday) tuesdayChanged,
    required TResult Function(DayPrimitive wednesday) wednesdayChanged,
    required TResult Function(DayPrimitive thursday) thursdayChanged,
    required TResult Function(DayPrimitive friday) fridayChanged,
    required TResult Function(DayPrimitive saturday) saturdayChanged,
    required TResult Function(DayPrimitive sunday) sundayChanged,
    required TResult Function() proceeded,
  }) {
    return saturdayChanged(saturday);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DayPrimitive monday)? mondayChanged,
    TResult Function(DayPrimitive tuesday)? tuesdayChanged,
    TResult Function(DayPrimitive wednesday)? wednesdayChanged,
    TResult Function(DayPrimitive thursday)? thursdayChanged,
    TResult Function(DayPrimitive friday)? fridayChanged,
    TResult Function(DayPrimitive saturday)? saturdayChanged,
    TResult Function(DayPrimitive sunday)? sundayChanged,
    TResult Function()? proceeded,
  }) {
    return saturdayChanged?.call(saturday);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DayPrimitive monday)? mondayChanged,
    TResult Function(DayPrimitive tuesday)? tuesdayChanged,
    TResult Function(DayPrimitive wednesday)? wednesdayChanged,
    TResult Function(DayPrimitive thursday)? thursdayChanged,
    TResult Function(DayPrimitive friday)? fridayChanged,
    TResult Function(DayPrimitive saturday)? saturdayChanged,
    TResult Function(DayPrimitive sunday)? sundayChanged,
    TResult Function()? proceeded,
    required TResult orElse(),
  }) {
    if (saturdayChanged != null) {
      return saturdayChanged(saturday);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MondayChanged value) mondayChanged,
    required TResult Function(_TuesdayChanged value) tuesdayChanged,
    required TResult Function(_WednesdayChanged value) wednesdayChanged,
    required TResult Function(_ThursdayChanged value) thursdayChanged,
    required TResult Function(_FridayChanged value) fridayChanged,
    required TResult Function(_SaturdayChanged value) saturdayChanged,
    required TResult Function(_SundayChanged value) sundayChanged,
    required TResult Function(_Proceeded value) proceeded,
  }) {
    return saturdayChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_MondayChanged value)? mondayChanged,
    TResult Function(_TuesdayChanged value)? tuesdayChanged,
    TResult Function(_WednesdayChanged value)? wednesdayChanged,
    TResult Function(_ThursdayChanged value)? thursdayChanged,
    TResult Function(_FridayChanged value)? fridayChanged,
    TResult Function(_SaturdayChanged value)? saturdayChanged,
    TResult Function(_SundayChanged value)? sundayChanged,
    TResult Function(_Proceeded value)? proceeded,
  }) {
    return saturdayChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MondayChanged value)? mondayChanged,
    TResult Function(_TuesdayChanged value)? tuesdayChanged,
    TResult Function(_WednesdayChanged value)? wednesdayChanged,
    TResult Function(_ThursdayChanged value)? thursdayChanged,
    TResult Function(_FridayChanged value)? fridayChanged,
    TResult Function(_SaturdayChanged value)? saturdayChanged,
    TResult Function(_SundayChanged value)? sundayChanged,
    TResult Function(_Proceeded value)? proceeded,
    required TResult orElse(),
  }) {
    if (saturdayChanged != null) {
      return saturdayChanged(this);
    }
    return orElse();
  }
}

abstract class _SaturdayChanged implements ShopTimePickerEvent {
  const factory _SaturdayChanged(final DayPrimitive saturday) =
      _$_SaturdayChanged;

  DayPrimitive get saturday => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_SaturdayChangedCopyWith<_$_SaturdayChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SundayChangedCopyWith<$Res> {
  factory _$$_SundayChangedCopyWith(
          _$_SundayChanged value, $Res Function(_$_SundayChanged) then) =
      __$$_SundayChangedCopyWithImpl<$Res>;
  $Res call({DayPrimitive sunday});

  $DayPrimitiveCopyWith<$Res> get sunday;
}

/// @nodoc
class __$$_SundayChangedCopyWithImpl<$Res>
    extends _$ShopTimePickerEventCopyWithImpl<$Res>
    implements _$$_SundayChangedCopyWith<$Res> {
  __$$_SundayChangedCopyWithImpl(
      _$_SundayChanged _value, $Res Function(_$_SundayChanged) _then)
      : super(_value, (v) => _then(v as _$_SundayChanged));

  @override
  _$_SundayChanged get _value => super._value as _$_SundayChanged;

  @override
  $Res call({
    Object? sunday = freezed,
  }) {
    return _then(_$_SundayChanged(
      sunday == freezed
          ? _value.sunday
          : sunday // ignore: cast_nullable_to_non_nullable
              as DayPrimitive,
    ));
  }

  @override
  $DayPrimitiveCopyWith<$Res> get sunday {
    return $DayPrimitiveCopyWith<$Res>(_value.sunday, (value) {
      return _then(_value.copyWith(sunday: value));
    });
  }
}

/// @nodoc

class _$_SundayChanged implements _SundayChanged {
  const _$_SundayChanged(this.sunday);

  @override
  final DayPrimitive sunday;

  @override
  String toString() {
    return 'ShopTimePickerEvent.sundayChanged(sunday: $sunday)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SundayChanged &&
            const DeepCollectionEquality().equals(other.sunday, sunday));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(sunday));

  @JsonKey(ignore: true)
  @override
  _$$_SundayChangedCopyWith<_$_SundayChanged> get copyWith =>
      __$$_SundayChangedCopyWithImpl<_$_SundayChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DayPrimitive monday) mondayChanged,
    required TResult Function(DayPrimitive tuesday) tuesdayChanged,
    required TResult Function(DayPrimitive wednesday) wednesdayChanged,
    required TResult Function(DayPrimitive thursday) thursdayChanged,
    required TResult Function(DayPrimitive friday) fridayChanged,
    required TResult Function(DayPrimitive saturday) saturdayChanged,
    required TResult Function(DayPrimitive sunday) sundayChanged,
    required TResult Function() proceeded,
  }) {
    return sundayChanged(sunday);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DayPrimitive monday)? mondayChanged,
    TResult Function(DayPrimitive tuesday)? tuesdayChanged,
    TResult Function(DayPrimitive wednesday)? wednesdayChanged,
    TResult Function(DayPrimitive thursday)? thursdayChanged,
    TResult Function(DayPrimitive friday)? fridayChanged,
    TResult Function(DayPrimitive saturday)? saturdayChanged,
    TResult Function(DayPrimitive sunday)? sundayChanged,
    TResult Function()? proceeded,
  }) {
    return sundayChanged?.call(sunday);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DayPrimitive monday)? mondayChanged,
    TResult Function(DayPrimitive tuesday)? tuesdayChanged,
    TResult Function(DayPrimitive wednesday)? wednesdayChanged,
    TResult Function(DayPrimitive thursday)? thursdayChanged,
    TResult Function(DayPrimitive friday)? fridayChanged,
    TResult Function(DayPrimitive saturday)? saturdayChanged,
    TResult Function(DayPrimitive sunday)? sundayChanged,
    TResult Function()? proceeded,
    required TResult orElse(),
  }) {
    if (sundayChanged != null) {
      return sundayChanged(sunday);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MondayChanged value) mondayChanged,
    required TResult Function(_TuesdayChanged value) tuesdayChanged,
    required TResult Function(_WednesdayChanged value) wednesdayChanged,
    required TResult Function(_ThursdayChanged value) thursdayChanged,
    required TResult Function(_FridayChanged value) fridayChanged,
    required TResult Function(_SaturdayChanged value) saturdayChanged,
    required TResult Function(_SundayChanged value) sundayChanged,
    required TResult Function(_Proceeded value) proceeded,
  }) {
    return sundayChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_MondayChanged value)? mondayChanged,
    TResult Function(_TuesdayChanged value)? tuesdayChanged,
    TResult Function(_WednesdayChanged value)? wednesdayChanged,
    TResult Function(_ThursdayChanged value)? thursdayChanged,
    TResult Function(_FridayChanged value)? fridayChanged,
    TResult Function(_SaturdayChanged value)? saturdayChanged,
    TResult Function(_SundayChanged value)? sundayChanged,
    TResult Function(_Proceeded value)? proceeded,
  }) {
    return sundayChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MondayChanged value)? mondayChanged,
    TResult Function(_TuesdayChanged value)? tuesdayChanged,
    TResult Function(_WednesdayChanged value)? wednesdayChanged,
    TResult Function(_ThursdayChanged value)? thursdayChanged,
    TResult Function(_FridayChanged value)? fridayChanged,
    TResult Function(_SaturdayChanged value)? saturdayChanged,
    TResult Function(_SundayChanged value)? sundayChanged,
    TResult Function(_Proceeded value)? proceeded,
    required TResult orElse(),
  }) {
    if (sundayChanged != null) {
      return sundayChanged(this);
    }
    return orElse();
  }
}

abstract class _SundayChanged implements ShopTimePickerEvent {
  const factory _SundayChanged(final DayPrimitive sunday) = _$_SundayChanged;

  DayPrimitive get sunday => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_SundayChangedCopyWith<_$_SundayChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ProceededCopyWith<$Res> {
  factory _$$_ProceededCopyWith(
          _$_Proceeded value, $Res Function(_$_Proceeded) then) =
      __$$_ProceededCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ProceededCopyWithImpl<$Res>
    extends _$ShopTimePickerEventCopyWithImpl<$Res>
    implements _$$_ProceededCopyWith<$Res> {
  __$$_ProceededCopyWithImpl(
      _$_Proceeded _value, $Res Function(_$_Proceeded) _then)
      : super(_value, (v) => _then(v as _$_Proceeded));

  @override
  _$_Proceeded get _value => super._value as _$_Proceeded;
}

/// @nodoc

class _$_Proceeded implements _Proceeded {
  const _$_Proceeded();

  @override
  String toString() {
    return 'ShopTimePickerEvent.proceeded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Proceeded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DayPrimitive monday) mondayChanged,
    required TResult Function(DayPrimitive tuesday) tuesdayChanged,
    required TResult Function(DayPrimitive wednesday) wednesdayChanged,
    required TResult Function(DayPrimitive thursday) thursdayChanged,
    required TResult Function(DayPrimitive friday) fridayChanged,
    required TResult Function(DayPrimitive saturday) saturdayChanged,
    required TResult Function(DayPrimitive sunday) sundayChanged,
    required TResult Function() proceeded,
  }) {
    return proceeded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DayPrimitive monday)? mondayChanged,
    TResult Function(DayPrimitive tuesday)? tuesdayChanged,
    TResult Function(DayPrimitive wednesday)? wednesdayChanged,
    TResult Function(DayPrimitive thursday)? thursdayChanged,
    TResult Function(DayPrimitive friday)? fridayChanged,
    TResult Function(DayPrimitive saturday)? saturdayChanged,
    TResult Function(DayPrimitive sunday)? sundayChanged,
    TResult Function()? proceeded,
  }) {
    return proceeded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DayPrimitive monday)? mondayChanged,
    TResult Function(DayPrimitive tuesday)? tuesdayChanged,
    TResult Function(DayPrimitive wednesday)? wednesdayChanged,
    TResult Function(DayPrimitive thursday)? thursdayChanged,
    TResult Function(DayPrimitive friday)? fridayChanged,
    TResult Function(DayPrimitive saturday)? saturdayChanged,
    TResult Function(DayPrimitive sunday)? sundayChanged,
    TResult Function()? proceeded,
    required TResult orElse(),
  }) {
    if (proceeded != null) {
      return proceeded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MondayChanged value) mondayChanged,
    required TResult Function(_TuesdayChanged value) tuesdayChanged,
    required TResult Function(_WednesdayChanged value) wednesdayChanged,
    required TResult Function(_ThursdayChanged value) thursdayChanged,
    required TResult Function(_FridayChanged value) fridayChanged,
    required TResult Function(_SaturdayChanged value) saturdayChanged,
    required TResult Function(_SundayChanged value) sundayChanged,
    required TResult Function(_Proceeded value) proceeded,
  }) {
    return proceeded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_MondayChanged value)? mondayChanged,
    TResult Function(_TuesdayChanged value)? tuesdayChanged,
    TResult Function(_WednesdayChanged value)? wednesdayChanged,
    TResult Function(_ThursdayChanged value)? thursdayChanged,
    TResult Function(_FridayChanged value)? fridayChanged,
    TResult Function(_SaturdayChanged value)? saturdayChanged,
    TResult Function(_SundayChanged value)? sundayChanged,
    TResult Function(_Proceeded value)? proceeded,
  }) {
    return proceeded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MondayChanged value)? mondayChanged,
    TResult Function(_TuesdayChanged value)? tuesdayChanged,
    TResult Function(_WednesdayChanged value)? wednesdayChanged,
    TResult Function(_ThursdayChanged value)? thursdayChanged,
    TResult Function(_FridayChanged value)? fridayChanged,
    TResult Function(_SaturdayChanged value)? saturdayChanged,
    TResult Function(_SundayChanged value)? sundayChanged,
    TResult Function(_Proceeded value)? proceeded,
    required TResult orElse(),
  }) {
    if (proceeded != null) {
      return proceeded(this);
    }
    return orElse();
  }
}

abstract class _Proceeded implements ShopTimePickerEvent {
  const factory _Proceeded() = _$_Proceeded;
}

/// @nodoc
mixin _$ShopTimePickerState {
  Week get week => throw _privateConstructorUsedError;
  bool get showErrors => throw _privateConstructorUsedError;
  bool get saved => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShopTimePickerStateCopyWith<ShopTimePickerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopTimePickerStateCopyWith<$Res> {
  factory $ShopTimePickerStateCopyWith(
          ShopTimePickerState value, $Res Function(ShopTimePickerState) then) =
      _$ShopTimePickerStateCopyWithImpl<$Res>;
  $Res call({Week week, bool showErrors, bool saved});

  $WeekCopyWith<$Res> get week;
}

/// @nodoc
class _$ShopTimePickerStateCopyWithImpl<$Res>
    implements $ShopTimePickerStateCopyWith<$Res> {
  _$ShopTimePickerStateCopyWithImpl(this._value, this._then);

  final ShopTimePickerState _value;
  // ignore: unused_field
  final $Res Function(ShopTimePickerState) _then;

  @override
  $Res call({
    Object? week = freezed,
    Object? showErrors = freezed,
    Object? saved = freezed,
  }) {
    return _then(_value.copyWith(
      week: week == freezed
          ? _value.week
          : week // ignore: cast_nullable_to_non_nullable
              as Week,
      showErrors: showErrors == freezed
          ? _value.showErrors
          : showErrors // ignore: cast_nullable_to_non_nullable
              as bool,
      saved: saved == freezed
          ? _value.saved
          : saved // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $WeekCopyWith<$Res> get week {
    return $WeekCopyWith<$Res>(_value.week, (value) {
      return _then(_value.copyWith(week: value));
    });
  }
}

/// @nodoc
abstract class _$$_ShopTimePickerStateCopyWith<$Res>
    implements $ShopTimePickerStateCopyWith<$Res> {
  factory _$$_ShopTimePickerStateCopyWith(_$_ShopTimePickerState value,
          $Res Function(_$_ShopTimePickerState) then) =
      __$$_ShopTimePickerStateCopyWithImpl<$Res>;
  @override
  $Res call({Week week, bool showErrors, bool saved});

  @override
  $WeekCopyWith<$Res> get week;
}

/// @nodoc
class __$$_ShopTimePickerStateCopyWithImpl<$Res>
    extends _$ShopTimePickerStateCopyWithImpl<$Res>
    implements _$$_ShopTimePickerStateCopyWith<$Res> {
  __$$_ShopTimePickerStateCopyWithImpl(_$_ShopTimePickerState _value,
      $Res Function(_$_ShopTimePickerState) _then)
      : super(_value, (v) => _then(v as _$_ShopTimePickerState));

  @override
  _$_ShopTimePickerState get _value => super._value as _$_ShopTimePickerState;

  @override
  $Res call({
    Object? week = freezed,
    Object? showErrors = freezed,
    Object? saved = freezed,
  }) {
    return _then(_$_ShopTimePickerState(
      week: week == freezed
          ? _value.week
          : week // ignore: cast_nullable_to_non_nullable
              as Week,
      showErrors: showErrors == freezed
          ? _value.showErrors
          : showErrors // ignore: cast_nullable_to_non_nullable
              as bool,
      saved: saved == freezed
          ? _value.saved
          : saved // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ShopTimePickerState implements _ShopTimePickerState {
  const _$_ShopTimePickerState(
      {required this.week, required this.showErrors, required this.saved});

  @override
  final Week week;
  @override
  final bool showErrors;
  @override
  final bool saved;

  @override
  String toString() {
    return 'ShopTimePickerState(week: $week, showErrors: $showErrors, saved: $saved)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShopTimePickerState &&
            const DeepCollectionEquality().equals(other.week, week) &&
            const DeepCollectionEquality()
                .equals(other.showErrors, showErrors) &&
            const DeepCollectionEquality().equals(other.saved, saved));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(week),
      const DeepCollectionEquality().hash(showErrors),
      const DeepCollectionEquality().hash(saved));

  @JsonKey(ignore: true)
  @override
  _$$_ShopTimePickerStateCopyWith<_$_ShopTimePickerState> get copyWith =>
      __$$_ShopTimePickerStateCopyWithImpl<_$_ShopTimePickerState>(
          this, _$identity);
}

abstract class _ShopTimePickerState implements ShopTimePickerState {
  const factory _ShopTimePickerState(
      {required final Week week,
      required final bool showErrors,
      required final bool saved}) = _$_ShopTimePickerState;

  @override
  Week get week => throw _privateConstructorUsedError;
  @override
  bool get showErrors => throw _privateConstructorUsedError;
  @override
  bool get saved => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ShopTimePickerStateCopyWith<_$_ShopTimePickerState> get copyWith =>
      throw _privateConstructorUsedError;
}
