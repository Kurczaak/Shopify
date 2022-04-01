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

  _Shop<T> shop<T>(ShopValueFailure<T> f) {
    return _Shop<T>(
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
    required TResult Function(ShopValueFailure<T> f) shop,
    required TResult Function(ProductValueFailure<T> f) product,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AuthValueFailure<T> f)? auth,
    TResult Function(ShopValueFailure<T> f)? shop,
    TResult Function(ProductValueFailure<T> f)? product,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthValueFailure<T> f)? auth,
    TResult Function(ShopValueFailure<T> f)? shop,
    TResult Function(ProductValueFailure<T> f)? product,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Auth<T> value) auth,
    required TResult Function(_Shop<T> value) shop,
    required TResult Function(_Product<T> value) product,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Auth<T> value)? auth,
    TResult Function(_Shop<T> value)? shop,
    TResult Function(_Product<T> value)? product,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Auth<T> value)? auth,
    TResult Function(_Shop<T> value)? shop,
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
    required TResult Function(ShopValueFailure<T> f) shop,
    required TResult Function(ProductValueFailure<T> f) product,
  }) {
    return auth(f);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AuthValueFailure<T> f)? auth,
    TResult Function(ShopValueFailure<T> f)? shop,
    TResult Function(ProductValueFailure<T> f)? product,
  }) {
    return auth?.call(f);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthValueFailure<T> f)? auth,
    TResult Function(ShopValueFailure<T> f)? shop,
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
    required TResult Function(_Shop<T> value) shop,
    required TResult Function(_Product<T> value) product,
  }) {
    return auth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Auth<T> value)? auth,
    TResult Function(_Shop<T> value)? shop,
    TResult Function(_Product<T> value)? product,
  }) {
    return auth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Auth<T> value)? auth,
    TResult Function(_Shop<T> value)? shop,
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
abstract class _$ShopCopyWith<T, $Res> {
  factory _$ShopCopyWith(_Shop<T> value, $Res Function(_Shop<T>) then) =
      __$ShopCopyWithImpl<T, $Res>;
  $Res call({ShopValueFailure<T> f});

  $ShopValueFailureCopyWith<T, $Res> get f;
}

/// @nodoc
class __$ShopCopyWithImpl<T, $Res> extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$ShopCopyWith<T, $Res> {
  __$ShopCopyWithImpl(_Shop<T> _value, $Res Function(_Shop<T>) _then)
      : super(_value, (v) => _then(v as _Shop<T>));

  @override
  _Shop<T> get _value => super._value as _Shop<T>;

  @override
  $Res call({
    Object? f = freezed,
  }) {
    return _then(_Shop<T>(
      f == freezed
          ? _value.f
          : f // ignore: cast_nullable_to_non_nullable
              as ShopValueFailure<T>,
    ));
  }

  @override
  $ShopValueFailureCopyWith<T, $Res> get f {
    return $ShopValueFailureCopyWith<T, $Res>(_value.f, (value) {
      return _then(_value.copyWith(f: value));
    });
  }
}

/// @nodoc

class _$_Shop<T> implements _Shop<T> {
  const _$_Shop(this.f);

  @override
  final ShopValueFailure<T> f;

  @override
  String toString() {
    return 'ValueFailure<$T>.shop(f: $f)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Shop<T> &&
            const DeepCollectionEquality().equals(other.f, f));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(f));

  @JsonKey(ignore: true)
  @override
  _$ShopCopyWith<T, _Shop<T>> get copyWith =>
      __$ShopCopyWithImpl<T, _Shop<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthValueFailure<T> f) auth,
    required TResult Function(ShopValueFailure<T> f) shop,
    required TResult Function(ProductValueFailure<T> f) product,
  }) {
    return shop(f);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AuthValueFailure<T> f)? auth,
    TResult Function(ShopValueFailure<T> f)? shop,
    TResult Function(ProductValueFailure<T> f)? product,
  }) {
    return shop?.call(f);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthValueFailure<T> f)? auth,
    TResult Function(ShopValueFailure<T> f)? shop,
    TResult Function(ProductValueFailure<T> f)? product,
    required TResult orElse(),
  }) {
    if (shop != null) {
      return shop(f);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Auth<T> value) auth,
    required TResult Function(_Shop<T> value) shop,
    required TResult Function(_Product<T> value) product,
  }) {
    return shop(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Auth<T> value)? auth,
    TResult Function(_Shop<T> value)? shop,
    TResult Function(_Product<T> value)? product,
  }) {
    return shop?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Auth<T> value)? auth,
    TResult Function(_Shop<T> value)? shop,
    TResult Function(_Product<T> value)? product,
    required TResult orElse(),
  }) {
    if (shop != null) {
      return shop(this);
    }
    return orElse();
  }
}

abstract class _Shop<T> implements ValueFailure<T> {
  const factory _Shop(ShopValueFailure<T> f) = _$_Shop<T>;

  ShopValueFailure<T> get f;
  @JsonKey(ignore: true)
  _$ShopCopyWith<T, _Shop<T>> get copyWith =>
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
    required TResult Function(ShopValueFailure<T> f) shop,
    required TResult Function(ProductValueFailure<T> f) product,
  }) {
    return product(f);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AuthValueFailure<T> f)? auth,
    TResult Function(ShopValueFailure<T> f)? shop,
    TResult Function(ProductValueFailure<T> f)? product,
  }) {
    return product?.call(f);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthValueFailure<T> f)? auth,
    TResult Function(ShopValueFailure<T> f)? shop,
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
    required TResult Function(_Shop<T> value) shop,
    required TResult Function(_Product<T> value) product,
  }) {
    return product(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Auth<T> value)? auth,
    TResult Function(_Shop<T> value)? shop,
    TResult Function(_Product<T> value)? product,
  }) {
    return product?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Auth<T> value)? auth,
    TResult Function(_Shop<T> value)? shop,
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
