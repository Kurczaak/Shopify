import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kt_dart/collection.dart';
import 'package:shopify_domain/cart/cart.dart';
import 'package:shopify_domain/cart/cart_item.dart';
import 'package:shopify_domain/cart/value_objects.dart';
import 'package:shopify_domain/core/value_objects.dart';
import 'package:shopify_domain/product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopify_domain/src/shop/shop_dtos.dart';
part 'cart_dtos.freezed.dart';
part 'cart_dtos.g.dart';

@freezed
class CartItemDto with _$CartItemDto {
  const CartItemDto._();
  const factory CartItemDto({
    @Default('') @JsonKey(ignore: true) String id,
    required PricedProductDto pricedProduct,
    required String pricedProductId,
    required int quantity,
  }) = _CartItemDto;

  factory CartItemDto.fromDomain(CartItem cartItem) => CartItemDto(
      pricedProduct: PricedProductDto.fromDomain(cartItem.product),
      pricedProductId: cartItem.product.pricedProductId.getOrCrash(),
      quantity: cartItem.quantity.getOrCrash());

  CartItem toDomain() => CartItem(
      id: UniqueId.fromUniqueString(id),
      product: pricedProduct.toDomain(),
      quantity: NonnegativeInt(quantity));

  factory CartItemDto.fromJson(Map<String, dynamic> json) =>
      _$CartItemDtoFromJson(json);
  factory CartItemDto.fromFirestore(DocumentSnapshot doc) =>
      CartItemDto.fromJson(doc.data() as Map<String, dynamic>)
          .copyWith(id: doc.id);
}

@freezed
class CartDto with _$CartDto {
  const CartDto._();
  const factory CartDto({
    @Default('') @JsonKey(ignore: true) String id,
    required ShopDto shop,
    required String shopId,
    @Default([]) @JsonKey(ignore: true) List<CartItemDto> cartItems,
  }) = _CartDto;

  factory CartDto.fromDomain(Cart cart) => CartDto(
        shop: ShopDto.fromDomain(cart.shop),
        shopId: cart.shop.id.getOrCrash(),
        cartItems: cart.cartItems
            .getOrCrash()
            .iter
            .map((cartItem) => CartItemDto.fromDomain(cartItem))
            .toList(),
      );

  Cart toDomain() => Cart(
        id: UniqueId.fromUniqueString(id),
        shop: shop.toDomain().copyWith(id: UniqueId.fromUniqueString(shopId)),
        cartItems: CartItemsList(
          KtList.from(
            cartItems.map((cartItemDto) => cartItemDto.toDomain()).toList(),
          ),
        ),
      );
  factory CartDto.fromJson(Map<String, dynamic> json) =>
      _$CartDtoFromJson(json);

  factory CartDto.fromFirestore(
          {required DocumentSnapshot doc,
          required List<CartItemDto> cartItems}) =>
      CartDto.fromJson(doc.data() as Map<String, dynamic>).copyWith(
        id: doc.id,
        cartItems: cartItems,
      );
}

@freezed
class UserCartsDto with _$UserCartsDto {
  const UserCartsDto._();
  const factory UserCartsDto({
    @Default('') @JsonKey(ignore: true) String id,
    @Default([]) @JsonKey(ignore: true) List<CartDto> carts,
  }) = _UserCartsDto;

  factory UserCartsDto.fromDomain(UserCarts carts) => UserCartsDto(
        carts: carts.carts
            .getOrCrash()
            .iter
            .map((cart) => CartDto.fromDomain(cart))
            .toList(),
      );

  UserCarts toDomain() => UserCarts(
        id: UniqueId.fromUniqueString(id),
        carts: NonEmptyList(
          KtList.from(
            carts.map((cartDto) => cartDto.toDomain()).toList(),
          ),
        ),
      );
  factory UserCartsDto.fromJson(Map<String, dynamic> json) =>
      _$UserCartsDtoFromJson(json);

  factory UserCartsDto.fromFirestore(
          {required DocumentSnapshot doc, required List<CartDto> cartTos}) =>
      UserCartsDto.fromJson(doc.data() as Map<String, dynamic>)
          .copyWith(id: doc.id);
}
