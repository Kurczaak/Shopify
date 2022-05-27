// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'value_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
abstract class _$$IncorrectCategoryStringCopyWith<T, $Res>
    implements $ProductValueFailureCopyWith<T, $Res> {
  factory _$$IncorrectCategoryStringCopyWith(_$IncorrectCategoryString<T> value,
          $Res Function(_$IncorrectCategoryString<T>) then) =
      __$$IncorrectCategoryStringCopyWithImpl<T, $Res>;
  @override
  $Res call({String failedValue});
}

/// @nodoc
class __$$IncorrectCategoryStringCopyWithImpl<T, $Res>
    extends _$ProductValueFailureCopyWithImpl<T, $Res>
    implements _$$IncorrectCategoryStringCopyWith<T, $Res> {
  __$$IncorrectCategoryStringCopyWithImpl(_$IncorrectCategoryString<T> _value,
      $Res Function(_$IncorrectCategoryString<T>) _then)
      : super(_value, (v) => _then(v as _$IncorrectCategoryString<T>));

  @override
  _$IncorrectCategoryString<T> get _value =>
      super._value as _$IncorrectCategoryString<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$IncorrectCategoryString<T>(
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
            other is _$IncorrectCategoryString<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  _$$IncorrectCategoryStringCopyWith<T, _$IncorrectCategoryString<T>>
      get copyWith => __$$IncorrectCategoryStringCopyWithImpl<T,
          _$IncorrectCategoryString<T>>(this, _$identity);

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
  const factory IncorrectCategoryString({required final String failedValue}) =
      _$IncorrectCategoryString<T>;

  @override
  String get failedValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$IncorrectCategoryStringCopyWith<T, _$IncorrectCategoryString<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IncorrectWeightUnitStringCopyWith<T, $Res>
    implements $ProductValueFailureCopyWith<T, $Res> {
  factory _$$IncorrectWeightUnitStringCopyWith(
          _$IncorrectWeightUnitString<T> value,
          $Res Function(_$IncorrectWeightUnitString<T>) then) =
      __$$IncorrectWeightUnitStringCopyWithImpl<T, $Res>;
  @override
  $Res call({String failedValue});
}

/// @nodoc
class __$$IncorrectWeightUnitStringCopyWithImpl<T, $Res>
    extends _$ProductValueFailureCopyWithImpl<T, $Res>
    implements _$$IncorrectWeightUnitStringCopyWith<T, $Res> {
  __$$IncorrectWeightUnitStringCopyWithImpl(
      _$IncorrectWeightUnitString<T> _value,
      $Res Function(_$IncorrectWeightUnitString<T>) _then)
      : super(_value, (v) => _then(v as _$IncorrectWeightUnitString<T>));

  @override
  _$IncorrectWeightUnitString<T> get _value =>
      super._value as _$IncorrectWeightUnitString<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$IncorrectWeightUnitString<T>(
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
            other is _$IncorrectWeightUnitString<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  _$$IncorrectWeightUnitStringCopyWith<T, _$IncorrectWeightUnitString<T>>
      get copyWith => __$$IncorrectWeightUnitStringCopyWithImpl<T,
          _$IncorrectWeightUnitString<T>>(this, _$identity);

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
  const factory IncorrectWeightUnitString({required final String failedValue}) =
      _$IncorrectWeightUnitString<T>;

  @override
  String get failedValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$IncorrectWeightUnitStringCopyWith<T, _$IncorrectWeightUnitString<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IncorrectCurrencyStringCopyWith<T, $Res>
    implements $ProductValueFailureCopyWith<T, $Res> {
  factory _$$IncorrectCurrencyStringCopyWith(_$IncorrectCurrencyString<T> value,
          $Res Function(_$IncorrectCurrencyString<T>) then) =
      __$$IncorrectCurrencyStringCopyWithImpl<T, $Res>;
  @override
  $Res call({String failedValue});
}

/// @nodoc
class __$$IncorrectCurrencyStringCopyWithImpl<T, $Res>
    extends _$ProductValueFailureCopyWithImpl<T, $Res>
    implements _$$IncorrectCurrencyStringCopyWith<T, $Res> {
  __$$IncorrectCurrencyStringCopyWithImpl(_$IncorrectCurrencyString<T> _value,
      $Res Function(_$IncorrectCurrencyString<T>) _then)
      : super(_value, (v) => _then(v as _$IncorrectCurrencyString<T>));

  @override
  _$IncorrectCurrencyString<T> get _value =>
      super._value as _$IncorrectCurrencyString<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$IncorrectCurrencyString<T>(
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
            other is _$IncorrectCurrencyString<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  _$$IncorrectCurrencyStringCopyWith<T, _$IncorrectCurrencyString<T>>
      get copyWith => __$$IncorrectCurrencyStringCopyWithImpl<T,
          _$IncorrectCurrencyString<T>>(this, _$identity);

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
  const factory IncorrectCurrencyString({required final String failedValue}) =
      _$IncorrectCurrencyString<T>;

  @override
  String get failedValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$IncorrectCurrencyStringCopyWith<T, _$IncorrectCurrencyString<T>>
      get copyWith => throw _privateConstructorUsedError;
}
