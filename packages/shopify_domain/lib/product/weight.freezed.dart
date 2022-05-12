// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'weight.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$WeightTearOff {
  const _$WeightTearOff();

  _Weight call(
      {required PositiveNumber weight, required WeightUnit weightUnit}) {
    return _Weight(
      weight: weight,
      weightUnit: weightUnit,
    );
  }
}

/// @nodoc
const $Weight = _$WeightTearOff();

/// @nodoc
mixin _$Weight {
  PositiveNumber get weight => throw _privateConstructorUsedError;
  WeightUnit get weightUnit => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeightCopyWith<Weight> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeightCopyWith<$Res> {
  factory $WeightCopyWith(Weight value, $Res Function(Weight) then) =
      _$WeightCopyWithImpl<$Res>;
  $Res call({PositiveNumber weight, WeightUnit weightUnit});
}

/// @nodoc
class _$WeightCopyWithImpl<$Res> implements $WeightCopyWith<$Res> {
  _$WeightCopyWithImpl(this._value, this._then);

  final Weight _value;
  // ignore: unused_field
  final $Res Function(Weight) _then;

  @override
  $Res call({
    Object? weight = freezed,
    Object? weightUnit = freezed,
  }) {
    return _then(_value.copyWith(
      weight: weight == freezed
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as PositiveNumber,
      weightUnit: weightUnit == freezed
          ? _value.weightUnit
          : weightUnit // ignore: cast_nullable_to_non_nullable
              as WeightUnit,
    ));
  }
}

/// @nodoc
abstract class _$WeightCopyWith<$Res> implements $WeightCopyWith<$Res> {
  factory _$WeightCopyWith(_Weight value, $Res Function(_Weight) then) =
      __$WeightCopyWithImpl<$Res>;
  @override
  $Res call({PositiveNumber weight, WeightUnit weightUnit});
}

/// @nodoc
class __$WeightCopyWithImpl<$Res> extends _$WeightCopyWithImpl<$Res>
    implements _$WeightCopyWith<$Res> {
  __$WeightCopyWithImpl(_Weight _value, $Res Function(_Weight) _then)
      : super(_value, (v) => _then(v as _Weight));

  @override
  _Weight get _value => super._value as _Weight;

  @override
  $Res call({
    Object? weight = freezed,
    Object? weightUnit = freezed,
  }) {
    return _then(_Weight(
      weight: weight == freezed
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as PositiveNumber,
      weightUnit: weightUnit == freezed
          ? _value.weightUnit
          : weightUnit // ignore: cast_nullable_to_non_nullable
              as WeightUnit,
    ));
  }
}

/// @nodoc

class _$_Weight extends _Weight {
  const _$_Weight({required this.weight, required this.weightUnit}) : super._();

  @override
  final PositiveNumber weight;
  @override
  final WeightUnit weightUnit;

  @override
  String toString() {
    return 'Weight(weight: $weight, weightUnit: $weightUnit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Weight &&
            const DeepCollectionEquality().equals(other.weight, weight) &&
            const DeepCollectionEquality()
                .equals(other.weightUnit, weightUnit));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(weight),
      const DeepCollectionEquality().hash(weightUnit));

  @JsonKey(ignore: true)
  @override
  _$WeightCopyWith<_Weight> get copyWith =>
      __$WeightCopyWithImpl<_Weight>(this, _$identity);
}

abstract class _Weight extends Weight {
  const factory _Weight(
      {required PositiveNumber weight,
      required WeightUnit weightUnit}) = _$_Weight;
  const _Weight._() : super._();

  @override
  PositiveNumber get weight;
  @override
  WeightUnit get weightUnit;
  @override
  @JsonKey(ignore: true)
  _$WeightCopyWith<_Weight> get copyWith => throw _privateConstructorUsedError;
}
