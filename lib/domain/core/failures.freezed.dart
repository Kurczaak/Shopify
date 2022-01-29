// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ValueFailureTearOff {
  const _$ValueFailureTearOff();

  _Auth<T> auth<T>(AuthValueFailure<T> f) {
    return _Auth<T>(
      f,
    );
  }

  _Product<T> shopping<T>(ShoppingValueFailure<T> f) {
    return _Product<T>(
      f,
    );
  }
}

/// @nodoc
const $ValueFailure = _$ValueFailureTearOff();

/// @nodoc
mixin _$ValueFailure<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthValueFailure<T> f) auth,
    required TResult Function(ShoppingValueFailure<T> f) shopping,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AuthValueFailure<T> f)? auth,
    TResult Function(ShoppingValueFailure<T> f)? shopping,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthValueFailure<T> f)? auth,
    TResult Function(ShoppingValueFailure<T> f)? shopping,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Auth<T> value) auth,
    required TResult Function(_Product<T> value) shopping,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Auth<T> value)? auth,
    TResult Function(_Product<T> value)? shopping,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Auth<T> value)? auth,
    TResult Function(_Product<T> value)? shopping,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$ValueFailureCopyWithImpl<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  final ValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(ValueFailure<T>) _then;
}

/// @nodoc
abstract class _$AuthCopyWith<T, $Res> {
  factory _$AuthCopyWith(_Auth<T> value, $Res Function(_Auth<T>) then) =
      __$AuthCopyWithImpl<T, $Res>;
  $Res call({AuthValueFailure<T> f});

  $AuthValueFailureCopyWith<T, $Res> get f;
}

/// @nodoc
class __$AuthCopyWithImpl<T, $Res> extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$AuthCopyWith<T, $Res> {
  __$AuthCopyWithImpl(_Auth<T> _value, $Res Function(_Auth<T>) _then)
      : super(_value, (v) => _then(v as _Auth<T>));

  @override
  _Auth<T> get _value => super._value as _Auth<T>;

  @override
  $Res call({
    Object? f = freezed,
  }) {
    return _then(_Auth<T>(
      f == freezed
          ? _value.f
          : f // ignore: cast_nullable_to_non_nullable
              as AuthValueFailure<T>,
    ));
  }

  @override
  $AuthValueFailureCopyWith<T, $Res> get f {
    return $AuthValueFailureCopyWith<T, $Res>(_value.f, (value) {
      return _then(_value.copyWith(f: value));
    });
  }
}

/// @nodoc

class _$_Auth<T> implements _Auth<T> {
  const _$_Auth(this.f);

  @override
  final AuthValueFailure<T> f;

  @override
  String toString() {
    return 'ValueFailure<$T>.auth(f: $f)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Auth<T> &&
            const DeepCollectionEquality().equals(other.f, f));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(f));

  @JsonKey(ignore: true)
  @override
  _$AuthCopyWith<T, _Auth<T>> get copyWith =>
      __$AuthCopyWithImpl<T, _Auth<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthValueFailure<T> f) auth,
    required TResult Function(ShoppingValueFailure<T> f) shopping,
  }) {
    return auth(f);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AuthValueFailure<T> f)? auth,
    TResult Function(ShoppingValueFailure<T> f)? shopping,
  }) {
    return auth?.call(f);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthValueFailure<T> f)? auth,
    TResult Function(ShoppingValueFailure<T> f)? shopping,
    required TResult orElse(),
  }) {
    if (auth != null) {
      return auth(f);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Auth<T> value) auth,
    required TResult Function(_Product<T> value) shopping,
  }) {
    return auth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Auth<T> value)? auth,
    TResult Function(_Product<T> value)? shopping,
  }) {
    return auth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Auth<T> value)? auth,
    TResult Function(_Product<T> value)? shopping,
    required TResult orElse(),
  }) {
    if (auth != null) {
      return auth(this);
    }
    return orElse();
  }
}

abstract class _Auth<T> implements ValueFailure<T> {
  const factory _Auth(AuthValueFailure<T> f) = _$_Auth<T>;

  AuthValueFailure<T> get f;
  @JsonKey(ignore: true)
  _$AuthCopyWith<T, _Auth<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ProductCopyWith<T, $Res> {
  factory _$ProductCopyWith(
          _Product<T> value, $Res Function(_Product<T>) then) =
      __$ProductCopyWithImpl<T, $Res>;
  $Res call({ShoppingValueFailure<T> f});

  $ShoppingValueFailureCopyWith<T, $Res> get f;
}

/// @nodoc
class __$ProductCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$ProductCopyWith<T, $Res> {
  __$ProductCopyWithImpl(_Product<T> _value, $Res Function(_Product<T>) _then)
      : super(_value, (v) => _then(v as _Product<T>));

  @override
  _Product<T> get _value => super._value as _Product<T>;

  @override
  $Res call({
    Object? f = freezed,
  }) {
    return _then(_Product<T>(
      f == freezed
          ? _value.f
          : f // ignore: cast_nullable_to_non_nullable
              as ShoppingValueFailure<T>,
    ));
  }

  @override
  $ShoppingValueFailureCopyWith<T, $Res> get f {
    return $ShoppingValueFailureCopyWith<T, $Res>(_value.f, (value) {
      return _then(_value.copyWith(f: value));
    });
  }
}

/// @nodoc

class _$_Product<T> implements _Product<T> {
  const _$_Product(this.f);

  @override
  final ShoppingValueFailure<T> f;

  @override
  String toString() {
    return 'ValueFailure<$T>.shopping(f: $f)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Product<T> &&
            const DeepCollectionEquality().equals(other.f, f));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(f));

  @JsonKey(ignore: true)
  @override
  _$ProductCopyWith<T, _Product<T>> get copyWith =>
      __$ProductCopyWithImpl<T, _Product<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthValueFailure<T> f) auth,
    required TResult Function(ShoppingValueFailure<T> f) shopping,
  }) {
    return shopping(f);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AuthValueFailure<T> f)? auth,
    TResult Function(ShoppingValueFailure<T> f)? shopping,
  }) {
    return shopping?.call(f);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthValueFailure<T> f)? auth,
    TResult Function(ShoppingValueFailure<T> f)? shopping,
    required TResult orElse(),
  }) {
    if (shopping != null) {
      return shopping(f);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Auth<T> value) auth,
    required TResult Function(_Product<T> value) shopping,
  }) {
    return shopping(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Auth<T> value)? auth,
    TResult Function(_Product<T> value)? shopping,
  }) {
    return shopping?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Auth<T> value)? auth,
    TResult Function(_Product<T> value)? shopping,
    required TResult orElse(),
  }) {
    if (shopping != null) {
      return shopping(this);
    }
    return orElse();
  }
}

abstract class _Product<T> implements ValueFailure<T> {
  const factory _Product(ShoppingValueFailure<T> f) = _$_Product<T>;

  ShoppingValueFailure<T> get f;
  @JsonKey(ignore: true)
  _$ProductCopyWith<T, _Product<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$CoreValueFailureTearOff {
  const _$CoreValueFailureTearOff();

  IncorrectAddress<T> incorrectAddress<T>({required T input}) {
    return IncorrectAddress<T>(
      input: input,
    );
  }
}

/// @nodoc
const $CoreValueFailure = _$CoreValueFailureTearOff();

/// @nodoc
mixin _$CoreValueFailure<T> {
  T get input => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T input) incorrectAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T input)? incorrectAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T input)? incorrectAddress,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IncorrectAddress<T> value) incorrectAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(IncorrectAddress<T> value)? incorrectAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IncorrectAddress<T> value)? incorrectAddress,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CoreValueFailureCopyWith<T, CoreValueFailure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoreValueFailureCopyWith<T, $Res> {
  factory $CoreValueFailureCopyWith(
          CoreValueFailure<T> value, $Res Function(CoreValueFailure<T>) then) =
      _$CoreValueFailureCopyWithImpl<T, $Res>;
  $Res call({T input});
}

/// @nodoc
class _$CoreValueFailureCopyWithImpl<T, $Res>
    implements $CoreValueFailureCopyWith<T, $Res> {
  _$CoreValueFailureCopyWithImpl(this._value, this._then);

  final CoreValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(CoreValueFailure<T>) _then;

  @override
  $Res call({
    Object? input = freezed,
  }) {
    return _then(_value.copyWith(
      input: input == freezed
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc
abstract class $IncorrectAddressCopyWith<T, $Res>
    implements $CoreValueFailureCopyWith<T, $Res> {
  factory $IncorrectAddressCopyWith(
          IncorrectAddress<T> value, $Res Function(IncorrectAddress<T>) then) =
      _$IncorrectAddressCopyWithImpl<T, $Res>;
  @override
  $Res call({T input});
}

/// @nodoc
class _$IncorrectAddressCopyWithImpl<T, $Res>
    extends _$CoreValueFailureCopyWithImpl<T, $Res>
    implements $IncorrectAddressCopyWith<T, $Res> {
  _$IncorrectAddressCopyWithImpl(
      IncorrectAddress<T> _value, $Res Function(IncorrectAddress<T>) _then)
      : super(_value, (v) => _then(v as IncorrectAddress<T>));

  @override
  IncorrectAddress<T> get _value => super._value as IncorrectAddress<T>;

  @override
  $Res call({
    Object? input = freezed,
  }) {
    return _then(IncorrectAddress<T>(
      input: input == freezed
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$IncorrectAddress<T> implements IncorrectAddress<T> {
  const _$IncorrectAddress({required this.input});

  @override
  final T input;

  @override
  String toString() {
    return 'CoreValueFailure<$T>.incorrectAddress(input: $input)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is IncorrectAddress<T> &&
            const DeepCollectionEquality().equals(other.input, input));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(input));

  @JsonKey(ignore: true)
  @override
  $IncorrectAddressCopyWith<T, IncorrectAddress<T>> get copyWith =>
      _$IncorrectAddressCopyWithImpl<T, IncorrectAddress<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T input) incorrectAddress,
  }) {
    return incorrectAddress(input);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T input)? incorrectAddress,
  }) {
    return incorrectAddress?.call(input);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T input)? incorrectAddress,
    required TResult orElse(),
  }) {
    if (incorrectAddress != null) {
      return incorrectAddress(input);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IncorrectAddress<T> value) incorrectAddress,
  }) {
    return incorrectAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(IncorrectAddress<T> value)? incorrectAddress,
  }) {
    return incorrectAddress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IncorrectAddress<T> value)? incorrectAddress,
    required TResult orElse(),
  }) {
    if (incorrectAddress != null) {
      return incorrectAddress(this);
    }
    return orElse();
  }
}

abstract class IncorrectAddress<T> implements CoreValueFailure<T> {
  const factory IncorrectAddress({required T input}) = _$IncorrectAddress<T>;

  @override
  T get input;
  @override
  @JsonKey(ignore: true)
  $IncorrectAddressCopyWith<T, IncorrectAddress<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
