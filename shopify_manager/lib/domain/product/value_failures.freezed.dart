// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'value_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProductValueFailureTearOff {
  const _$ProductValueFailureTearOff();

  IncorrectCategoryString<T> incorrectCategoryString<T>(
      {required String failedValue}) {
    return IncorrectCategoryString<T>(
      failedValue: failedValue,
    );
  }

  IncorrectWeightUnitString<T> incorrectWeightUnitString<T>(
      {required String failedValue}) {
    return IncorrectWeightUnitString<T>(
      failedValue: failedValue,
    );
  }

  IncorrectCurrencyString<T> incorrectCurrencyString<T>(
      {required String failedValue}) {
    return IncorrectCurrencyString<T>(
      failedValue: failedValue,
    );
  }
}

/// @nodoc
const $ProductValueFailure = _$ProductValueFailureTearOff();

/// @nodoc
mixin _$ProductValueFailure<T> {
  String get failedValue => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue) incorrectCategoryString,
    required TResult Function(String failedValue) incorrectWeightUnitString,
    required TResult Function(String failedValue) incorrectCurrencyString,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String failedValue)? incorrectCategoryString,
    TResult Function(String failedValue)? incorrectWeightUnitString,
    TResult Function(String failedValue)? incorrectCurrencyString,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue)? incorrectCategoryString,
    TResult Function(String failedValue)? incorrectWeightUnitString,
    TResult Function(String failedValue)? incorrectCurrencyString,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IncorrectCategoryString<T> value)
        incorrectCategoryString,
    required TResult Function(IncorrectWeightUnitString<T> value)
        incorrectWeightUnitString,
    required TResult Function(IncorrectCurrencyString<T> value)
        incorrectCurrencyString,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(IncorrectCategoryString<T> value)? incorrectCategoryString,
    TResult Function(IncorrectWeightUnitString<T> value)?
        incorrectWeightUnitString,
    TResult Function(IncorrectCurrencyString<T> value)? incorrectCurrencyString,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IncorrectCategoryString<T> value)? incorrectCategoryString,
    TResult Function(IncorrectWeightUnitString<T> value)?
        incorrectWeightUnitString,
    TResult Function(IncorrectCurrencyString<T> value)? incorrectCurrencyString,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductValueFailureCopyWith<T, ProductValueFailure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductValueFailureCopyWith<T, $Res> {
  factory $ProductValueFailureCopyWith(ProductValueFailure<T> value,
          $Res Function(ProductValueFailure<T>) then) =
      _$ProductValueFailureCopyWithImpl<T, $Res>;
  $Res call({String failedValue});
}

/// @nodoc
class _$ProductValueFailureCopyWithImpl<T, $Res>
    implements $ProductValueFailureCopyWith<T, $Res> {
  _$ProductValueFailureCopyWithImpl(this._value, this._then);

  final ProductValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(ProductValueFailure<T>) _then;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_value.copyWith(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $IncorrectCategoryStringCopyWith<T, $Res>
    implements $ProductValueFailureCopyWith<T, $Res> {
  factory $IncorrectCategoryStringCopyWith(IncorrectCategoryString<T> value,
          $Res Function(IncorrectCategoryString<T>) then) =
      _$IncorrectCategoryStringCopyWithImpl<T, $Res>;
  @override
  $Res call({String failedValue});
}

/// @nodoc
class _$IncorrectCategoryStringCopyWithImpl<T, $Res>
    extends _$ProductValueFailureCopyWithImpl<T, $Res>
    implements $IncorrectCategoryStringCopyWith<T, $Res> {
  _$IncorrectCategoryStringCopyWithImpl(IncorrectCategoryString<T> _value,
      $Res Function(IncorrectCategoryString<T>) _then)
      : super(_value, (v) => _then(v as IncorrectCategoryString<T>));

  @override
  IncorrectCategoryString<T> get _value =>
      super._value as IncorrectCategoryString<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(IncorrectCategoryString<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$IncorrectCategoryString<T> implements IncorrectCategoryString<T> {
  const _$IncorrectCategoryString({required this.failedValue});

  @override
  final String failedValue;

  @override
  String toString() {
    return 'ProductValueFailure<$T>.incorrectCategoryString(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is IncorrectCategoryString<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  $IncorrectCategoryStringCopyWith<T, IncorrectCategoryString<T>>
      get copyWith =>
          _$IncorrectCategoryStringCopyWithImpl<T, IncorrectCategoryString<T>>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue) incorrectCategoryString,
    required TResult Function(String failedValue) incorrectWeightUnitString,
    required TResult Function(String failedValue) incorrectCurrencyString,
  }) {
    return incorrectCategoryString(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String failedValue)? incorrectCategoryString,
    TResult Function(String failedValue)? incorrectWeightUnitString,
    TResult Function(String failedValue)? incorrectCurrencyString,
  }) {
    return incorrectCategoryString?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue)? incorrectCategoryString,
    TResult Function(String failedValue)? incorrectWeightUnitString,
    TResult Function(String failedValue)? incorrectCurrencyString,
    required TResult orElse(),
  }) {
    if (incorrectCategoryString != null) {
      return incorrectCategoryString(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IncorrectCategoryString<T> value)
        incorrectCategoryString,
    required TResult Function(IncorrectWeightUnitString<T> value)
        incorrectWeightUnitString,
    required TResult Function(IncorrectCurrencyString<T> value)
        incorrectCurrencyString,
  }) {
    return incorrectCategoryString(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(IncorrectCategoryString<T> value)? incorrectCategoryString,
    TResult Function(IncorrectWeightUnitString<T> value)?
        incorrectWeightUnitString,
    TResult Function(IncorrectCurrencyString<T> value)? incorrectCurrencyString,
  }) {
    return incorrectCategoryString?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IncorrectCategoryString<T> value)? incorrectCategoryString,
    TResult Function(IncorrectWeightUnitString<T> value)?
        incorrectWeightUnitString,
    TResult Function(IncorrectCurrencyString<T> value)? incorrectCurrencyString,
    required TResult orElse(),
  }) {
    if (incorrectCategoryString != null) {
      return incorrectCategoryString(this);
    }
    return orElse();
  }
}

abstract class IncorrectCategoryString<T> implements ProductValueFailure<T> {
  const factory IncorrectCategoryString({required String failedValue}) =
      _$IncorrectCategoryString<T>;

  @override
  String get failedValue;
  @override
  @JsonKey(ignore: true)
  $IncorrectCategoryStringCopyWith<T, IncorrectCategoryString<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IncorrectWeightUnitStringCopyWith<T, $Res>
    implements $ProductValueFailureCopyWith<T, $Res> {
  factory $IncorrectWeightUnitStringCopyWith(IncorrectWeightUnitString<T> value,
          $Res Function(IncorrectWeightUnitString<T>) then) =
      _$IncorrectWeightUnitStringCopyWithImpl<T, $Res>;
  @override
  $Res call({String failedValue});
}

/// @nodoc
class _$IncorrectWeightUnitStringCopyWithImpl<T, $Res>
    extends _$ProductValueFailureCopyWithImpl<T, $Res>
    implements $IncorrectWeightUnitStringCopyWith<T, $Res> {
  _$IncorrectWeightUnitStringCopyWithImpl(IncorrectWeightUnitString<T> _value,
      $Res Function(IncorrectWeightUnitString<T>) _then)
      : super(_value, (v) => _then(v as IncorrectWeightUnitString<T>));

  @override
  IncorrectWeightUnitString<T> get _value =>
      super._value as IncorrectWeightUnitString<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(IncorrectWeightUnitString<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$IncorrectWeightUnitString<T> implements IncorrectWeightUnitString<T> {
  const _$IncorrectWeightUnitString({required this.failedValue});

  @override
  final String failedValue;

  @override
  String toString() {
    return 'ProductValueFailure<$T>.incorrectWeightUnitString(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is IncorrectWeightUnitString<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  $IncorrectWeightUnitStringCopyWith<T, IncorrectWeightUnitString<T>>
      get copyWith => _$IncorrectWeightUnitStringCopyWithImpl<T,
          IncorrectWeightUnitString<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue) incorrectCategoryString,
    required TResult Function(String failedValue) incorrectWeightUnitString,
    required TResult Function(String failedValue) incorrectCurrencyString,
  }) {
    return incorrectWeightUnitString(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String failedValue)? incorrectCategoryString,
    TResult Function(String failedValue)? incorrectWeightUnitString,
    TResult Function(String failedValue)? incorrectCurrencyString,
  }) {
    return incorrectWeightUnitString?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue)? incorrectCategoryString,
    TResult Function(String failedValue)? incorrectWeightUnitString,
    TResult Function(String failedValue)? incorrectCurrencyString,
    required TResult orElse(),
  }) {
    if (incorrectWeightUnitString != null) {
      return incorrectWeightUnitString(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IncorrectCategoryString<T> value)
        incorrectCategoryString,
    required TResult Function(IncorrectWeightUnitString<T> value)
        incorrectWeightUnitString,
    required TResult Function(IncorrectCurrencyString<T> value)
        incorrectCurrencyString,
  }) {
    return incorrectWeightUnitString(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(IncorrectCategoryString<T> value)? incorrectCategoryString,
    TResult Function(IncorrectWeightUnitString<T> value)?
        incorrectWeightUnitString,
    TResult Function(IncorrectCurrencyString<T> value)? incorrectCurrencyString,
  }) {
    return incorrectWeightUnitString?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IncorrectCategoryString<T> value)? incorrectCategoryString,
    TResult Function(IncorrectWeightUnitString<T> value)?
        incorrectWeightUnitString,
    TResult Function(IncorrectCurrencyString<T> value)? incorrectCurrencyString,
    required TResult orElse(),
  }) {
    if (incorrectWeightUnitString != null) {
      return incorrectWeightUnitString(this);
    }
    return orElse();
  }
}

abstract class IncorrectWeightUnitString<T> implements ProductValueFailure<T> {
  const factory IncorrectWeightUnitString({required String failedValue}) =
      _$IncorrectWeightUnitString<T>;

  @override
  String get failedValue;
  @override
  @JsonKey(ignore: true)
  $IncorrectWeightUnitStringCopyWith<T, IncorrectWeightUnitString<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IncorrectCurrencyStringCopyWith<T, $Res>
    implements $ProductValueFailureCopyWith<T, $Res> {
  factory $IncorrectCurrencyStringCopyWith(IncorrectCurrencyString<T> value,
          $Res Function(IncorrectCurrencyString<T>) then) =
      _$IncorrectCurrencyStringCopyWithImpl<T, $Res>;
  @override
  $Res call({String failedValue});
}

/// @nodoc
class _$IncorrectCurrencyStringCopyWithImpl<T, $Res>
    extends _$ProductValueFailureCopyWithImpl<T, $Res>
    implements $IncorrectCurrencyStringCopyWith<T, $Res> {
  _$IncorrectCurrencyStringCopyWithImpl(IncorrectCurrencyString<T> _value,
      $Res Function(IncorrectCurrencyString<T>) _then)
      : super(_value, (v) => _then(v as IncorrectCurrencyString<T>));

  @override
  IncorrectCurrencyString<T> get _value =>
      super._value as IncorrectCurrencyString<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(IncorrectCurrencyString<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$IncorrectCurrencyString<T> implements IncorrectCurrencyString<T> {
  const _$IncorrectCurrencyString({required this.failedValue});

  @override
  final String failedValue;

  @override
  String toString() {
    return 'ProductValueFailure<$T>.incorrectCurrencyString(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is IncorrectCurrencyString<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  $IncorrectCurrencyStringCopyWith<T, IncorrectCurrencyString<T>>
      get copyWith =>
          _$IncorrectCurrencyStringCopyWithImpl<T, IncorrectCurrencyString<T>>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue) incorrectCategoryString,
    required TResult Function(String failedValue) incorrectWeightUnitString,
    required TResult Function(String failedValue) incorrectCurrencyString,
  }) {
    return incorrectCurrencyString(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String failedValue)? incorrectCategoryString,
    TResult Function(String failedValue)? incorrectWeightUnitString,
    TResult Function(String failedValue)? incorrectCurrencyString,
  }) {
    return incorrectCurrencyString?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue)? incorrectCategoryString,
    TResult Function(String failedValue)? incorrectWeightUnitString,
    TResult Function(String failedValue)? incorrectCurrencyString,
    required TResult orElse(),
  }) {
    if (incorrectCurrencyString != null) {
      return incorrectCurrencyString(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IncorrectCategoryString<T> value)
        incorrectCategoryString,
    required TResult Function(IncorrectWeightUnitString<T> value)
        incorrectWeightUnitString,
    required TResult Function(IncorrectCurrencyString<T> value)
        incorrectCurrencyString,
  }) {
    return incorrectCurrencyString(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(IncorrectCategoryString<T> value)? incorrectCategoryString,
    TResult Function(IncorrectWeightUnitString<T> value)?
        incorrectWeightUnitString,
    TResult Function(IncorrectCurrencyString<T> value)? incorrectCurrencyString,
  }) {
    return incorrectCurrencyString?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IncorrectCategoryString<T> value)? incorrectCategoryString,
    TResult Function(IncorrectWeightUnitString<T> value)?
        incorrectWeightUnitString,
    TResult Function(IncorrectCurrencyString<T> value)? incorrectCurrencyString,
    required TResult orElse(),
  }) {
    if (incorrectCurrencyString != null) {
      return incorrectCurrencyString(this);
    }
    return orElse();
  }
}

abstract class IncorrectCurrencyString<T> implements ProductValueFailure<T> {
  const factory IncorrectCurrencyString({required String failedValue}) =
      _$IncorrectCurrencyString<T>;

  @override
  String get failedValue;
  @override
  @JsonKey(ignore: true)
  $IncorrectCurrencyStringCopyWith<T, IncorrectCurrencyString<T>>
      get copyWith => throw _privateConstructorUsedError;
}
