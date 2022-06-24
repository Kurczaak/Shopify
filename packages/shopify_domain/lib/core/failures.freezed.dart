// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ValueFailure<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthValueFailure<T> f) auth,
    required TResult Function(ShopValueFailure<T> f) shop,
    required TResult Function(ProductValueFailure<T> f) product,
    required TResult Function(CoreValueFailure<T> f) core,
    required TResult Function(CartValueFailure<T> f) cart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AuthValueFailure<T> f)? auth,
    TResult Function(ShopValueFailure<T> f)? shop,
    TResult Function(ProductValueFailure<T> f)? product,
    TResult Function(CoreValueFailure<T> f)? core,
    TResult Function(CartValueFailure<T> f)? cart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthValueFailure<T> f)? auth,
    TResult Function(ShopValueFailure<T> f)? shop,
    TResult Function(ProductValueFailure<T> f)? product,
    TResult Function(CoreValueFailure<T> f)? core,
    TResult Function(CartValueFailure<T> f)? cart,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Auth<T> value) auth,
    required TResult Function(_Shop<T> value) shop,
    required TResult Function(_Product<T> value) product,
    required TResult Function(_Core<T> value) core,
    required TResult Function(_Cart<T> value) cart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Auth<T> value)? auth,
    TResult Function(_Shop<T> value)? shop,
    TResult Function(_Product<T> value)? product,
    TResult Function(_Core<T> value)? core,
    TResult Function(_Cart<T> value)? cart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Auth<T> value)? auth,
    TResult Function(_Shop<T> value)? shop,
    TResult Function(_Product<T> value)? product,
    TResult Function(_Core<T> value)? core,
    TResult Function(_Cart<T> value)? cart,
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
abstract class _$$_AuthCopyWith<T, $Res> {
  factory _$$_AuthCopyWith(_$_Auth<T> value, $Res Function(_$_Auth<T>) then) =
      __$$_AuthCopyWithImpl<T, $Res>;
  $Res call({AuthValueFailure<T> f});

  $AuthValueFailureCopyWith<T, $Res> get f;
}

/// @nodoc
class __$$_AuthCopyWithImpl<T, $Res> extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$$_AuthCopyWith<T, $Res> {
  __$$_AuthCopyWithImpl(_$_Auth<T> _value, $Res Function(_$_Auth<T>) _then)
      : super(_value, (v) => _then(v as _$_Auth<T>));

  @override
  _$_Auth<T> get _value => super._value as _$_Auth<T>;

  @override
  $Res call({
    Object? f = freezed,
  }) {
    return _then(_$_Auth<T>(
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

class _$_Auth<T> extends _Auth<T> {
  const _$_Auth(this.f) : super._();

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
            other is _$_Auth<T> &&
            const DeepCollectionEquality().equals(other.f, f));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(f));

  @JsonKey(ignore: true)
  @override
  _$$_AuthCopyWith<T, _$_Auth<T>> get copyWith =>
      __$$_AuthCopyWithImpl<T, _$_Auth<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthValueFailure<T> f) auth,
    required TResult Function(ShopValueFailure<T> f) shop,
    required TResult Function(ProductValueFailure<T> f) product,
    required TResult Function(CoreValueFailure<T> f) core,
    required TResult Function(CartValueFailure<T> f) cart,
  }) {
    return auth(f);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AuthValueFailure<T> f)? auth,
    TResult Function(ShopValueFailure<T> f)? shop,
    TResult Function(ProductValueFailure<T> f)? product,
    TResult Function(CoreValueFailure<T> f)? core,
    TResult Function(CartValueFailure<T> f)? cart,
  }) {
    return auth?.call(f);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthValueFailure<T> f)? auth,
    TResult Function(ShopValueFailure<T> f)? shop,
    TResult Function(ProductValueFailure<T> f)? product,
    TResult Function(CoreValueFailure<T> f)? core,
    TResult Function(CartValueFailure<T> f)? cart,
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
    required TResult Function(_Core<T> value) core,
    required TResult Function(_Cart<T> value) cart,
  }) {
    return auth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Auth<T> value)? auth,
    TResult Function(_Shop<T> value)? shop,
    TResult Function(_Product<T> value)? product,
    TResult Function(_Core<T> value)? core,
    TResult Function(_Cart<T> value)? cart,
  }) {
    return auth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Auth<T> value)? auth,
    TResult Function(_Shop<T> value)? shop,
    TResult Function(_Product<T> value)? product,
    TResult Function(_Core<T> value)? core,
    TResult Function(_Cart<T> value)? cart,
    required TResult orElse(),
  }) {
    if (auth != null) {
      return auth(this);
    }
    return orElse();
  }
}

abstract class _Auth<T> extends ValueFailure<T> {
  const factory _Auth(final AuthValueFailure<T> f) = _$_Auth<T>;
  const _Auth._() : super._();

  AuthValueFailure<T> get f => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_AuthCopyWith<T, _$_Auth<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ShopCopyWith<T, $Res> {
  factory _$$_ShopCopyWith(_$_Shop<T> value, $Res Function(_$_Shop<T>) then) =
      __$$_ShopCopyWithImpl<T, $Res>;
  $Res call({ShopValueFailure<T> f});

  $ShopValueFailureCopyWith<T, $Res> get f;
}

/// @nodoc
class __$$_ShopCopyWithImpl<T, $Res> extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$$_ShopCopyWith<T, $Res> {
  __$$_ShopCopyWithImpl(_$_Shop<T> _value, $Res Function(_$_Shop<T>) _then)
      : super(_value, (v) => _then(v as _$_Shop<T>));

  @override
  _$_Shop<T> get _value => super._value as _$_Shop<T>;

  @override
  $Res call({
    Object? f = freezed,
  }) {
    return _then(_$_Shop<T>(
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

class _$_Shop<T> extends _Shop<T> {
  const _$_Shop(this.f) : super._();

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
            other is _$_Shop<T> &&
            const DeepCollectionEquality().equals(other.f, f));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(f));

  @JsonKey(ignore: true)
  @override
  _$$_ShopCopyWith<T, _$_Shop<T>> get copyWith =>
      __$$_ShopCopyWithImpl<T, _$_Shop<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthValueFailure<T> f) auth,
    required TResult Function(ShopValueFailure<T> f) shop,
    required TResult Function(ProductValueFailure<T> f) product,
    required TResult Function(CoreValueFailure<T> f) core,
    required TResult Function(CartValueFailure<T> f) cart,
  }) {
    return shop(f);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AuthValueFailure<T> f)? auth,
    TResult Function(ShopValueFailure<T> f)? shop,
    TResult Function(ProductValueFailure<T> f)? product,
    TResult Function(CoreValueFailure<T> f)? core,
    TResult Function(CartValueFailure<T> f)? cart,
  }) {
    return shop?.call(f);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthValueFailure<T> f)? auth,
    TResult Function(ShopValueFailure<T> f)? shop,
    TResult Function(ProductValueFailure<T> f)? product,
    TResult Function(CoreValueFailure<T> f)? core,
    TResult Function(CartValueFailure<T> f)? cart,
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
    required TResult Function(_Core<T> value) core,
    required TResult Function(_Cart<T> value) cart,
  }) {
    return shop(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Auth<T> value)? auth,
    TResult Function(_Shop<T> value)? shop,
    TResult Function(_Product<T> value)? product,
    TResult Function(_Core<T> value)? core,
    TResult Function(_Cart<T> value)? cart,
  }) {
    return shop?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Auth<T> value)? auth,
    TResult Function(_Shop<T> value)? shop,
    TResult Function(_Product<T> value)? product,
    TResult Function(_Core<T> value)? core,
    TResult Function(_Cart<T> value)? cart,
    required TResult orElse(),
  }) {
    if (shop != null) {
      return shop(this);
    }
    return orElse();
  }
}

abstract class _Shop<T> extends ValueFailure<T> {
  const factory _Shop(final ShopValueFailure<T> f) = _$_Shop<T>;
  const _Shop._() : super._();

  ShopValueFailure<T> get f => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_ShopCopyWith<T, _$_Shop<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ProductCopyWith<T, $Res> {
  factory _$$_ProductCopyWith(
          _$_Product<T> value, $Res Function(_$_Product<T>) then) =
      __$$_ProductCopyWithImpl<T, $Res>;
  $Res call({ProductValueFailure<T> f});

  $ProductValueFailureCopyWith<T, $Res> get f;
}

/// @nodoc
class __$$_ProductCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$$_ProductCopyWith<T, $Res> {
  __$$_ProductCopyWithImpl(
      _$_Product<T> _value, $Res Function(_$_Product<T>) _then)
      : super(_value, (v) => _then(v as _$_Product<T>));

  @override
  _$_Product<T> get _value => super._value as _$_Product<T>;

  @override
  $Res call({
    Object? f = freezed,
  }) {
    return _then(_$_Product<T>(
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

class _$_Product<T> extends _Product<T> {
  const _$_Product(this.f) : super._();

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
            other is _$_Product<T> &&
            const DeepCollectionEquality().equals(other.f, f));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(f));

  @JsonKey(ignore: true)
  @override
  _$$_ProductCopyWith<T, _$_Product<T>> get copyWith =>
      __$$_ProductCopyWithImpl<T, _$_Product<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthValueFailure<T> f) auth,
    required TResult Function(ShopValueFailure<T> f) shop,
    required TResult Function(ProductValueFailure<T> f) product,
    required TResult Function(CoreValueFailure<T> f) core,
    required TResult Function(CartValueFailure<T> f) cart,
  }) {
    return product(f);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AuthValueFailure<T> f)? auth,
    TResult Function(ShopValueFailure<T> f)? shop,
    TResult Function(ProductValueFailure<T> f)? product,
    TResult Function(CoreValueFailure<T> f)? core,
    TResult Function(CartValueFailure<T> f)? cart,
  }) {
    return product?.call(f);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthValueFailure<T> f)? auth,
    TResult Function(ShopValueFailure<T> f)? shop,
    TResult Function(ProductValueFailure<T> f)? product,
    TResult Function(CoreValueFailure<T> f)? core,
    TResult Function(CartValueFailure<T> f)? cart,
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
    required TResult Function(_Core<T> value) core,
    required TResult Function(_Cart<T> value) cart,
  }) {
    return product(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Auth<T> value)? auth,
    TResult Function(_Shop<T> value)? shop,
    TResult Function(_Product<T> value)? product,
    TResult Function(_Core<T> value)? core,
    TResult Function(_Cart<T> value)? cart,
  }) {
    return product?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Auth<T> value)? auth,
    TResult Function(_Shop<T> value)? shop,
    TResult Function(_Product<T> value)? product,
    TResult Function(_Core<T> value)? core,
    TResult Function(_Cart<T> value)? cart,
    required TResult orElse(),
  }) {
    if (product != null) {
      return product(this);
    }
    return orElse();
  }
}

abstract class _Product<T> extends ValueFailure<T> {
  const factory _Product(final ProductValueFailure<T> f) = _$_Product<T>;
  const _Product._() : super._();

  ProductValueFailure<T> get f => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_ProductCopyWith<T, _$_Product<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CoreCopyWith<T, $Res> {
  factory _$$_CoreCopyWith(_$_Core<T> value, $Res Function(_$_Core<T>) then) =
      __$$_CoreCopyWithImpl<T, $Res>;
  $Res call({CoreValueFailure<T> f});

  $CoreValueFailureCopyWith<T, $Res> get f;
}

/// @nodoc
class __$$_CoreCopyWithImpl<T, $Res> extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$$_CoreCopyWith<T, $Res> {
  __$$_CoreCopyWithImpl(_$_Core<T> _value, $Res Function(_$_Core<T>) _then)
      : super(_value, (v) => _then(v as _$_Core<T>));

  @override
  _$_Core<T> get _value => super._value as _$_Core<T>;

  @override
  $Res call({
    Object? f = freezed,
  }) {
    return _then(_$_Core<T>(
      f == freezed
          ? _value.f
          : f // ignore: cast_nullable_to_non_nullable
              as CoreValueFailure<T>,
    ));
  }

  @override
  $CoreValueFailureCopyWith<T, $Res> get f {
    return $CoreValueFailureCopyWith<T, $Res>(_value.f, (value) {
      return _then(_value.copyWith(f: value));
    });
  }
}

/// @nodoc

class _$_Core<T> extends _Core<T> {
  const _$_Core(this.f) : super._();

  @override
  final CoreValueFailure<T> f;

  @override
  String toString() {
    return 'ValueFailure<$T>.core(f: $f)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Core<T> &&
            const DeepCollectionEquality().equals(other.f, f));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(f));

  @JsonKey(ignore: true)
  @override
  _$$_CoreCopyWith<T, _$_Core<T>> get copyWith =>
      __$$_CoreCopyWithImpl<T, _$_Core<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthValueFailure<T> f) auth,
    required TResult Function(ShopValueFailure<T> f) shop,
    required TResult Function(ProductValueFailure<T> f) product,
    required TResult Function(CoreValueFailure<T> f) core,
    required TResult Function(CartValueFailure<T> f) cart,
  }) {
    return core(f);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AuthValueFailure<T> f)? auth,
    TResult Function(ShopValueFailure<T> f)? shop,
    TResult Function(ProductValueFailure<T> f)? product,
    TResult Function(CoreValueFailure<T> f)? core,
    TResult Function(CartValueFailure<T> f)? cart,
  }) {
    return core?.call(f);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthValueFailure<T> f)? auth,
    TResult Function(ShopValueFailure<T> f)? shop,
    TResult Function(ProductValueFailure<T> f)? product,
    TResult Function(CoreValueFailure<T> f)? core,
    TResult Function(CartValueFailure<T> f)? cart,
    required TResult orElse(),
  }) {
    if (core != null) {
      return core(f);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Auth<T> value) auth,
    required TResult Function(_Shop<T> value) shop,
    required TResult Function(_Product<T> value) product,
    required TResult Function(_Core<T> value) core,
    required TResult Function(_Cart<T> value) cart,
  }) {
    return core(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Auth<T> value)? auth,
    TResult Function(_Shop<T> value)? shop,
    TResult Function(_Product<T> value)? product,
    TResult Function(_Core<T> value)? core,
    TResult Function(_Cart<T> value)? cart,
  }) {
    return core?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Auth<T> value)? auth,
    TResult Function(_Shop<T> value)? shop,
    TResult Function(_Product<T> value)? product,
    TResult Function(_Core<T> value)? core,
    TResult Function(_Cart<T> value)? cart,
    required TResult orElse(),
  }) {
    if (core != null) {
      return core(this);
    }
    return orElse();
  }
}

abstract class _Core<T> extends ValueFailure<T> {
  const factory _Core(final CoreValueFailure<T> f) = _$_Core<T>;
  const _Core._() : super._();

  CoreValueFailure<T> get f => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_CoreCopyWith<T, _$_Core<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CartCopyWith<T, $Res> {
  factory _$$_CartCopyWith(_$_Cart<T> value, $Res Function(_$_Cart<T>) then) =
      __$$_CartCopyWithImpl<T, $Res>;
  $Res call({CartValueFailure<T> f});

  $CartValueFailureCopyWith<T, $Res> get f;
}

/// @nodoc
class __$$_CartCopyWithImpl<T, $Res> extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$$_CartCopyWith<T, $Res> {
  __$$_CartCopyWithImpl(_$_Cart<T> _value, $Res Function(_$_Cart<T>) _then)
      : super(_value, (v) => _then(v as _$_Cart<T>));

  @override
  _$_Cart<T> get _value => super._value as _$_Cart<T>;

  @override
  $Res call({
    Object? f = freezed,
  }) {
    return _then(_$_Cart<T>(
      f == freezed
          ? _value.f
          : f // ignore: cast_nullable_to_non_nullable
              as CartValueFailure<T>,
    ));
  }

  @override
  $CartValueFailureCopyWith<T, $Res> get f {
    return $CartValueFailureCopyWith<T, $Res>(_value.f, (value) {
      return _then(_value.copyWith(f: value));
    });
  }
}

/// @nodoc

class _$_Cart<T> extends _Cart<T> {
  const _$_Cart(this.f) : super._();

  @override
  final CartValueFailure<T> f;

  @override
  String toString() {
    return 'ValueFailure<$T>.cart(f: $f)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Cart<T> &&
            const DeepCollectionEquality().equals(other.f, f));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(f));

  @JsonKey(ignore: true)
  @override
  _$$_CartCopyWith<T, _$_Cart<T>> get copyWith =>
      __$$_CartCopyWithImpl<T, _$_Cart<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthValueFailure<T> f) auth,
    required TResult Function(ShopValueFailure<T> f) shop,
    required TResult Function(ProductValueFailure<T> f) product,
    required TResult Function(CoreValueFailure<T> f) core,
    required TResult Function(CartValueFailure<T> f) cart,
  }) {
    return cart(f);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AuthValueFailure<T> f)? auth,
    TResult Function(ShopValueFailure<T> f)? shop,
    TResult Function(ProductValueFailure<T> f)? product,
    TResult Function(CoreValueFailure<T> f)? core,
    TResult Function(CartValueFailure<T> f)? cart,
  }) {
    return cart?.call(f);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthValueFailure<T> f)? auth,
    TResult Function(ShopValueFailure<T> f)? shop,
    TResult Function(ProductValueFailure<T> f)? product,
    TResult Function(CoreValueFailure<T> f)? core,
    TResult Function(CartValueFailure<T> f)? cart,
    required TResult orElse(),
  }) {
    if (cart != null) {
      return cart(f);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Auth<T> value) auth,
    required TResult Function(_Shop<T> value) shop,
    required TResult Function(_Product<T> value) product,
    required TResult Function(_Core<T> value) core,
    required TResult Function(_Cart<T> value) cart,
  }) {
    return cart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Auth<T> value)? auth,
    TResult Function(_Shop<T> value)? shop,
    TResult Function(_Product<T> value)? product,
    TResult Function(_Core<T> value)? core,
    TResult Function(_Cart<T> value)? cart,
  }) {
    return cart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Auth<T> value)? auth,
    TResult Function(_Shop<T> value)? shop,
    TResult Function(_Product<T> value)? product,
    TResult Function(_Core<T> value)? core,
    TResult Function(_Cart<T> value)? cart,
    required TResult orElse(),
  }) {
    if (cart != null) {
      return cart(this);
    }
    return orElse();
  }
}

abstract class _Cart<T> extends ValueFailure<T> {
  const factory _Cart(final CartValueFailure<T> f) = _$_Cart<T>;
  const _Cart._() : super._();

  CartValueFailure<T> get f => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_CartCopyWith<T, _$_Cart<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
