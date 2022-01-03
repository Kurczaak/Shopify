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

  _Product<T> product<T>(ShoppingValueFailure<T> f) {
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
    required TResult Function(ShoppingValueFailure<T> f) product,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AuthValueFailure<T> f)? auth,
    TResult Function(ShoppingValueFailure<T> f)? product,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthValueFailure<T> f)? auth,
    TResult Function(ShoppingValueFailure<T> f)? product,
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
    required TResult Function(ShoppingValueFailure<T> f) product,
  }) {
    return auth(f);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AuthValueFailure<T> f)? auth,
    TResult Function(ShoppingValueFailure<T> f)? product,
  }) {
    return auth?.call(f);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthValueFailure<T> f)? auth,
    TResult Function(ShoppingValueFailure<T> f)? product,
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
    required TResult Function(ShoppingValueFailure<T> f) product,
  }) {
    return product(f);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AuthValueFailure<T> f)? auth,
    TResult Function(ShoppingValueFailure<T> f)? product,
  }) {
    return product?.call(f);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthValueFailure<T> f)? auth,
    TResult Function(ShoppingValueFailure<T> f)? product,
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
  const factory _Product(ShoppingValueFailure<T> f) = _$_Product<T>;

  ShoppingValueFailure<T> get f;
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
class _$ShoppingValueFailureTearOff {
  const _$ShoppingValueFailureTearOff();

  ExceedingLength<T> exceedingLength<T>(
      {required T failedValue, required int maxLength}) {
    return ExceedingLength<T>(
      failedValue: failedValue,
      maxLength: maxLength,
    );
  }

  Empty<T> empty<T>({required T failedValue}) {
    return Empty<T>(
      failedValue: failedValue,
    );
  }

  Multiline<T> multiline<T>({required T failedValue}) {
    return Multiline<T>(
      failedValue: failedValue,
    );
  }

  IncorrectPostalCode<T> incorrectPostalCode<T>({required T failedValue}) {
    return IncorrectPostalCode<T>(
      failedValue: failedValue,
    );
  }

  ShopClosedAllWeekLong<T> shopClosedAllWeekLong<T>({required T failedValue}) {
    return ShopClosedAllWeekLong<T>(
      failedValue: failedValue,
    );
  }

  NoPhotoSelected<T> noPhotoSelected<T>({required T failedValue}) {
    return NoPhotoSelected<T>(
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
const $ShoppingValueFailure = _$ShoppingValueFailureTearOff();

/// @nodoc
mixin _$ShoppingValueFailure<T> {
  T get failedValue => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int maxLength) exceedingLength,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) multiline,
    required TResult Function(T failedValue) incorrectPostalCode,
    required TResult Function(T failedValue) shopClosedAllWeekLong,
    required TResult Function(T failedValue) noPhotoSelected,
    required TResult Function(T failedValue) nonPositivePrice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue)? incorrectPostalCode,
    TResult Function(T failedValue)? shopClosedAllWeekLong,
    TResult Function(T failedValue)? noPhotoSelected,
    TResult Function(T failedValue)? nonPositivePrice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue)? incorrectPostalCode,
    TResult Function(T failedValue)? shopClosedAllWeekLong,
    TResult Function(T failedValue)? noPhotoSelected,
    TResult Function(T failedValue)? nonPositivePrice,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(IncorrectPostalCode<T> value) incorrectPostalCode,
    required TResult Function(ShopClosedAllWeekLong<T> value)
        shopClosedAllWeekLong,
    required TResult Function(NoPhotoSelected<T> value) noPhotoSelected,
    required TResult Function(NonPositivePrice<T> value) nonPositivePrice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(IncorrectPostalCode<T> value)? incorrectPostalCode,
    TResult Function(ShopClosedAllWeekLong<T> value)? shopClosedAllWeekLong,
    TResult Function(NoPhotoSelected<T> value)? noPhotoSelected,
    TResult Function(NonPositivePrice<T> value)? nonPositivePrice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(IncorrectPostalCode<T> value)? incorrectPostalCode,
    TResult Function(ShopClosedAllWeekLong<T> value)? shopClosedAllWeekLong,
    TResult Function(NoPhotoSelected<T> value)? noPhotoSelected,
    TResult Function(NonPositivePrice<T> value)? nonPositivePrice,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShoppingValueFailureCopyWith<T, ShoppingValueFailure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShoppingValueFailureCopyWith<T, $Res> {
  factory $ShoppingValueFailureCopyWith(ShoppingValueFailure<T> value,
          $Res Function(ShoppingValueFailure<T>) then) =
      _$ShoppingValueFailureCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class _$ShoppingValueFailureCopyWithImpl<T, $Res>
    implements $ShoppingValueFailureCopyWith<T, $Res> {
  _$ShoppingValueFailureCopyWithImpl(this._value, this._then);

  final ShoppingValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(ShoppingValueFailure<T>) _then;

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
abstract class $ExceedingLengthCopyWith<T, $Res>
    implements $ShoppingValueFailureCopyWith<T, $Res> {
  factory $ExceedingLengthCopyWith(
          ExceedingLength<T> value, $Res Function(ExceedingLength<T>) then) =
      _$ExceedingLengthCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue, int maxLength});
}

/// @nodoc
class _$ExceedingLengthCopyWithImpl<T, $Res>
    extends _$ShoppingValueFailureCopyWithImpl<T, $Res>
    implements $ExceedingLengthCopyWith<T, $Res> {
  _$ExceedingLengthCopyWithImpl(
      ExceedingLength<T> _value, $Res Function(ExceedingLength<T>) _then)
      : super(_value, (v) => _then(v as ExceedingLength<T>));

  @override
  ExceedingLength<T> get _value => super._value as ExceedingLength<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
    Object? maxLength = freezed,
  }) {
    return _then(ExceedingLength<T>(
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

class _$ExceedingLength<T> implements ExceedingLength<T> {
  const _$ExceedingLength({required this.failedValue, required this.maxLength});

  @override
  final T failedValue;
  @override
  final int maxLength;

  @override
  String toString() {
    return 'ShoppingValueFailure<$T>.exceedingLength(failedValue: $failedValue, maxLength: $maxLength)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ExceedingLength<T> &&
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
  $ExceedingLengthCopyWith<T, ExceedingLength<T>> get copyWith =>
      _$ExceedingLengthCopyWithImpl<T, ExceedingLength<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int maxLength) exceedingLength,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) multiline,
    required TResult Function(T failedValue) incorrectPostalCode,
    required TResult Function(T failedValue) shopClosedAllWeekLong,
    required TResult Function(T failedValue) noPhotoSelected,
    required TResult Function(T failedValue) nonPositivePrice,
  }) {
    return exceedingLength(failedValue, maxLength);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue)? incorrectPostalCode,
    TResult Function(T failedValue)? shopClosedAllWeekLong,
    TResult Function(T failedValue)? noPhotoSelected,
    TResult Function(T failedValue)? nonPositivePrice,
  }) {
    return exceedingLength?.call(failedValue, maxLength);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue)? incorrectPostalCode,
    TResult Function(T failedValue)? shopClosedAllWeekLong,
    TResult Function(T failedValue)? noPhotoSelected,
    TResult Function(T failedValue)? nonPositivePrice,
    required TResult orElse(),
  }) {
    if (exceedingLength != null) {
      return exceedingLength(failedValue, maxLength);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(IncorrectPostalCode<T> value) incorrectPostalCode,
    required TResult Function(ShopClosedAllWeekLong<T> value)
        shopClosedAllWeekLong,
    required TResult Function(NoPhotoSelected<T> value) noPhotoSelected,
    required TResult Function(NonPositivePrice<T> value) nonPositivePrice,
  }) {
    return exceedingLength(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(IncorrectPostalCode<T> value)? incorrectPostalCode,
    TResult Function(ShopClosedAllWeekLong<T> value)? shopClosedAllWeekLong,
    TResult Function(NoPhotoSelected<T> value)? noPhotoSelected,
    TResult Function(NonPositivePrice<T> value)? nonPositivePrice,
  }) {
    return exceedingLength?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(IncorrectPostalCode<T> value)? incorrectPostalCode,
    TResult Function(ShopClosedAllWeekLong<T> value)? shopClosedAllWeekLong,
    TResult Function(NoPhotoSelected<T> value)? noPhotoSelected,
    TResult Function(NonPositivePrice<T> value)? nonPositivePrice,
    required TResult orElse(),
  }) {
    if (exceedingLength != null) {
      return exceedingLength(this);
    }
    return orElse();
  }
}

abstract class ExceedingLength<T> implements ShoppingValueFailure<T> {
  const factory ExceedingLength(
      {required T failedValue, required int maxLength}) = _$ExceedingLength<T>;

  @override
  T get failedValue;
  int get maxLength;
  @override
  @JsonKey(ignore: true)
  $ExceedingLengthCopyWith<T, ExceedingLength<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmptyCopyWith<T, $Res>
    implements $ShoppingValueFailureCopyWith<T, $Res> {
  factory $EmptyCopyWith(Empty<T> value, $Res Function(Empty<T>) then) =
      _$EmptyCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$EmptyCopyWithImpl<T, $Res>
    extends _$ShoppingValueFailureCopyWithImpl<T, $Res>
    implements $EmptyCopyWith<T, $Res> {
  _$EmptyCopyWithImpl(Empty<T> _value, $Res Function(Empty<T>) _then)
      : super(_value, (v) => _then(v as Empty<T>));

  @override
  Empty<T> get _value => super._value as Empty<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(Empty<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$Empty<T> implements Empty<T> {
  const _$Empty({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ShoppingValueFailure<$T>.empty(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Empty<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  $EmptyCopyWith<T, Empty<T>> get copyWith =>
      _$EmptyCopyWithImpl<T, Empty<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int maxLength) exceedingLength,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) multiline,
    required TResult Function(T failedValue) incorrectPostalCode,
    required TResult Function(T failedValue) shopClosedAllWeekLong,
    required TResult Function(T failedValue) noPhotoSelected,
    required TResult Function(T failedValue) nonPositivePrice,
  }) {
    return empty(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue)? incorrectPostalCode,
    TResult Function(T failedValue)? shopClosedAllWeekLong,
    TResult Function(T failedValue)? noPhotoSelected,
    TResult Function(T failedValue)? nonPositivePrice,
  }) {
    return empty?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue)? incorrectPostalCode,
    TResult Function(T failedValue)? shopClosedAllWeekLong,
    TResult Function(T failedValue)? noPhotoSelected,
    TResult Function(T failedValue)? nonPositivePrice,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(IncorrectPostalCode<T> value) incorrectPostalCode,
    required TResult Function(ShopClosedAllWeekLong<T> value)
        shopClosedAllWeekLong,
    required TResult Function(NoPhotoSelected<T> value) noPhotoSelected,
    required TResult Function(NonPositivePrice<T> value) nonPositivePrice,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(IncorrectPostalCode<T> value)? incorrectPostalCode,
    TResult Function(ShopClosedAllWeekLong<T> value)? shopClosedAllWeekLong,
    TResult Function(NoPhotoSelected<T> value)? noPhotoSelected,
    TResult Function(NonPositivePrice<T> value)? nonPositivePrice,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(IncorrectPostalCode<T> value)? incorrectPostalCode,
    TResult Function(ShopClosedAllWeekLong<T> value)? shopClosedAllWeekLong,
    TResult Function(NoPhotoSelected<T> value)? noPhotoSelected,
    TResult Function(NonPositivePrice<T> value)? nonPositivePrice,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class Empty<T> implements ShoppingValueFailure<T> {
  const factory Empty({required T failedValue}) = _$Empty<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  $EmptyCopyWith<T, Empty<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MultilineCopyWith<T, $Res>
    implements $ShoppingValueFailureCopyWith<T, $Res> {
  factory $MultilineCopyWith(
          Multiline<T> value, $Res Function(Multiline<T>) then) =
      _$MultilineCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$MultilineCopyWithImpl<T, $Res>
    extends _$ShoppingValueFailureCopyWithImpl<T, $Res>
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
    return 'ShoppingValueFailure<$T>.multiline(failedValue: $failedValue)';
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
    required TResult Function(T failedValue, int maxLength) exceedingLength,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) multiline,
    required TResult Function(T failedValue) incorrectPostalCode,
    required TResult Function(T failedValue) shopClosedAllWeekLong,
    required TResult Function(T failedValue) noPhotoSelected,
    required TResult Function(T failedValue) nonPositivePrice,
  }) {
    return multiline(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue)? incorrectPostalCode,
    TResult Function(T failedValue)? shopClosedAllWeekLong,
    TResult Function(T failedValue)? noPhotoSelected,
    TResult Function(T failedValue)? nonPositivePrice,
  }) {
    return multiline?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue)? incorrectPostalCode,
    TResult Function(T failedValue)? shopClosedAllWeekLong,
    TResult Function(T failedValue)? noPhotoSelected,
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
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(IncorrectPostalCode<T> value) incorrectPostalCode,
    required TResult Function(ShopClosedAllWeekLong<T> value)
        shopClosedAllWeekLong,
    required TResult Function(NoPhotoSelected<T> value) noPhotoSelected,
    required TResult Function(NonPositivePrice<T> value) nonPositivePrice,
  }) {
    return multiline(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(IncorrectPostalCode<T> value)? incorrectPostalCode,
    TResult Function(ShopClosedAllWeekLong<T> value)? shopClosedAllWeekLong,
    TResult Function(NoPhotoSelected<T> value)? noPhotoSelected,
    TResult Function(NonPositivePrice<T> value)? nonPositivePrice,
  }) {
    return multiline?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(IncorrectPostalCode<T> value)? incorrectPostalCode,
    TResult Function(ShopClosedAllWeekLong<T> value)? shopClosedAllWeekLong,
    TResult Function(NoPhotoSelected<T> value)? noPhotoSelected,
    TResult Function(NonPositivePrice<T> value)? nonPositivePrice,
    required TResult orElse(),
  }) {
    if (multiline != null) {
      return multiline(this);
    }
    return orElse();
  }
}

abstract class Multiline<T> implements ShoppingValueFailure<T> {
  const factory Multiline({required T failedValue}) = _$Multiline<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  $MultilineCopyWith<T, Multiline<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IncorrectPostalCodeCopyWith<T, $Res>
    implements $ShoppingValueFailureCopyWith<T, $Res> {
  factory $IncorrectPostalCodeCopyWith(IncorrectPostalCode<T> value,
          $Res Function(IncorrectPostalCode<T>) then) =
      _$IncorrectPostalCodeCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$IncorrectPostalCodeCopyWithImpl<T, $Res>
    extends _$ShoppingValueFailureCopyWithImpl<T, $Res>
    implements $IncorrectPostalCodeCopyWith<T, $Res> {
  _$IncorrectPostalCodeCopyWithImpl(IncorrectPostalCode<T> _value,
      $Res Function(IncorrectPostalCode<T>) _then)
      : super(_value, (v) => _then(v as IncorrectPostalCode<T>));

  @override
  IncorrectPostalCode<T> get _value => super._value as IncorrectPostalCode<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(IncorrectPostalCode<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$IncorrectPostalCode<T> implements IncorrectPostalCode<T> {
  const _$IncorrectPostalCode({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ShoppingValueFailure<$T>.incorrectPostalCode(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is IncorrectPostalCode<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  $IncorrectPostalCodeCopyWith<T, IncorrectPostalCode<T>> get copyWith =>
      _$IncorrectPostalCodeCopyWithImpl<T, IncorrectPostalCode<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int maxLength) exceedingLength,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) multiline,
    required TResult Function(T failedValue) incorrectPostalCode,
    required TResult Function(T failedValue) shopClosedAllWeekLong,
    required TResult Function(T failedValue) noPhotoSelected,
    required TResult Function(T failedValue) nonPositivePrice,
  }) {
    return incorrectPostalCode(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue)? incorrectPostalCode,
    TResult Function(T failedValue)? shopClosedAllWeekLong,
    TResult Function(T failedValue)? noPhotoSelected,
    TResult Function(T failedValue)? nonPositivePrice,
  }) {
    return incorrectPostalCode?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue)? incorrectPostalCode,
    TResult Function(T failedValue)? shopClosedAllWeekLong,
    TResult Function(T failedValue)? noPhotoSelected,
    TResult Function(T failedValue)? nonPositivePrice,
    required TResult orElse(),
  }) {
    if (incorrectPostalCode != null) {
      return incorrectPostalCode(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(IncorrectPostalCode<T> value) incorrectPostalCode,
    required TResult Function(ShopClosedAllWeekLong<T> value)
        shopClosedAllWeekLong,
    required TResult Function(NoPhotoSelected<T> value) noPhotoSelected,
    required TResult Function(NonPositivePrice<T> value) nonPositivePrice,
  }) {
    return incorrectPostalCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(IncorrectPostalCode<T> value)? incorrectPostalCode,
    TResult Function(ShopClosedAllWeekLong<T> value)? shopClosedAllWeekLong,
    TResult Function(NoPhotoSelected<T> value)? noPhotoSelected,
    TResult Function(NonPositivePrice<T> value)? nonPositivePrice,
  }) {
    return incorrectPostalCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(IncorrectPostalCode<T> value)? incorrectPostalCode,
    TResult Function(ShopClosedAllWeekLong<T> value)? shopClosedAllWeekLong,
    TResult Function(NoPhotoSelected<T> value)? noPhotoSelected,
    TResult Function(NonPositivePrice<T> value)? nonPositivePrice,
    required TResult orElse(),
  }) {
    if (incorrectPostalCode != null) {
      return incorrectPostalCode(this);
    }
    return orElse();
  }
}

abstract class IncorrectPostalCode<T> implements ShoppingValueFailure<T> {
  const factory IncorrectPostalCode({required T failedValue}) =
      _$IncorrectPostalCode<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  $IncorrectPostalCodeCopyWith<T, IncorrectPostalCode<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopClosedAllWeekLongCopyWith<T, $Res>
    implements $ShoppingValueFailureCopyWith<T, $Res> {
  factory $ShopClosedAllWeekLongCopyWith(ShopClosedAllWeekLong<T> value,
          $Res Function(ShopClosedAllWeekLong<T>) then) =
      _$ShopClosedAllWeekLongCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$ShopClosedAllWeekLongCopyWithImpl<T, $Res>
    extends _$ShoppingValueFailureCopyWithImpl<T, $Res>
    implements $ShopClosedAllWeekLongCopyWith<T, $Res> {
  _$ShopClosedAllWeekLongCopyWithImpl(ShopClosedAllWeekLong<T> _value,
      $Res Function(ShopClosedAllWeekLong<T>) _then)
      : super(_value, (v) => _then(v as ShopClosedAllWeekLong<T>));

  @override
  ShopClosedAllWeekLong<T> get _value =>
      super._value as ShopClosedAllWeekLong<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(ShopClosedAllWeekLong<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$ShopClosedAllWeekLong<T> implements ShopClosedAllWeekLong<T> {
  const _$ShopClosedAllWeekLong({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ShoppingValueFailure<$T>.shopClosedAllWeekLong(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ShopClosedAllWeekLong<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  $ShopClosedAllWeekLongCopyWith<T, ShopClosedAllWeekLong<T>> get copyWith =>
      _$ShopClosedAllWeekLongCopyWithImpl<T, ShopClosedAllWeekLong<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int maxLength) exceedingLength,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) multiline,
    required TResult Function(T failedValue) incorrectPostalCode,
    required TResult Function(T failedValue) shopClosedAllWeekLong,
    required TResult Function(T failedValue) noPhotoSelected,
    required TResult Function(T failedValue) nonPositivePrice,
  }) {
    return shopClosedAllWeekLong(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue)? incorrectPostalCode,
    TResult Function(T failedValue)? shopClosedAllWeekLong,
    TResult Function(T failedValue)? noPhotoSelected,
    TResult Function(T failedValue)? nonPositivePrice,
  }) {
    return shopClosedAllWeekLong?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue)? incorrectPostalCode,
    TResult Function(T failedValue)? shopClosedAllWeekLong,
    TResult Function(T failedValue)? noPhotoSelected,
    TResult Function(T failedValue)? nonPositivePrice,
    required TResult orElse(),
  }) {
    if (shopClosedAllWeekLong != null) {
      return shopClosedAllWeekLong(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(IncorrectPostalCode<T> value) incorrectPostalCode,
    required TResult Function(ShopClosedAllWeekLong<T> value)
        shopClosedAllWeekLong,
    required TResult Function(NoPhotoSelected<T> value) noPhotoSelected,
    required TResult Function(NonPositivePrice<T> value) nonPositivePrice,
  }) {
    return shopClosedAllWeekLong(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(IncorrectPostalCode<T> value)? incorrectPostalCode,
    TResult Function(ShopClosedAllWeekLong<T> value)? shopClosedAllWeekLong,
    TResult Function(NoPhotoSelected<T> value)? noPhotoSelected,
    TResult Function(NonPositivePrice<T> value)? nonPositivePrice,
  }) {
    return shopClosedAllWeekLong?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(IncorrectPostalCode<T> value)? incorrectPostalCode,
    TResult Function(ShopClosedAllWeekLong<T> value)? shopClosedAllWeekLong,
    TResult Function(NoPhotoSelected<T> value)? noPhotoSelected,
    TResult Function(NonPositivePrice<T> value)? nonPositivePrice,
    required TResult orElse(),
  }) {
    if (shopClosedAllWeekLong != null) {
      return shopClosedAllWeekLong(this);
    }
    return orElse();
  }
}

abstract class ShopClosedAllWeekLong<T> implements ShoppingValueFailure<T> {
  const factory ShopClosedAllWeekLong({required T failedValue}) =
      _$ShopClosedAllWeekLong<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  $ShopClosedAllWeekLongCopyWith<T, ShopClosedAllWeekLong<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoPhotoSelectedCopyWith<T, $Res>
    implements $ShoppingValueFailureCopyWith<T, $Res> {
  factory $NoPhotoSelectedCopyWith(
          NoPhotoSelected<T> value, $Res Function(NoPhotoSelected<T>) then) =
      _$NoPhotoSelectedCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$NoPhotoSelectedCopyWithImpl<T, $Res>
    extends _$ShoppingValueFailureCopyWithImpl<T, $Res>
    implements $NoPhotoSelectedCopyWith<T, $Res> {
  _$NoPhotoSelectedCopyWithImpl(
      NoPhotoSelected<T> _value, $Res Function(NoPhotoSelected<T>) _then)
      : super(_value, (v) => _then(v as NoPhotoSelected<T>));

  @override
  NoPhotoSelected<T> get _value => super._value as NoPhotoSelected<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(NoPhotoSelected<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$NoPhotoSelected<T> implements NoPhotoSelected<T> {
  const _$NoPhotoSelected({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ShoppingValueFailure<$T>.noPhotoSelected(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NoPhotoSelected<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  $NoPhotoSelectedCopyWith<T, NoPhotoSelected<T>> get copyWith =>
      _$NoPhotoSelectedCopyWithImpl<T, NoPhotoSelected<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int maxLength) exceedingLength,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) multiline,
    required TResult Function(T failedValue) incorrectPostalCode,
    required TResult Function(T failedValue) shopClosedAllWeekLong,
    required TResult Function(T failedValue) noPhotoSelected,
    required TResult Function(T failedValue) nonPositivePrice,
  }) {
    return noPhotoSelected(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue)? incorrectPostalCode,
    TResult Function(T failedValue)? shopClosedAllWeekLong,
    TResult Function(T failedValue)? noPhotoSelected,
    TResult Function(T failedValue)? nonPositivePrice,
  }) {
    return noPhotoSelected?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue)? incorrectPostalCode,
    TResult Function(T failedValue)? shopClosedAllWeekLong,
    TResult Function(T failedValue)? noPhotoSelected,
    TResult Function(T failedValue)? nonPositivePrice,
    required TResult orElse(),
  }) {
    if (noPhotoSelected != null) {
      return noPhotoSelected(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(IncorrectPostalCode<T> value) incorrectPostalCode,
    required TResult Function(ShopClosedAllWeekLong<T> value)
        shopClosedAllWeekLong,
    required TResult Function(NoPhotoSelected<T> value) noPhotoSelected,
    required TResult Function(NonPositivePrice<T> value) nonPositivePrice,
  }) {
    return noPhotoSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(IncorrectPostalCode<T> value)? incorrectPostalCode,
    TResult Function(ShopClosedAllWeekLong<T> value)? shopClosedAllWeekLong,
    TResult Function(NoPhotoSelected<T> value)? noPhotoSelected,
    TResult Function(NonPositivePrice<T> value)? nonPositivePrice,
  }) {
    return noPhotoSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(IncorrectPostalCode<T> value)? incorrectPostalCode,
    TResult Function(ShopClosedAllWeekLong<T> value)? shopClosedAllWeekLong,
    TResult Function(NoPhotoSelected<T> value)? noPhotoSelected,
    TResult Function(NonPositivePrice<T> value)? nonPositivePrice,
    required TResult orElse(),
  }) {
    if (noPhotoSelected != null) {
      return noPhotoSelected(this);
    }
    return orElse();
  }
}

abstract class NoPhotoSelected<T> implements ShoppingValueFailure<T> {
  const factory NoPhotoSelected({required T failedValue}) =
      _$NoPhotoSelected<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  $NoPhotoSelectedCopyWith<T, NoPhotoSelected<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NonPositivePriceCopyWith<T, $Res>
    implements $ShoppingValueFailureCopyWith<T, $Res> {
  factory $NonPositivePriceCopyWith(
          NonPositivePrice<T> value, $Res Function(NonPositivePrice<T>) then) =
      _$NonPositivePriceCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$NonPositivePriceCopyWithImpl<T, $Res>
    extends _$ShoppingValueFailureCopyWithImpl<T, $Res>
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
    return 'ShoppingValueFailure<$T>.nonPositivePrice(failedValue: $failedValue)';
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
    required TResult Function(T failedValue, int maxLength) exceedingLength,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) multiline,
    required TResult Function(T failedValue) incorrectPostalCode,
    required TResult Function(T failedValue) shopClosedAllWeekLong,
    required TResult Function(T failedValue) noPhotoSelected,
    required TResult Function(T failedValue) nonPositivePrice,
  }) {
    return nonPositivePrice(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue)? incorrectPostalCode,
    TResult Function(T failedValue)? shopClosedAllWeekLong,
    TResult Function(T failedValue)? noPhotoSelected,
    TResult Function(T failedValue)? nonPositivePrice,
  }) {
    return nonPositivePrice?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue)? incorrectPostalCode,
    TResult Function(T failedValue)? shopClosedAllWeekLong,
    TResult Function(T failedValue)? noPhotoSelected,
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
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(IncorrectPostalCode<T> value) incorrectPostalCode,
    required TResult Function(ShopClosedAllWeekLong<T> value)
        shopClosedAllWeekLong,
    required TResult Function(NoPhotoSelected<T> value) noPhotoSelected,
    required TResult Function(NonPositivePrice<T> value) nonPositivePrice,
  }) {
    return nonPositivePrice(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(IncorrectPostalCode<T> value)? incorrectPostalCode,
    TResult Function(ShopClosedAllWeekLong<T> value)? shopClosedAllWeekLong,
    TResult Function(NoPhotoSelected<T> value)? noPhotoSelected,
    TResult Function(NonPositivePrice<T> value)? nonPositivePrice,
  }) {
    return nonPositivePrice?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(IncorrectPostalCode<T> value)? incorrectPostalCode,
    TResult Function(ShopClosedAllWeekLong<T> value)? shopClosedAllWeekLong,
    TResult Function(NoPhotoSelected<T> value)? noPhotoSelected,
    TResult Function(NonPositivePrice<T> value)? nonPositivePrice,
    required TResult orElse(),
  }) {
    if (nonPositivePrice != null) {
      return nonPositivePrice(this);
    }
    return orElse();
  }
}

abstract class NonPositivePrice<T> implements ShoppingValueFailure<T> {
  const factory NonPositivePrice({required T failedValue}) =
      _$NonPositivePrice<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  $NonPositivePriceCopyWith<T, NonPositivePrice<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
