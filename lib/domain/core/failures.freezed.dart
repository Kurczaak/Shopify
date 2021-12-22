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

  _Product<T> product<T>(ProductValueFailure<T> f) {
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
    required TResult Function(ProductValueFailure<T> f) product,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AuthValueFailure<T> f)? auth,
    TResult Function(ProductValueFailure<T> f)? product,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthValueFailure<T> f)? auth,
    TResult Function(ProductValueFailure<T> f)? product,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Auth<T> value) auth,
    required TResult Function(_Product<T> value) product,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Auth<T> value)? auth,
    TResult Function(_Product<T> value)? product,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Auth<T> value)? auth,
    TResult Function(_Product<T> value)? product,
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
    required TResult Function(ProductValueFailure<T> f) product,
  }) {
    return auth(f);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AuthValueFailure<T> f)? auth,
    TResult Function(ProductValueFailure<T> f)? product,
  }) {
    return auth?.call(f);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthValueFailure<T> f)? auth,
    TResult Function(ProductValueFailure<T> f)? product,
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
    required TResult Function(_Product<T> value) product,
  }) {
    return auth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Auth<T> value)? auth,
    TResult Function(_Product<T> value)? product,
  }) {
    return auth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Auth<T> value)? auth,
    TResult Function(_Product<T> value)? product,
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
  $Res call({ProductValueFailure<T> f});

  $ProductValueFailureCopyWith<T, $Res> get f;
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
              as ProductValueFailure<T>,
    ));
  }

  @override
  $ProductValueFailureCopyWith<T, $Res> get f {
    return $ProductValueFailureCopyWith<T, $Res>(_value.f, (value) {
      return _then(_value.copyWith(f: value));
    });
  }
}

/// @nodoc

class _$_Product<T> implements _Product<T> {
  const _$_Product(this.f);

  @override
  final ProductValueFailure<T> f;

  @override
  String toString() {
    return 'ValueFailure<$T>.product(f: $f)';
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
    required TResult Function(ProductValueFailure<T> f) product,
  }) {
    return product(f);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AuthValueFailure<T> f)? auth,
    TResult Function(ProductValueFailure<T> f)? product,
  }) {
    return product?.call(f);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthValueFailure<T> f)? auth,
    TResult Function(ProductValueFailure<T> f)? product,
    required TResult orElse(),
  }) {
    if (product != null) {
      return product(f);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Auth<T> value) auth,
    required TResult Function(_Product<T> value) product,
  }) {
    return product(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Auth<T> value)? auth,
    TResult Function(_Product<T> value)? product,
  }) {
    return product?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Auth<T> value)? auth,
    TResult Function(_Product<T> value)? product,
    required TResult orElse(),
  }) {
    if (product != null) {
      return product(this);
    }
    return orElse();
  }
}

abstract class _Product<T> implements ValueFailure<T> {
  const factory _Product(ProductValueFailure<T> f) = _$_Product<T>;

  ProductValueFailure<T> get f;
  @JsonKey(ignore: true)
  _$ProductCopyWith<T, _Product<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AuthValueFailureTearOff {
  const _$AuthValueFailureTearOff();

  InvalidEmail<T> invalidEmail<T>({required T failedValue}) {
    return InvalidEmail<T>(
      failedValue: failedValue,
    );
  }

  ShortPassword<T> incorrectPassword<T>({required T failedValue}) {
    return ShortPassword<T>(
      failedValue: failedValue,
    );
  }
}

/// @nodoc
const $AuthValueFailure = _$AuthValueFailureTearOff();

/// @nodoc
mixin _$AuthValueFailure<T> {
  T get failedValue => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) incorrectPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? incorrectPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? incorrectPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) incorrectPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? incorrectPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? incorrectPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthValueFailureCopyWith<T, AuthValueFailure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthValueFailureCopyWith<T, $Res> {
  factory $AuthValueFailureCopyWith(
          AuthValueFailure<T> value, $Res Function(AuthValueFailure<T>) then) =
      _$AuthValueFailureCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class _$AuthValueFailureCopyWithImpl<T, $Res>
    implements $AuthValueFailureCopyWith<T, $Res> {
  _$AuthValueFailureCopyWithImpl(this._value, this._then);

  final AuthValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(AuthValueFailure<T>) _then;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_value.copyWith(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc
abstract class $InvalidEmailCopyWith<T, $Res>
    implements $AuthValueFailureCopyWith<T, $Res> {
  factory $InvalidEmailCopyWith(
          InvalidEmail<T> value, $Res Function(InvalidEmail<T>) then) =
      _$InvalidEmailCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$InvalidEmailCopyWithImpl<T, $Res>
    extends _$AuthValueFailureCopyWithImpl<T, $Res>
    implements $InvalidEmailCopyWith<T, $Res> {
  _$InvalidEmailCopyWithImpl(
      InvalidEmail<T> _value, $Res Function(InvalidEmail<T>) _then)
      : super(_value, (v) => _then(v as InvalidEmail<T>));

  @override
  InvalidEmail<T> get _value => super._value as InvalidEmail<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(InvalidEmail<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$InvalidEmail<T> implements InvalidEmail<T> {
  const _$InvalidEmail({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'AuthValueFailure<$T>.invalidEmail(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InvalidEmail<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  $InvalidEmailCopyWith<T, InvalidEmail<T>> get copyWith =>
      _$InvalidEmailCopyWithImpl<T, InvalidEmail<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) incorrectPassword,
  }) {
    return invalidEmail(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? incorrectPassword,
  }) {
    return invalidEmail?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? incorrectPassword,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) incorrectPassword,
  }) {
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? incorrectPassword,
  }) {
    return invalidEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? incorrectPassword,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class InvalidEmail<T> implements AuthValueFailure<T> {
  const factory InvalidEmail({required T failedValue}) = _$InvalidEmail<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  $InvalidEmailCopyWith<T, InvalidEmail<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShortPasswordCopyWith<T, $Res>
    implements $AuthValueFailureCopyWith<T, $Res> {
  factory $ShortPasswordCopyWith(
          ShortPassword<T> value, $Res Function(ShortPassword<T>) then) =
      _$ShortPasswordCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$ShortPasswordCopyWithImpl<T, $Res>
    extends _$AuthValueFailureCopyWithImpl<T, $Res>
    implements $ShortPasswordCopyWith<T, $Res> {
  _$ShortPasswordCopyWithImpl(
      ShortPassword<T> _value, $Res Function(ShortPassword<T>) _then)
      : super(_value, (v) => _then(v as ShortPassword<T>));

  @override
  ShortPassword<T> get _value => super._value as ShortPassword<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(ShortPassword<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$ShortPassword<T> implements ShortPassword<T> {
  const _$ShortPassword({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'AuthValueFailure<$T>.incorrectPassword(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ShortPassword<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  $ShortPasswordCopyWith<T, ShortPassword<T>> get copyWith =>
      _$ShortPasswordCopyWithImpl<T, ShortPassword<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) incorrectPassword,
  }) {
    return incorrectPassword(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? incorrectPassword,
  }) {
    return incorrectPassword?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? incorrectPassword,
    required TResult orElse(),
  }) {
    if (incorrectPassword != null) {
      return incorrectPassword(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) incorrectPassword,
  }) {
    return incorrectPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? incorrectPassword,
  }) {
    return incorrectPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? incorrectPassword,
    required TResult orElse(),
  }) {
    if (incorrectPassword != null) {
      return incorrectPassword(this);
    }
    return orElse();
  }
}

abstract class ShortPassword<T> implements AuthValueFailure<T> {
  const factory ShortPassword({required T failedValue}) = _$ShortPassword<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  $ShortPasswordCopyWith<T, ShortPassword<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ProductValueFailureTearOff {
  const _$ProductValueFailureTearOff();

  ExceedingLength<T> exceedingLength<T>(StringValueFailure f) {
    return ExceedingLength<T>(
      f,
    );
  }

  BodyTooLong<T> bodyTooLong<T>(
      {required T failedValue, required int maxLength}) {
    return BodyTooLong<T>(
      failedValue: failedValue,
      maxLength: maxLength,
    );
  }

  Empty<T> empty<T>() {
    return Empty<T>();
  }

  Multiline<T> multiline<T>({required T failedValue}) {
    return Multiline<T>(
      failedValue: failedValue,
    );
  }

  NonPositivePrice<T> nonPositivePrice<T>({required T failedValue}) {
    return NonPositivePrice<T>(
      failedValue: failedValue,
    );
  }
}

/// @nodoc
const $ProductValueFailure = _$ProductValueFailureTearOff();

/// @nodoc
mixin _$ProductValueFailure<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StringValueFailure f) exceedingLength,
    required TResult Function(T failedValue, int maxLength) bodyTooLong,
    required TResult Function() empty,
    required TResult Function(T failedValue) multiline,
    required TResult Function(T failedValue) nonPositivePrice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(StringValueFailure f)? exceedingLength,
    TResult Function(T failedValue, int maxLength)? bodyTooLong,
    TResult Function()? empty,
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue)? nonPositivePrice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StringValueFailure f)? exceedingLength,
    TResult Function(T failedValue, int maxLength)? bodyTooLong,
    TResult Function()? empty,
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue)? nonPositivePrice,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(BodyTooLong<T> value) bodyTooLong,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(NonPositivePrice<T> value) nonPositivePrice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(BodyTooLong<T> value)? bodyTooLong,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(NonPositivePrice<T> value)? nonPositivePrice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(BodyTooLong<T> value)? bodyTooLong,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(NonPositivePrice<T> value)? nonPositivePrice,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductValueFailureCopyWith<T, $Res> {
  factory $ProductValueFailureCopyWith(ProductValueFailure<T> value,
          $Res Function(ProductValueFailure<T>) then) =
      _$ProductValueFailureCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$ProductValueFailureCopyWithImpl<T, $Res>
    implements $ProductValueFailureCopyWith<T, $Res> {
  _$ProductValueFailureCopyWithImpl(this._value, this._then);

  final ProductValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(ProductValueFailure<T>) _then;
}

/// @nodoc
abstract class $ExceedingLengthCopyWith<T, $Res> {
  factory $ExceedingLengthCopyWith(
          ExceedingLength<T> value, $Res Function(ExceedingLength<T>) then) =
      _$ExceedingLengthCopyWithImpl<T, $Res>;
  $Res call({StringValueFailure f});

  $StringValueFailureCopyWith<$Res> get f;
}

/// @nodoc
class _$ExceedingLengthCopyWithImpl<T, $Res>
    extends _$ProductValueFailureCopyWithImpl<T, $Res>
    implements $ExceedingLengthCopyWith<T, $Res> {
  _$ExceedingLengthCopyWithImpl(
      ExceedingLength<T> _value, $Res Function(ExceedingLength<T>) _then)
      : super(_value, (v) => _then(v as ExceedingLength<T>));

  @override
  ExceedingLength<T> get _value => super._value as ExceedingLength<T>;

  @override
  $Res call({
    Object? f = freezed,
  }) {
    return _then(ExceedingLength<T>(
      f == freezed
          ? _value.f
          : f // ignore: cast_nullable_to_non_nullable
              as StringValueFailure,
    ));
  }

  @override
  $StringValueFailureCopyWith<$Res> get f {
    return $StringValueFailureCopyWith<$Res>(_value.f, (value) {
      return _then(_value.copyWith(f: value));
    });
  }
}

/// @nodoc

class _$ExceedingLength<T> implements ExceedingLength<T> {
  const _$ExceedingLength(this.f);

  @override
  final StringValueFailure f;

  @override
  String toString() {
    return 'ProductValueFailure<$T>.exceedingLength(f: $f)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ExceedingLength<T> &&
            const DeepCollectionEquality().equals(other.f, f));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(f));

  @JsonKey(ignore: true)
  @override
  $ExceedingLengthCopyWith<T, ExceedingLength<T>> get copyWith =>
      _$ExceedingLengthCopyWithImpl<T, ExceedingLength<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StringValueFailure f) exceedingLength,
    required TResult Function(T failedValue, int maxLength) bodyTooLong,
    required TResult Function() empty,
    required TResult Function(T failedValue) multiline,
    required TResult Function(T failedValue) nonPositivePrice,
  }) {
    return exceedingLength(f);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(StringValueFailure f)? exceedingLength,
    TResult Function(T failedValue, int maxLength)? bodyTooLong,
    TResult Function()? empty,
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue)? nonPositivePrice,
  }) {
    return exceedingLength?.call(f);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StringValueFailure f)? exceedingLength,
    TResult Function(T failedValue, int maxLength)? bodyTooLong,
    TResult Function()? empty,
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue)? nonPositivePrice,
    required TResult orElse(),
  }) {
    if (exceedingLength != null) {
      return exceedingLength(f);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(BodyTooLong<T> value) bodyTooLong,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(NonPositivePrice<T> value) nonPositivePrice,
  }) {
    return exceedingLength(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(BodyTooLong<T> value)? bodyTooLong,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(NonPositivePrice<T> value)? nonPositivePrice,
  }) {
    return exceedingLength?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(BodyTooLong<T> value)? bodyTooLong,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(NonPositivePrice<T> value)? nonPositivePrice,
    required TResult orElse(),
  }) {
    if (exceedingLength != null) {
      return exceedingLength(this);
    }
    return orElse();
  }
}

abstract class ExceedingLength<T> implements ProductValueFailure<T> {
  const factory ExceedingLength(StringValueFailure f) = _$ExceedingLength<T>;

  StringValueFailure get f;
  @JsonKey(ignore: true)
  $ExceedingLengthCopyWith<T, ExceedingLength<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BodyTooLongCopyWith<T, $Res> {
  factory $BodyTooLongCopyWith(
          BodyTooLong<T> value, $Res Function(BodyTooLong<T>) then) =
      _$BodyTooLongCopyWithImpl<T, $Res>;
  $Res call({T failedValue, int maxLength});
}

/// @nodoc
class _$BodyTooLongCopyWithImpl<T, $Res>
    extends _$ProductValueFailureCopyWithImpl<T, $Res>
    implements $BodyTooLongCopyWith<T, $Res> {
  _$BodyTooLongCopyWithImpl(
      BodyTooLong<T> _value, $Res Function(BodyTooLong<T>) _then)
      : super(_value, (v) => _then(v as BodyTooLong<T>));

  @override
  BodyTooLong<T> get _value => super._value as BodyTooLong<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
    Object? maxLength = freezed,
  }) {
    return _then(BodyTooLong<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
      maxLength: maxLength == freezed
          ? _value.maxLength
          : maxLength // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$BodyTooLong<T> implements BodyTooLong<T> {
  const _$BodyTooLong({required this.failedValue, required this.maxLength});

  @override
  final T failedValue;
  @override
  final int maxLength;

  @override
  String toString() {
    return 'ProductValueFailure<$T>.bodyTooLong(failedValue: $failedValue, maxLength: $maxLength)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BodyTooLong<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue) &&
            const DeepCollectionEquality().equals(other.maxLength, maxLength));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(failedValue),
      const DeepCollectionEquality().hash(maxLength));

  @JsonKey(ignore: true)
  @override
  $BodyTooLongCopyWith<T, BodyTooLong<T>> get copyWith =>
      _$BodyTooLongCopyWithImpl<T, BodyTooLong<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StringValueFailure f) exceedingLength,
    required TResult Function(T failedValue, int maxLength) bodyTooLong,
    required TResult Function() empty,
    required TResult Function(T failedValue) multiline,
    required TResult Function(T failedValue) nonPositivePrice,
  }) {
    return bodyTooLong(failedValue, maxLength);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(StringValueFailure f)? exceedingLength,
    TResult Function(T failedValue, int maxLength)? bodyTooLong,
    TResult Function()? empty,
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue)? nonPositivePrice,
  }) {
    return bodyTooLong?.call(failedValue, maxLength);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StringValueFailure f)? exceedingLength,
    TResult Function(T failedValue, int maxLength)? bodyTooLong,
    TResult Function()? empty,
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue)? nonPositivePrice,
    required TResult orElse(),
  }) {
    if (bodyTooLong != null) {
      return bodyTooLong(failedValue, maxLength);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(BodyTooLong<T> value) bodyTooLong,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(NonPositivePrice<T> value) nonPositivePrice,
  }) {
    return bodyTooLong(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(BodyTooLong<T> value)? bodyTooLong,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(NonPositivePrice<T> value)? nonPositivePrice,
  }) {
    return bodyTooLong?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(BodyTooLong<T> value)? bodyTooLong,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(NonPositivePrice<T> value)? nonPositivePrice,
    required TResult orElse(),
  }) {
    if (bodyTooLong != null) {
      return bodyTooLong(this);
    }
    return orElse();
  }
}

abstract class BodyTooLong<T> implements ProductValueFailure<T> {
  const factory BodyTooLong({required T failedValue, required int maxLength}) =
      _$BodyTooLong<T>;

  T get failedValue;
  int get maxLength;
  @JsonKey(ignore: true)
  $BodyTooLongCopyWith<T, BodyTooLong<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmptyCopyWith<T, $Res> {
  factory $EmptyCopyWith(Empty<T> value, $Res Function(Empty<T>) then) =
      _$EmptyCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$EmptyCopyWithImpl<T, $Res>
    extends _$ProductValueFailureCopyWithImpl<T, $Res>
    implements $EmptyCopyWith<T, $Res> {
  _$EmptyCopyWithImpl(Empty<T> _value, $Res Function(Empty<T>) _then)
      : super(_value, (v) => _then(v as Empty<T>));

  @override
  Empty<T> get _value => super._value as Empty<T>;
}

/// @nodoc

class _$Empty<T> implements Empty<T> {
  const _$Empty();

  @override
  String toString() {
    return 'ProductValueFailure<$T>.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Empty<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StringValueFailure f) exceedingLength,
    required TResult Function(T failedValue, int maxLength) bodyTooLong,
    required TResult Function() empty,
    required TResult Function(T failedValue) multiline,
    required TResult Function(T failedValue) nonPositivePrice,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(StringValueFailure f)? exceedingLength,
    TResult Function(T failedValue, int maxLength)? bodyTooLong,
    TResult Function()? empty,
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue)? nonPositivePrice,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StringValueFailure f)? exceedingLength,
    TResult Function(T failedValue, int maxLength)? bodyTooLong,
    TResult Function()? empty,
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue)? nonPositivePrice,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(BodyTooLong<T> value) bodyTooLong,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(NonPositivePrice<T> value) nonPositivePrice,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(BodyTooLong<T> value)? bodyTooLong,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(NonPositivePrice<T> value)? nonPositivePrice,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(BodyTooLong<T> value)? bodyTooLong,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(NonPositivePrice<T> value)? nonPositivePrice,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class Empty<T> implements ProductValueFailure<T> {
  const factory Empty() = _$Empty<T>;
}

/// @nodoc
abstract class $MultilineCopyWith<T, $Res> {
  factory $MultilineCopyWith(
          Multiline<T> value, $Res Function(Multiline<T>) then) =
      _$MultilineCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class _$MultilineCopyWithImpl<T, $Res>
    extends _$ProductValueFailureCopyWithImpl<T, $Res>
    implements $MultilineCopyWith<T, $Res> {
  _$MultilineCopyWithImpl(
      Multiline<T> _value, $Res Function(Multiline<T>) _then)
      : super(_value, (v) => _then(v as Multiline<T>));

  @override
  Multiline<T> get _value => super._value as Multiline<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(Multiline<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$Multiline<T> implements Multiline<T> {
  const _$Multiline({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ProductValueFailure<$T>.multiline(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Multiline<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  $MultilineCopyWith<T, Multiline<T>> get copyWith =>
      _$MultilineCopyWithImpl<T, Multiline<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StringValueFailure f) exceedingLength,
    required TResult Function(T failedValue, int maxLength) bodyTooLong,
    required TResult Function() empty,
    required TResult Function(T failedValue) multiline,
    required TResult Function(T failedValue) nonPositivePrice,
  }) {
    return multiline(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(StringValueFailure f)? exceedingLength,
    TResult Function(T failedValue, int maxLength)? bodyTooLong,
    TResult Function()? empty,
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue)? nonPositivePrice,
  }) {
    return multiline?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StringValueFailure f)? exceedingLength,
    TResult Function(T failedValue, int maxLength)? bodyTooLong,
    TResult Function()? empty,
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue)? nonPositivePrice,
    required TResult orElse(),
  }) {
    if (multiline != null) {
      return multiline(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(BodyTooLong<T> value) bodyTooLong,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(NonPositivePrice<T> value) nonPositivePrice,
  }) {
    return multiline(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(BodyTooLong<T> value)? bodyTooLong,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(NonPositivePrice<T> value)? nonPositivePrice,
  }) {
    return multiline?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(BodyTooLong<T> value)? bodyTooLong,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(NonPositivePrice<T> value)? nonPositivePrice,
    required TResult orElse(),
  }) {
    if (multiline != null) {
      return multiline(this);
    }
    return orElse();
  }
}

abstract class Multiline<T> implements ProductValueFailure<T> {
  const factory Multiline({required T failedValue}) = _$Multiline<T>;

  T get failedValue;
  @JsonKey(ignore: true)
  $MultilineCopyWith<T, Multiline<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NonPositivePriceCopyWith<T, $Res> {
  factory $NonPositivePriceCopyWith(
          NonPositivePrice<T> value, $Res Function(NonPositivePrice<T>) then) =
      _$NonPositivePriceCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class _$NonPositivePriceCopyWithImpl<T, $Res>
    extends _$ProductValueFailureCopyWithImpl<T, $Res>
    implements $NonPositivePriceCopyWith<T, $Res> {
  _$NonPositivePriceCopyWithImpl(
      NonPositivePrice<T> _value, $Res Function(NonPositivePrice<T>) _then)
      : super(_value, (v) => _then(v as NonPositivePrice<T>));

  @override
  NonPositivePrice<T> get _value => super._value as NonPositivePrice<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(NonPositivePrice<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$NonPositivePrice<T> implements NonPositivePrice<T> {
  const _$NonPositivePrice({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ProductValueFailure<$T>.nonPositivePrice(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NonPositivePrice<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  $NonPositivePriceCopyWith<T, NonPositivePrice<T>> get copyWith =>
      _$NonPositivePriceCopyWithImpl<T, NonPositivePrice<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StringValueFailure f) exceedingLength,
    required TResult Function(T failedValue, int maxLength) bodyTooLong,
    required TResult Function() empty,
    required TResult Function(T failedValue) multiline,
    required TResult Function(T failedValue) nonPositivePrice,
  }) {
    return nonPositivePrice(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(StringValueFailure f)? exceedingLength,
    TResult Function(T failedValue, int maxLength)? bodyTooLong,
    TResult Function()? empty,
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue)? nonPositivePrice,
  }) {
    return nonPositivePrice?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StringValueFailure f)? exceedingLength,
    TResult Function(T failedValue, int maxLength)? bodyTooLong,
    TResult Function()? empty,
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue)? nonPositivePrice,
    required TResult orElse(),
  }) {
    if (nonPositivePrice != null) {
      return nonPositivePrice(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(BodyTooLong<T> value) bodyTooLong,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(NonPositivePrice<T> value) nonPositivePrice,
  }) {
    return nonPositivePrice(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(BodyTooLong<T> value)? bodyTooLong,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(NonPositivePrice<T> value)? nonPositivePrice,
  }) {
    return nonPositivePrice?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(BodyTooLong<T> value)? bodyTooLong,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(NonPositivePrice<T> value)? nonPositivePrice,
    required TResult orElse(),
  }) {
    if (nonPositivePrice != null) {
      return nonPositivePrice(this);
    }
    return orElse();
  }
}

abstract class NonPositivePrice<T> implements ProductValueFailure<T> {
  const factory NonPositivePrice({required T failedValue}) =
      _$NonPositivePrice<T>;

  T get failedValue;
  @JsonKey(ignore: true)
  $NonPositivePriceCopyWith<T, NonPositivePrice<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$StringValueFailureTearOff {
  const _$StringValueFailureTearOff();

  StringTooLong stringTooLong(
      {required String failedValue, required int maxLength}) {
    return StringTooLong(
      failedValue: failedValue,
      maxLength: maxLength,
    );
  }
}

/// @nodoc
const $StringValueFailure = _$StringValueFailureTearOff();

/// @nodoc
mixin _$StringValueFailure {
  String get failedValue => throw _privateConstructorUsedError;
  int get maxLength => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue, int maxLength) stringTooLong,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String failedValue, int maxLength)? stringTooLong,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue, int maxLength)? stringTooLong,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StringTooLong value) stringTooLong,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StringTooLong value)? stringTooLong,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StringTooLong value)? stringTooLong,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StringValueFailureCopyWith<StringValueFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StringValueFailureCopyWith<$Res> {
  factory $StringValueFailureCopyWith(
          StringValueFailure value, $Res Function(StringValueFailure) then) =
      _$StringValueFailureCopyWithImpl<$Res>;
  $Res call({String failedValue, int maxLength});
}

/// @nodoc
class _$StringValueFailureCopyWithImpl<$Res>
    implements $StringValueFailureCopyWith<$Res> {
  _$StringValueFailureCopyWithImpl(this._value, this._then);

  final StringValueFailure _value;
  // ignore: unused_field
  final $Res Function(StringValueFailure) _then;

  @override
  $Res call({
    Object? failedValue = freezed,
    Object? maxLength = freezed,
  }) {
    return _then(_value.copyWith(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String,
      maxLength: maxLength == freezed
          ? _value.maxLength
          : maxLength // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class $StringTooLongCopyWith<$Res>
    implements $StringValueFailureCopyWith<$Res> {
  factory $StringTooLongCopyWith(
          StringTooLong value, $Res Function(StringTooLong) then) =
      _$StringTooLongCopyWithImpl<$Res>;
  @override
  $Res call({String failedValue, int maxLength});
}

/// @nodoc
class _$StringTooLongCopyWithImpl<$Res>
    extends _$StringValueFailureCopyWithImpl<$Res>
    implements $StringTooLongCopyWith<$Res> {
  _$StringTooLongCopyWithImpl(
      StringTooLong _value, $Res Function(StringTooLong) _then)
      : super(_value, (v) => _then(v as StringTooLong));

  @override
  StringTooLong get _value => super._value as StringTooLong;

  @override
  $Res call({
    Object? failedValue = freezed,
    Object? maxLength = freezed,
  }) {
    return _then(StringTooLong(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String,
      maxLength: maxLength == freezed
          ? _value.maxLength
          : maxLength // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$StringTooLong implements StringTooLong {
  const _$StringTooLong({required this.failedValue, required this.maxLength});

  @override
  final String failedValue;
  @override
  final int maxLength;

  @override
  String toString() {
    return 'StringValueFailure.stringTooLong(failedValue: $failedValue, maxLength: $maxLength)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StringTooLong &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue) &&
            const DeepCollectionEquality().equals(other.maxLength, maxLength));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(failedValue),
      const DeepCollectionEquality().hash(maxLength));

  @JsonKey(ignore: true)
  @override
  $StringTooLongCopyWith<StringTooLong> get copyWith =>
      _$StringTooLongCopyWithImpl<StringTooLong>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue, int maxLength) stringTooLong,
  }) {
    return stringTooLong(failedValue, maxLength);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String failedValue, int maxLength)? stringTooLong,
  }) {
    return stringTooLong?.call(failedValue, maxLength);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue, int maxLength)? stringTooLong,
    required TResult orElse(),
  }) {
    if (stringTooLong != null) {
      return stringTooLong(failedValue, maxLength);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StringTooLong value) stringTooLong,
  }) {
    return stringTooLong(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StringTooLong value)? stringTooLong,
  }) {
    return stringTooLong?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StringTooLong value)? stringTooLong,
    required TResult orElse(),
  }) {
    if (stringTooLong != null) {
      return stringTooLong(this);
    }
    return orElse();
  }
}

abstract class StringTooLong implements StringValueFailure {
  const factory StringTooLong(
      {required String failedValue, required int maxLength}) = _$StringTooLong;

  @override
  String get failedValue;
  @override
  int get maxLength;
  @override
  @JsonKey(ignore: true)
  $StringTooLongCopyWith<StringTooLong> get copyWith =>
      throw _privateConstructorUsedError;
}
