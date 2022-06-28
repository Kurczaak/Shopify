// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cart_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CartFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() invalidProduct,
    required TResult Function() noInternetConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? invalidProduct,
    TResult Function()? noInternetConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? invalidProduct,
    TResult Function()? noInternetConnection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_InvalidCartItem value) invalidProduct,
    required TResult Function(_noInternetConnection value) noInternetConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_InvalidCartItem value)? invalidProduct,
    TResult Function(_noInternetConnection value)? noInternetConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_InvalidCartItem value)? invalidProduct,
    TResult Function(_noInternetConnection value)? noInternetConnection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartFailureCopyWith<$Res> {
  factory $CartFailureCopyWith(
          CartFailure value, $Res Function(CartFailure) then) =
      _$CartFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$CartFailureCopyWithImpl<$Res> implements $CartFailureCopyWith<$Res> {
  _$CartFailureCopyWithImpl(this._value, this._then);

  final CartFailure _value;
  // ignore: unused_field
  final $Res Function(CartFailure) _then;
}

/// @nodoc
abstract class _$$_UnexpectedCopyWith<$Res> {
  factory _$$_UnexpectedCopyWith(
          _$_Unexpected value, $Res Function(_$_Unexpected) then) =
      __$$_UnexpectedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UnexpectedCopyWithImpl<$Res> extends _$CartFailureCopyWithImpl<$Res>
    implements _$$_UnexpectedCopyWith<$Res> {
  __$$_UnexpectedCopyWithImpl(
      _$_Unexpected _value, $Res Function(_$_Unexpected) _then)
      : super(_value, (v) => _then(v as _$_Unexpected));

  @override
  _$_Unexpected get _value => super._value as _$_Unexpected;
}

/// @nodoc

class _$_Unexpected implements _Unexpected {
  const _$_Unexpected();

  @override
  String toString() {
    return 'CartFailure.unexpected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Unexpected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() invalidProduct,
    required TResult Function() noInternetConnection,
  }) {
    return unexpected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? invalidProduct,
    TResult Function()? noInternetConnection,
  }) {
    return unexpected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? invalidProduct,
    TResult Function()? noInternetConnection,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_InvalidCartItem value) invalidProduct,
    required TResult Function(_noInternetConnection value) noInternetConnection,
  }) {
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_InvalidCartItem value)? invalidProduct,
    TResult Function(_noInternetConnection value)? noInternetConnection,
  }) {
    return unexpected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_InvalidCartItem value)? invalidProduct,
    TResult Function(_noInternetConnection value)? noInternetConnection,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class _Unexpected implements CartFailure {
  const factory _Unexpected() = _$_Unexpected;
}

/// @nodoc
abstract class _$$_InvalidCartItemCopyWith<$Res> {
  factory _$$_InvalidCartItemCopyWith(
          _$_InvalidCartItem value, $Res Function(_$_InvalidCartItem) then) =
      __$$_InvalidCartItemCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InvalidCartItemCopyWithImpl<$Res>
    extends _$CartFailureCopyWithImpl<$Res>
    implements _$$_InvalidCartItemCopyWith<$Res> {
  __$$_InvalidCartItemCopyWithImpl(
      _$_InvalidCartItem _value, $Res Function(_$_InvalidCartItem) _then)
      : super(_value, (v) => _then(v as _$_InvalidCartItem));

  @override
  _$_InvalidCartItem get _value => super._value as _$_InvalidCartItem;
}

/// @nodoc

class _$_InvalidCartItem implements _InvalidCartItem {
  const _$_InvalidCartItem();

  @override
  String toString() {
    return 'CartFailure.invalidProduct()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_InvalidCartItem);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() invalidProduct,
    required TResult Function() noInternetConnection,
  }) {
    return invalidProduct();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? invalidProduct,
    TResult Function()? noInternetConnection,
  }) {
    return invalidProduct?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? invalidProduct,
    TResult Function()? noInternetConnection,
    required TResult orElse(),
  }) {
    if (invalidProduct != null) {
      return invalidProduct();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_InvalidCartItem value) invalidProduct,
    required TResult Function(_noInternetConnection value) noInternetConnection,
  }) {
    return invalidProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_InvalidCartItem value)? invalidProduct,
    TResult Function(_noInternetConnection value)? noInternetConnection,
  }) {
    return invalidProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_InvalidCartItem value)? invalidProduct,
    TResult Function(_noInternetConnection value)? noInternetConnection,
    required TResult orElse(),
  }) {
    if (invalidProduct != null) {
      return invalidProduct(this);
    }
    return orElse();
  }
}

abstract class _InvalidCartItem implements CartFailure {
  const factory _InvalidCartItem() = _$_InvalidCartItem;
}

/// @nodoc
abstract class _$$_noInternetConnectionCopyWith<$Res> {
  factory _$$_noInternetConnectionCopyWith(_$_noInternetConnection value,
          $Res Function(_$_noInternetConnection) then) =
      __$$_noInternetConnectionCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_noInternetConnectionCopyWithImpl<$Res>
    extends _$CartFailureCopyWithImpl<$Res>
    implements _$$_noInternetConnectionCopyWith<$Res> {
  __$$_noInternetConnectionCopyWithImpl(_$_noInternetConnection _value,
      $Res Function(_$_noInternetConnection) _then)
      : super(_value, (v) => _then(v as _$_noInternetConnection));

  @override
  _$_noInternetConnection get _value => super._value as _$_noInternetConnection;
}

/// @nodoc

class _$_noInternetConnection implements _noInternetConnection {
  const _$_noInternetConnection();

  @override
  String toString() {
    return 'CartFailure.noInternetConnection()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_noInternetConnection);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() invalidProduct,
    required TResult Function() noInternetConnection,
  }) {
    return noInternetConnection();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? invalidProduct,
    TResult Function()? noInternetConnection,
  }) {
    return noInternetConnection?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? invalidProduct,
    TResult Function()? noInternetConnection,
    required TResult orElse(),
  }) {
    if (noInternetConnection != null) {
      return noInternetConnection();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_InvalidCartItem value) invalidProduct,
    required TResult Function(_noInternetConnection value) noInternetConnection,
  }) {
    return noInternetConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_InvalidCartItem value)? invalidProduct,
    TResult Function(_noInternetConnection value)? noInternetConnection,
  }) {
    return noInternetConnection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_InvalidCartItem value)? invalidProduct,
    TResult Function(_noInternetConnection value)? noInternetConnection,
    required TResult orElse(),
  }) {
    if (noInternetConnection != null) {
      return noInternetConnection(this);
    }
    return orElse();
  }
}

abstract class _noInternetConnection implements CartFailure {
  const factory _noInternetConnection() = _$_noInternetConnection;
}
