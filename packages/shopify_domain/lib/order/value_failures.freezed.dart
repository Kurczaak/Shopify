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
mixin _$OrderValueFailure<T> {
  String get failedValue => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue) incorrectStatusString,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String failedValue)? incorrectStatusString,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue)? incorrectStatusString,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IncorrectStatusString<T> value)
        incorrectStatusString,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_IncorrectStatusString<T> value)? incorrectStatusString,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IncorrectStatusString<T> value)? incorrectStatusString,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrderValueFailureCopyWith<T, OrderValueFailure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderValueFailureCopyWith<T, $Res> {
  factory $OrderValueFailureCopyWith(OrderValueFailure<T> value,
          $Res Function(OrderValueFailure<T>) then) =
      _$OrderValueFailureCopyWithImpl<T, $Res>;
  $Res call({String failedValue});
}

/// @nodoc
class _$OrderValueFailureCopyWithImpl<T, $Res>
    implements $OrderValueFailureCopyWith<T, $Res> {
  _$OrderValueFailureCopyWithImpl(this._value, this._then);

  final OrderValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(OrderValueFailure<T>) _then;

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
abstract class _$$_IncorrectStatusStringCopyWith<T, $Res>
    implements $OrderValueFailureCopyWith<T, $Res> {
  factory _$$_IncorrectStatusStringCopyWith(_$_IncorrectStatusString<T> value,
          $Res Function(_$_IncorrectStatusString<T>) then) =
      __$$_IncorrectStatusStringCopyWithImpl<T, $Res>;
  @override
  $Res call({String failedValue});
}

/// @nodoc
class __$$_IncorrectStatusStringCopyWithImpl<T, $Res>
    extends _$OrderValueFailureCopyWithImpl<T, $Res>
    implements _$$_IncorrectStatusStringCopyWith<T, $Res> {
  __$$_IncorrectStatusStringCopyWithImpl(_$_IncorrectStatusString<T> _value,
      $Res Function(_$_IncorrectStatusString<T>) _then)
      : super(_value, (v) => _then(v as _$_IncorrectStatusString<T>));

  @override
  _$_IncorrectStatusString<T> get _value =>
      super._value as _$_IncorrectStatusString<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$_IncorrectStatusString<T>(
      failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_IncorrectStatusString<T> implements _IncorrectStatusString<T> {
  const _$_IncorrectStatusString(this.failedValue);

  @override
  final String failedValue;

  @override
  String toString() {
    return 'OrderValueFailure<$T>.incorrectStatusString(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IncorrectStatusString<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  _$$_IncorrectStatusStringCopyWith<T, _$_IncorrectStatusString<T>>
      get copyWith => __$$_IncorrectStatusStringCopyWithImpl<T,
          _$_IncorrectStatusString<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue) incorrectStatusString,
  }) {
    return incorrectStatusString(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String failedValue)? incorrectStatusString,
  }) {
    return incorrectStatusString?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue)? incorrectStatusString,
    required TResult orElse(),
  }) {
    if (incorrectStatusString != null) {
      return incorrectStatusString(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IncorrectStatusString<T> value)
        incorrectStatusString,
  }) {
    return incorrectStatusString(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_IncorrectStatusString<T> value)? incorrectStatusString,
  }) {
    return incorrectStatusString?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IncorrectStatusString<T> value)? incorrectStatusString,
    required TResult orElse(),
  }) {
    if (incorrectStatusString != null) {
      return incorrectStatusString(this);
    }
    return orElse();
  }
}

abstract class _IncorrectStatusString<T> implements OrderValueFailure<T> {
  const factory _IncorrectStatusString(final String failedValue) =
      _$_IncorrectStatusString<T>;

  @override
  String get failedValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_IncorrectStatusStringCopyWith<T, _$_IncorrectStatusString<T>>
      get copyWith => throw _privateConstructorUsedError;
}
