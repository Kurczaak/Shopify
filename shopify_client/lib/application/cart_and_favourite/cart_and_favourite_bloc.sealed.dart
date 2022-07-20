// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_and_favourite_bloc.dart';

// **************************************************************************
// Generator: sealed_generators
// **************************************************************************

/// [CartActorEvent] {
///
/// ([CartActorEventAddToCart] addToCart){[PricedProduct] product, [int] quantity} with data equality
///
/// }
@SealedManifest(_CartActorEvent)
abstract class CartActorEvent {
  const CartActorEvent._internal();

  const factory CartActorEvent.addToCart({
    required PricedProduct product,
    required int quantity,
  }) = CartActorEventAddToCart;

  bool get isAddToCart => this is CartActorEventAddToCart;

  CartActorEventAddToCart get asAddToCart => this as CartActorEventAddToCart;

  CartActorEventAddToCart? get asAddToCartOrNull {
    final cartActorEvent = this;
    return cartActorEvent is CartActorEventAddToCart ? cartActorEvent : null;
  }

  R when<R extends Object?>({
    required R Function(PricedProduct product, int quantity) addToCart,
  }) {
    final cartActorEvent = this;
    if (cartActorEvent is CartActorEventAddToCart) {
      return addToCart(cartActorEvent.product, cartActorEvent.quantity);
    } else {
      throw AssertionError();
    }
  }

  R maybeWhen<R extends Object?>({
    R Function(PricedProduct product, int quantity)? addToCart,
    required R Function(CartActorEvent cartActorEvent) orElse,
  }) {
    final cartActorEvent = this;
    if (cartActorEvent is CartActorEventAddToCart) {
      return addToCart != null
          ? addToCart(cartActorEvent.product, cartActorEvent.quantity)
          : orElse(cartActorEvent);
    } else {
      throw AssertionError();
    }
  }

  @Deprecated('Use `whenOrNull` instead. Will be removed by next release.')
  void partialWhen({
    void Function(PricedProduct product, int quantity)? addToCart,
    void Function(CartActorEvent cartActorEvent)? orElse,
  }) {
    final cartActorEvent = this;
    if (cartActorEvent is CartActorEventAddToCart) {
      if (addToCart != null) {
        addToCart(cartActorEvent.product, cartActorEvent.quantity);
      } else if (orElse != null) {
        orElse(cartActorEvent);
      }
    } else {
      throw AssertionError();
    }
  }

  R? whenOrNull<R extends Object?>({
    R Function(PricedProduct product, int quantity)? addToCart,
    R Function(CartActorEvent cartActorEvent)? orElse,
  }) {
    final cartActorEvent = this;
    if (cartActorEvent is CartActorEventAddToCart) {
      return addToCart != null
          ? addToCart(cartActorEvent.product, cartActorEvent.quantity)
          : orElse?.call(cartActorEvent);
    } else {
      throw AssertionError();
    }
  }

  R map<R extends Object?>({
    required R Function(CartActorEventAddToCart addToCart) addToCart,
  }) {
    final cartActorEvent = this;
    if (cartActorEvent is CartActorEventAddToCart) {
      return addToCart(cartActorEvent);
    } else {
      throw AssertionError();
    }
  }

  R maybeMap<R extends Object?>({
    R Function(CartActorEventAddToCart addToCart)? addToCart,
    required R Function(CartActorEvent cartActorEvent) orElse,
  }) {
    final cartActorEvent = this;
    if (cartActorEvent is CartActorEventAddToCart) {
      return addToCart != null
          ? addToCart(cartActorEvent)
          : orElse(cartActorEvent);
    } else {
      throw AssertionError();
    }
  }

  @Deprecated('Use `mapOrNull` instead. Will be removed by next release.')
  void partialMap({
    void Function(CartActorEventAddToCart addToCart)? addToCart,
    void Function(CartActorEvent cartActorEvent)? orElse,
  }) {
    final cartActorEvent = this;
    if (cartActorEvent is CartActorEventAddToCart) {
      if (addToCart != null) {
        addToCart(cartActorEvent);
      } else if (orElse != null) {
        orElse(cartActorEvent);
      }
    } else {
      throw AssertionError();
    }
  }

  R? mapOrNull<R extends Object?>({
    R Function(CartActorEventAddToCart addToCart)? addToCart,
    R Function(CartActorEvent cartActorEvent)? orElse,
  }) {
    final cartActorEvent = this;
    if (cartActorEvent is CartActorEventAddToCart) {
      return addToCart != null
          ? addToCart(cartActorEvent)
          : orElse?.call(cartActorEvent);
    } else {
      throw AssertionError();
    }
  }
}

/// (([CartActorEventAddToCart] : [CartActorEvent]) addToCart){[PricedProduct] product, [int] quantity}
///
/// with data equality
class CartActorEventAddToCart extends CartActorEvent with EquatableMixin {
  const CartActorEventAddToCart({
    required this.product,
    required this.quantity,
  }) : super._internal();

  final PricedProduct product;
  final int quantity;

  @override
  String toString() =>
      'CartActorEvent.addToCart(product: $product, quantity: $quantity)';

  @override
  List<Object?> get props => [
        product,
        quantity,
      ];
}
