// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'weight.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Weight {
  NonnegativeNumber get weight => throw _privateConstructorUsedError;
  WeightUnit get weightUnit => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeightCopyWith<Weight> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeightCopyWith<$Res> {
  factory $WeightCopyWith(Weight value, $Res Function(Weight) then) =
      _$WeightCopyWithImpl<$Res>;
  $Res call({NonnegativeNumber weight, WeightUnit weightUnit});
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
              as NonnegativeNumber,
      weightUnit: weightUnit == freezed
          ? _value.weightUnit
          : weightUnit // ignore: cast_nullable_to_non_nullable
              as WeightUnit,
    ));
  }
}

/// @nodoc
abstract class _$$_WeightCopyWith<$Res> implements $WeightCopyWith<$Res> {
  factory _$$_WeightCopyWith(_$_Weight value, $Res Function(_$_Weight) then) =
      __$$_WeightCopyWithImpl<$Res>;
  @override
  $Res call({NonnegativeNumber weight, WeightUnit weightUnit});
}

/// @nodoc
class __$$_WeightCopyWithImpl<$Res> extends _$WeightCopyWithImpl<$Res>
    implements _$$_WeightCopyWith<$Res> {
  __$$_WeightCopyWithImpl(_$_Weight _value, $Res Function(_$_Weight) _then)
      : super(_value, (v) => _then(v as _$_Weight));

  @override
  _$_Weight get _value => super._value as _$_Weight;

  @override
  $Res call({
    Object? weight = freezed,
    Object? weightUnit = freezed,
  }) {
    return _then(_$_Weight(
      weight: weight == freezed
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as NonnegativeNumber,
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
  final NonnegativeNumber weight;
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
            other is _$_Weight &&
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
  _$$_WeightCopyWith<_$_Weight> get copyWith =>
      __$$_WeightCopyWithImpl<_$_Weight>(this, _$identity);
}

abstract class _Weight extends Weight {
  const factory _Weight(
      {required final NonnegativeNumber weight,
      required final WeightUnit weightUnit}) = _$_Weight;
  const _Weight._() : super._();

  @override
  NonnegativeNumber get weight => throw _privateConstructorUsedError;
  @override
  WeightUnit get weightUnit => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_WeightCopyWith<_$_Weight> get copyWith =>
      throw _privateConstructorUsedError;
}
