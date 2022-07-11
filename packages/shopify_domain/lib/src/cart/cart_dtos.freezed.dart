// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cart_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CartItemDto _$CartItemDtoFromJson(Map<String, dynamic> json) {
  return _CartItemDto.fromJson(json);
}

/// @nodoc
mixin _$CartItemDto {
  @JsonKey(ignore: true)
  String get id => throw _privateConstructorUsedError;
  PricedProductDto get pricedProduct => throw _privateConstructorUsedError;
  String get pricedProductId => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CartItemDtoCopyWith<CartItemDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartItemDtoCopyWith<$Res> {
  factory $CartItemDtoCopyWith(
          CartItemDto value, $Res Function(CartItemDto) then) =
      _$CartItemDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String id,
      PricedProductDto pricedProduct,
      String pricedProductId,
      int quantity});

  $PricedProductDtoCopyWith<$Res> get pricedProduct;
}

/// @nodoc
class _$CartItemDtoCopyWithImpl<$Res> implements $CartItemDtoCopyWith<$Res> {
  _$CartItemDtoCopyWithImpl(this._value, this._then);

  final CartItemDto _value;
  // ignore: unused_field
  final $Res Function(CartItemDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? pricedProduct = freezed,
    Object? pricedProductId = freezed,
    Object? quantity = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      pricedProduct: pricedProduct == freezed
          ? _value.pricedProduct
          : pricedProduct // ignore: cast_nullable_to_non_nullable
              as PricedProductDto,
      pricedProductId: pricedProductId == freezed
          ? _value.pricedProductId
          : pricedProductId // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  $PricedProductDtoCopyWith<$Res> get pricedProduct {
    return $PricedProductDtoCopyWith<$Res>(_value.pricedProduct, (value) {
      return _then(_value.copyWith(pricedProduct: value));
    });
  }
}

/// @nodoc
abstract class _$$_CartItemDtoCopyWith<$Res>
    implements $CartItemDtoCopyWith<$Res> {
  factory _$$_CartItemDtoCopyWith(
          _$_CartItemDto value, $Res Function(_$_CartItemDto) then) =
      __$$_CartItemDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String id,
      PricedProductDto pricedProduct,
      String pricedProductId,
      int quantity});

  @override
  $PricedProductDtoCopyWith<$Res> get pricedProduct;
}

/// @nodoc
class __$$_CartItemDtoCopyWithImpl<$Res> extends _$CartItemDtoCopyWithImpl<$Res>
    implements _$$_CartItemDtoCopyWith<$Res> {
  __$$_CartItemDtoCopyWithImpl(
      _$_CartItemDto _value, $Res Function(_$_CartItemDto) _then)
      : super(_value, (v) => _then(v as _$_CartItemDto));

  @override
  _$_CartItemDto get _value => super._value as _$_CartItemDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? pricedProduct = freezed,
    Object? pricedProductId = freezed,
    Object? quantity = freezed,
  }) {
    return _then(_$_CartItemDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      pricedProduct: pricedProduct == freezed
          ? _value.pricedProduct
          : pricedProduct // ignore: cast_nullable_to_non_nullable
              as PricedProductDto,
      pricedProductId: pricedProductId == freezed
          ? _value.pricedProductId
          : pricedProductId // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CartItemDto extends _CartItemDto {
  const _$_CartItemDto(
      {@JsonKey(ignore: true) this.id = '',
      required this.pricedProduct,
      required this.pricedProductId,
      required this.quantity})
      : super._();

  factory _$_CartItemDto.fromJson(Map<String, dynamic> json) =>
      _$$_CartItemDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String id;
  @override
  final PricedProductDto pricedProduct;
  @override
  final String pricedProductId;
  @override
  final int quantity;

  @override
  String toString() {
    return 'CartItemDto(id: $id, pricedProduct: $pricedProduct, pricedProductId: $pricedProductId, quantity: $quantity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CartItemDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.pricedProduct, pricedProduct) &&
            const DeepCollectionEquality()
                .equals(other.pricedProductId, pricedProductId) &&
            const DeepCollectionEquality().equals(other.quantity, quantity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(pricedProduct),
      const DeepCollectionEquality().hash(pricedProductId),
      const DeepCollectionEquality().hash(quantity));

  @JsonKey(ignore: true)
  @override
  _$$_CartItemDtoCopyWith<_$_CartItemDto> get copyWith =>
      __$$_CartItemDtoCopyWithImpl<_$_CartItemDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CartItemDtoToJson(this);
  }
}

abstract class _CartItemDto extends CartItemDto {
  const factory _CartItemDto(
      {@JsonKey(ignore: true) final String id,
      required final PricedProductDto pricedProduct,
      required final String pricedProductId,
      required final int quantity}) = _$_CartItemDto;
  const _CartItemDto._() : super._();

  factory _CartItemDto.fromJson(Map<String, dynamic> json) =
      _$_CartItemDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String get id => throw _privateConstructorUsedError;
  @override
  PricedProductDto get pricedProduct => throw _privateConstructorUsedError;
  @override
  String get pricedProductId => throw _privateConstructorUsedError;
  @override
  int get quantity => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_CartItemDtoCopyWith<_$_CartItemDto> get copyWith =>
      throw _privateConstructorUsedError;
}

CartDto _$CartDtoFromJson(Map<String, dynamic> json) {
  return _CartDto.fromJson(json);
}

/// @nodoc
mixin _$CartDto {
  @JsonKey(ignore: true)
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  ShopDto get shop => throw _privateConstructorUsedError;
  String get shopId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  List<CartItemDto> get cartItems => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CartDtoCopyWith<CartDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartDtoCopyWith<$Res> {
  factory $CartDtoCopyWith(CartDto value, $Res Function(CartDto) then) =
      _$CartDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String id,
      String userId,
      ShopDto shop,
      String shopId,
      @JsonKey(ignore: true) List<CartItemDto> cartItems});

  $ShopDtoCopyWith<$Res> get shop;
}

/// @nodoc
class _$CartDtoCopyWithImpl<$Res> implements $CartDtoCopyWith<$Res> {
  _$CartDtoCopyWithImpl(this._value, this._then);

  final CartDto _value;
  // ignore: unused_field
  final $Res Function(CartDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? shop = freezed,
    Object? shopId = freezed,
    Object? cartItems = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      shop: shop == freezed
          ? _value.shop
          : shop // ignore: cast_nullable_to_non_nullable
              as ShopDto,
      shopId: shopId == freezed
          ? _value.shopId
          : shopId // ignore: cast_nullable_to_non_nullable
              as String,
      cartItems: cartItems == freezed
          ? _value.cartItems
          : cartItems // ignore: cast_nullable_to_non_nullable
              as List<CartItemDto>,
    ));
  }

  @override
  $ShopDtoCopyWith<$Res> get shop {
    return $ShopDtoCopyWith<$Res>(_value.shop, (value) {
      return _then(_value.copyWith(shop: value));
    });
  }
}

/// @nodoc
abstract class _$$_CartDtoCopyWith<$Res> implements $CartDtoCopyWith<$Res> {
  factory _$$_CartDtoCopyWith(
          _$_CartDto value, $Res Function(_$_CartDto) then) =
      __$$_CartDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String id,
      String userId,
      ShopDto shop,
      String shopId,
      @JsonKey(ignore: true) List<CartItemDto> cartItems});

  @override
  $ShopDtoCopyWith<$Res> get shop;
}

/// @nodoc
class __$$_CartDtoCopyWithImpl<$Res> extends _$CartDtoCopyWithImpl<$Res>
    implements _$$_CartDtoCopyWith<$Res> {
  __$$_CartDtoCopyWithImpl(_$_CartDto _value, $Res Function(_$_CartDto) _then)
      : super(_value, (v) => _then(v as _$_CartDto));

  @override
  _$_CartDto get _value => super._value as _$_CartDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? shop = freezed,
    Object? shopId = freezed,
    Object? cartItems = freezed,
  }) {
    return _then(_$_CartDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      shop: shop == freezed
          ? _value.shop
          : shop // ignore: cast_nullable_to_non_nullable
              as ShopDto,
      shopId: shopId == freezed
          ? _value.shopId
          : shopId // ignore: cast_nullable_to_non_nullable
              as String,
      cartItems: cartItems == freezed
          ? _value._cartItems
          : cartItems // ignore: cast_nullable_to_non_nullable
              as List<CartItemDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CartDto extends _CartDto {
  const _$_CartDto(
      {@JsonKey(ignore: true) this.id = '',
      required this.userId,
      required this.shop,
      required this.shopId,
      @JsonKey(ignore: true) final List<CartItemDto> cartItems = const []})
      : _cartItems = cartItems,
        super._();

  factory _$_CartDto.fromJson(Map<String, dynamic> json) =>
      _$$_CartDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String id;
  @override
  final String userId;
  @override
  final ShopDto shop;
  @override
  final String shopId;
  final List<CartItemDto> _cartItems;
  @override
  @JsonKey(ignore: true)
  List<CartItemDto> get cartItems {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cartItems);
  }

  @override
  String toString() {
    return 'CartDto(id: $id, userId: $userId, shop: $shop, shopId: $shopId, cartItems: $cartItems)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CartDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality().equals(other.shop, shop) &&
            const DeepCollectionEquality().equals(other.shopId, shopId) &&
            const DeepCollectionEquality()
                .equals(other._cartItems, _cartItems));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(shop),
      const DeepCollectionEquality().hash(shopId),
      const DeepCollectionEquality().hash(_cartItems));

  @JsonKey(ignore: true)
  @override
  _$$_CartDtoCopyWith<_$_CartDto> get copyWith =>
      __$$_CartDtoCopyWithImpl<_$_CartDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CartDtoToJson(this);
  }
}

abstract class _CartDto extends CartDto {
  const factory _CartDto(
      {@JsonKey(ignore: true) final String id,
      required final String userId,
      required final ShopDto shop,
      required final String shopId,
      @JsonKey(ignore: true) final List<CartItemDto> cartItems}) = _$_CartDto;
  const _CartDto._() : super._();

  factory _CartDto.fromJson(Map<String, dynamic> json) = _$_CartDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String get id => throw _privateConstructorUsedError;
  @override
  String get userId => throw _privateConstructorUsedError;
  @override
  ShopDto get shop => throw _privateConstructorUsedError;
  @override
  String get shopId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  List<CartItemDto> get cartItems => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_CartDtoCopyWith<_$_CartDto> get copyWith =>
      throw _privateConstructorUsedError;
}

UserCartsDto _$UserCartsDtoFromJson(Map<String, dynamic> json) {
  return _UserCartsDto.fromJson(json);
}

/// @nodoc
mixin _$UserCartsDto {
  @JsonKey(ignore: true)
  String get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  List<CartDto> get carts => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCartsDtoCopyWith<UserCartsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCartsDtoCopyWith<$Res> {
  factory $UserCartsDtoCopyWith(
          UserCartsDto value, $Res Function(UserCartsDto) then) =
      _$UserCartsDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String id,
      @JsonKey(ignore: true) List<CartDto> carts});
}

/// @nodoc
class _$UserCartsDtoCopyWithImpl<$Res> implements $UserCartsDtoCopyWith<$Res> {
  _$UserCartsDtoCopyWithImpl(this._value, this._then);

  final UserCartsDto _value;
  // ignore: unused_field
  final $Res Function(UserCartsDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? carts = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      carts: carts == freezed
          ? _value.carts
          : carts // ignore: cast_nullable_to_non_nullable
              as List<CartDto>,
    ));
  }
}

/// @nodoc
abstract class _$$_UserCartsDtoCopyWith<$Res>
    implements $UserCartsDtoCopyWith<$Res> {
  factory _$$_UserCartsDtoCopyWith(
          _$_UserCartsDto value, $Res Function(_$_UserCartsDto) then) =
      __$$_UserCartsDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String id,
      @JsonKey(ignore: true) List<CartDto> carts});
}

/// @nodoc
class __$$_UserCartsDtoCopyWithImpl<$Res>
    extends _$UserCartsDtoCopyWithImpl<$Res>
    implements _$$_UserCartsDtoCopyWith<$Res> {
  __$$_UserCartsDtoCopyWithImpl(
      _$_UserCartsDto _value, $Res Function(_$_UserCartsDto) _then)
      : super(_value, (v) => _then(v as _$_UserCartsDto));

  @override
  _$_UserCartsDto get _value => super._value as _$_UserCartsDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? carts = freezed,
  }) {
    return _then(_$_UserCartsDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      carts: carts == freezed
          ? _value._carts
          : carts // ignore: cast_nullable_to_non_nullable
              as List<CartDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserCartsDto extends _UserCartsDto {
  const _$_UserCartsDto(
      {@JsonKey(ignore: true) this.id = '',
      @JsonKey(ignore: true) final List<CartDto> carts = const []})
      : _carts = carts,
        super._();

  factory _$_UserCartsDto.fromJson(Map<String, dynamic> json) =>
      _$$_UserCartsDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String id;
  final List<CartDto> _carts;
  @override
  @JsonKey(ignore: true)
  List<CartDto> get carts {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_carts);
  }

  @override
  String toString() {
    return 'UserCartsDto(id: $id, carts: $carts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserCartsDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other._carts, _carts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(_carts));

  @JsonKey(ignore: true)
  @override
  _$$_UserCartsDtoCopyWith<_$_UserCartsDto> get copyWith =>
      __$$_UserCartsDtoCopyWithImpl<_$_UserCartsDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserCartsDtoToJson(this);
  }
}

abstract class _UserCartsDto extends UserCartsDto {
  const factory _UserCartsDto(
      {@JsonKey(ignore: true) final String id,
      @JsonKey(ignore: true) final List<CartDto> carts}) = _$_UserCartsDto;
  const _UserCartsDto._() : super._();

  factory _UserCartsDto.fromJson(Map<String, dynamic> json) =
      _$_UserCartsDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  List<CartDto> get carts => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_UserCartsDtoCopyWith<_$_UserCartsDto> get copyWith =>
      throw _privateConstructorUsedError;
}
