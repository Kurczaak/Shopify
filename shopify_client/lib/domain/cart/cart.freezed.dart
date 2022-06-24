// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cart.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Cart {
  Shop get shop => throw _privateConstructorUsedError;
  CartItemsList get cartItems => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartCopyWith<Cart> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartCopyWith<$Res> {
  factory $CartCopyWith(Cart value, $Res Function(Cart) then) =
      _$CartCopyWithImpl<$Res>;
  $Res call({Shop shop, CartItemsList cartItems});

  $ShopCopyWith<$Res> get shop;
}

/// @nodoc
class _$CartCopyWithImpl<$Res> implements $CartCopyWith<$Res> {
  _$CartCopyWithImpl(this._value, this._then);

  final Cart _value;
  // ignore: unused_field
  final $Res Function(Cart) _then;

  @override
  $Res call({
    Object? shop = freezed,
    Object? cartItems = freezed,
  }) {
    return _then(_value.copyWith(
      shop: shop == freezed
          ? _value.shop
          : shop // ignore: cast_nullable_to_non_nullable
              as Shop,
      cartItems: cartItems == freezed
          ? _value.cartItems
          : cartItems // ignore: cast_nullable_to_non_nullable
              as CartItemsList,
    ));
  }

  @override
  $ShopCopyWith<$Res> get shop {
    return $ShopCopyWith<$Res>(_value.shop, (value) {
      return _then(_value.copyWith(shop: value));
    });
  }
}

/// @nodoc
abstract class _$$_CartCopyWith<$Res> implements $CartCopyWith<$Res> {
  factory _$$_CartCopyWith(_$_Cart value, $Res Function(_$_Cart) then) =
      __$$_CartCopyWithImpl<$Res>;
  @override
  $Res call({Shop shop, CartItemsList cartItems});

  @override
  $ShopCopyWith<$Res> get shop;
}

/// @nodoc
class __$$_CartCopyWithImpl<$Res> extends _$CartCopyWithImpl<$Res>
    implements _$$_CartCopyWith<$Res> {
  __$$_CartCopyWithImpl(_$_Cart _value, $Res Function(_$_Cart) _then)
      : super(_value, (v) => _then(v as _$_Cart));

  @override
  _$_Cart get _value => super._value as _$_Cart;

  @override
  $Res call({
    Object? shop = freezed,
    Object? cartItems = freezed,
  }) {
    return _then(_$_Cart(
      shop: shop == freezed
          ? _value.shop
          : shop // ignore: cast_nullable_to_non_nullable
              as Shop,
      cartItems: cartItems == freezed
          ? _value.cartItems
          : cartItems // ignore: cast_nullable_to_non_nullable
              as CartItemsList,
    ));
  }
}

/// @nodoc

class _$_Cart extends _Cart {
  const _$_Cart({required this.shop, required this.cartItems}) : super._();

  @override
  final Shop shop;
  @override
  final CartItemsList cartItems;

  @override
  String toString() {
    return 'Cart(shop: $shop, cartItems: $cartItems)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Cart &&
            const DeepCollectionEquality().equals(other.shop, shop) &&
            const DeepCollectionEquality().equals(other.cartItems, cartItems));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(shop),
      const DeepCollectionEquality().hash(cartItems));

  @JsonKey(ignore: true)
  @override
  _$$_CartCopyWith<_$_Cart> get copyWith =>
      __$$_CartCopyWithImpl<_$_Cart>(this, _$identity);
}

abstract class _Cart extends Cart {
  const factory _Cart(
      {required final Shop shop,
      required final CartItemsList cartItems}) = _$_Cart;
  const _Cart._() : super._();

  @override
  Shop get shop => throw _privateConstructorUsedError;
  @override
  CartItemsList get cartItems => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_CartCopyWith<_$_Cart> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserCarts {
  NonEmptyList5<Cart> get carts => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserCartsCopyWith<UserCarts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCartsCopyWith<$Res> {
  factory $UserCartsCopyWith(UserCarts value, $Res Function(UserCarts) then) =
      _$UserCartsCopyWithImpl<$Res>;
  $Res call({NonEmptyList5<Cart> carts});
}

/// @nodoc
class _$UserCartsCopyWithImpl<$Res> implements $UserCartsCopyWith<$Res> {
  _$UserCartsCopyWithImpl(this._value, this._then);

  final UserCarts _value;
  // ignore: unused_field
  final $Res Function(UserCarts) _then;

  @override
  $Res call({
    Object? carts = freezed,
  }) {
    return _then(_value.copyWith(
      carts: carts == freezed
          ? _value.carts
          : carts // ignore: cast_nullable_to_non_nullable
              as NonEmptyList5<Cart>,
    ));
  }
}

/// @nodoc
abstract class _$$_UserCartsCopyWith<$Res> implements $UserCartsCopyWith<$Res> {
  factory _$$_UserCartsCopyWith(
          _$_UserCarts value, $Res Function(_$_UserCarts) then) =
      __$$_UserCartsCopyWithImpl<$Res>;
  @override
  $Res call({NonEmptyList5<Cart> carts});
}

/// @nodoc
class __$$_UserCartsCopyWithImpl<$Res> extends _$UserCartsCopyWithImpl<$Res>
    implements _$$_UserCartsCopyWith<$Res> {
  __$$_UserCartsCopyWithImpl(
      _$_UserCarts _value, $Res Function(_$_UserCarts) _then)
      : super(_value, (v) => _then(v as _$_UserCarts));

  @override
  _$_UserCarts get _value => super._value as _$_UserCarts;

  @override
  $Res call({
    Object? carts = freezed,
  }) {
    return _then(_$_UserCarts(
      carts: carts == freezed
          ? _value.carts
          : carts // ignore: cast_nullable_to_non_nullable
              as NonEmptyList5<Cart>,
    ));
  }
}

/// @nodoc

class _$_UserCarts extends _UserCarts {
  const _$_UserCarts({required this.carts}) : super._();

  @override
  final NonEmptyList5<Cart> carts;

  @override
  String toString() {
    return 'UserCarts(carts: $carts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserCarts &&
            const DeepCollectionEquality().equals(other.carts, carts));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(carts));

  @JsonKey(ignore: true)
  @override
  _$$_UserCartsCopyWith<_$_UserCarts> get copyWith =>
      __$$_UserCartsCopyWithImpl<_$_UserCarts>(this, _$identity);
}

abstract class _UserCarts extends UserCarts {
  const factory _UserCarts({required final NonEmptyList5<Cart> carts}) =
      _$_UserCarts;
  const _UserCarts._() : super._();

  @override
  NonEmptyList5<Cart> get carts => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_UserCartsCopyWith<_$_UserCarts> get copyWith =>
      throw _privateConstructorUsedError;
}
