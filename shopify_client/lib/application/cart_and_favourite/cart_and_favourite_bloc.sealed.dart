// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_and_favourite_bloc.dart';

// **************************************************************************
// Generator: sealed_generators
// **************************************************************************

/// [CartAndFavouriteEvent] {
///
/// ([CartAndFavouriteEventInitialize] initialize){[UniqueId] productId} with data equality
///
/// ([CartAndFavouriteEventToggleFavourite] toggleFavourite){[UniqueId] productId} with data equality
///
/// ([CartAndFavouriteEventAddToCart] addToCart){[PricedProduct] product, [int] quantity} with data equality
///
/// }
@SealedManifest(_CartAndFavouriteEvent)
abstract class CartAndFavouriteEvent {
  const CartAndFavouriteEvent._internal();

  const factory CartAndFavouriteEvent.initialize({
    required UniqueId productId,
  }) = CartAndFavouriteEventInitialize;

  const factory CartAndFavouriteEvent.toggleFavourite({
    required UniqueId productId,
  }) = CartAndFavouriteEventToggleFavourite;

  const factory CartAndFavouriteEvent.addToCart({
    required PricedProduct product,
    required int quantity,
  }) = CartAndFavouriteEventAddToCart;

  bool get isInitialize => this is CartAndFavouriteEventInitialize;

  bool get isToggleFavourite => this is CartAndFavouriteEventToggleFavourite;

  bool get isAddToCart => this is CartAndFavouriteEventAddToCart;

  CartAndFavouriteEventInitialize get asInitialize =>
      this as CartAndFavouriteEventInitialize;

  CartAndFavouriteEventToggleFavourite get asToggleFavourite =>
      this as CartAndFavouriteEventToggleFavourite;

  CartAndFavouriteEventAddToCart get asAddToCart =>
      this as CartAndFavouriteEventAddToCart;

  CartAndFavouriteEventInitialize? get asInitializeOrNull {
    final cartAndFavouriteEvent = this;
    return cartAndFavouriteEvent is CartAndFavouriteEventInitialize
        ? cartAndFavouriteEvent
        : null;
  }

  CartAndFavouriteEventToggleFavourite? get asToggleFavouriteOrNull {
    final cartAndFavouriteEvent = this;
    return cartAndFavouriteEvent is CartAndFavouriteEventToggleFavourite
        ? cartAndFavouriteEvent
        : null;
  }

  CartAndFavouriteEventAddToCart? get asAddToCartOrNull {
    final cartAndFavouriteEvent = this;
    return cartAndFavouriteEvent is CartAndFavouriteEventAddToCart
        ? cartAndFavouriteEvent
        : null;
  }

  R when<R extends Object?>({
    required R Function(UniqueId productId) initialize,
    required R Function(UniqueId productId) toggleFavourite,
    required R Function(PricedProduct product, int quantity) addToCart,
  }) {
    final cartAndFavouriteEvent = this;
    if (cartAndFavouriteEvent is CartAndFavouriteEventInitialize) {
      return initialize(cartAndFavouriteEvent.productId);
    } else if (cartAndFavouriteEvent is CartAndFavouriteEventToggleFavourite) {
      return toggleFavourite(cartAndFavouriteEvent.productId);
    } else if (cartAndFavouriteEvent is CartAndFavouriteEventAddToCart) {
      return addToCart(
          cartAndFavouriteEvent.product, cartAndFavouriteEvent.quantity);
    } else {
      throw AssertionError();
    }
  }

  R maybeWhen<R extends Object?>({
    R Function(UniqueId productId)? initialize,
    R Function(UniqueId productId)? toggleFavourite,
    R Function(PricedProduct product, int quantity)? addToCart,
    required R Function(CartAndFavouriteEvent cartAndFavouriteEvent) orElse,
  }) {
    final cartAndFavouriteEvent = this;
    if (cartAndFavouriteEvent is CartAndFavouriteEventInitialize) {
      return initialize != null
          ? initialize(cartAndFavouriteEvent.productId)
          : orElse(cartAndFavouriteEvent);
    } else if (cartAndFavouriteEvent is CartAndFavouriteEventToggleFavourite) {
      return toggleFavourite != null
          ? toggleFavourite(cartAndFavouriteEvent.productId)
          : orElse(cartAndFavouriteEvent);
    } else if (cartAndFavouriteEvent is CartAndFavouriteEventAddToCart) {
      return addToCart != null
          ? addToCart(
              cartAndFavouriteEvent.product, cartAndFavouriteEvent.quantity)
          : orElse(cartAndFavouriteEvent);
    } else {
      throw AssertionError();
    }
  }

  @Deprecated('Use `whenOrNull` instead. Will be removed by next release.')
  void partialWhen({
    void Function(UniqueId productId)? initialize,
    void Function(UniqueId productId)? toggleFavourite,
    void Function(PricedProduct product, int quantity)? addToCart,
    void Function(CartAndFavouriteEvent cartAndFavouriteEvent)? orElse,
  }) {
    final cartAndFavouriteEvent = this;
    if (cartAndFavouriteEvent is CartAndFavouriteEventInitialize) {
      if (initialize != null) {
        initialize(cartAndFavouriteEvent.productId);
      } else if (orElse != null) {
        orElse(cartAndFavouriteEvent);
      }
    } else if (cartAndFavouriteEvent is CartAndFavouriteEventToggleFavourite) {
      if (toggleFavourite != null) {
        toggleFavourite(cartAndFavouriteEvent.productId);
      } else if (orElse != null) {
        orElse(cartAndFavouriteEvent);
      }
    } else if (cartAndFavouriteEvent is CartAndFavouriteEventAddToCart) {
      if (addToCart != null) {
        addToCart(
            cartAndFavouriteEvent.product, cartAndFavouriteEvent.quantity);
      } else if (orElse != null) {
        orElse(cartAndFavouriteEvent);
      }
    } else {
      throw AssertionError();
    }
  }

  R? whenOrNull<R extends Object?>({
    R Function(UniqueId productId)? initialize,
    R Function(UniqueId productId)? toggleFavourite,
    R Function(PricedProduct product, int quantity)? addToCart,
    R Function(CartAndFavouriteEvent cartAndFavouriteEvent)? orElse,
  }) {
    final cartAndFavouriteEvent = this;
    if (cartAndFavouriteEvent is CartAndFavouriteEventInitialize) {
      return initialize != null
          ? initialize(cartAndFavouriteEvent.productId)
          : orElse?.call(cartAndFavouriteEvent);
    } else if (cartAndFavouriteEvent is CartAndFavouriteEventToggleFavourite) {
      return toggleFavourite != null
          ? toggleFavourite(cartAndFavouriteEvent.productId)
          : orElse?.call(cartAndFavouriteEvent);
    } else if (cartAndFavouriteEvent is CartAndFavouriteEventAddToCart) {
      return addToCart != null
          ? addToCart(
              cartAndFavouriteEvent.product, cartAndFavouriteEvent.quantity)
          : orElse?.call(cartAndFavouriteEvent);
    } else {
      throw AssertionError();
    }
  }

  R map<R extends Object?>({
    required R Function(CartAndFavouriteEventInitialize initialize) initialize,
    required R Function(CartAndFavouriteEventToggleFavourite toggleFavourite)
        toggleFavourite,
    required R Function(CartAndFavouriteEventAddToCart addToCart) addToCart,
  }) {
    final cartAndFavouriteEvent = this;
    if (cartAndFavouriteEvent is CartAndFavouriteEventInitialize) {
      return initialize(cartAndFavouriteEvent);
    } else if (cartAndFavouriteEvent is CartAndFavouriteEventToggleFavourite) {
      return toggleFavourite(cartAndFavouriteEvent);
    } else if (cartAndFavouriteEvent is CartAndFavouriteEventAddToCart) {
      return addToCart(cartAndFavouriteEvent);
    } else {
      throw AssertionError();
    }
  }

  R maybeMap<R extends Object?>({
    R Function(CartAndFavouriteEventInitialize initialize)? initialize,
    R Function(CartAndFavouriteEventToggleFavourite toggleFavourite)?
        toggleFavourite,
    R Function(CartAndFavouriteEventAddToCart addToCart)? addToCart,
    required R Function(CartAndFavouriteEvent cartAndFavouriteEvent) orElse,
  }) {
    final cartAndFavouriteEvent = this;
    if (cartAndFavouriteEvent is CartAndFavouriteEventInitialize) {
      return initialize != null
          ? initialize(cartAndFavouriteEvent)
          : orElse(cartAndFavouriteEvent);
    } else if (cartAndFavouriteEvent is CartAndFavouriteEventToggleFavourite) {
      return toggleFavourite != null
          ? toggleFavourite(cartAndFavouriteEvent)
          : orElse(cartAndFavouriteEvent);
    } else if (cartAndFavouriteEvent is CartAndFavouriteEventAddToCart) {
      return addToCart != null
          ? addToCart(cartAndFavouriteEvent)
          : orElse(cartAndFavouriteEvent);
    } else {
      throw AssertionError();
    }
  }

  @Deprecated('Use `mapOrNull` instead. Will be removed by next release.')
  void partialMap({
    void Function(CartAndFavouriteEventInitialize initialize)? initialize,
    void Function(CartAndFavouriteEventToggleFavourite toggleFavourite)?
        toggleFavourite,
    void Function(CartAndFavouriteEventAddToCart addToCart)? addToCart,
    void Function(CartAndFavouriteEvent cartAndFavouriteEvent)? orElse,
  }) {
    final cartAndFavouriteEvent = this;
    if (cartAndFavouriteEvent is CartAndFavouriteEventInitialize) {
      if (initialize != null) {
        initialize(cartAndFavouriteEvent);
      } else if (orElse != null) {
        orElse(cartAndFavouriteEvent);
      }
    } else if (cartAndFavouriteEvent is CartAndFavouriteEventToggleFavourite) {
      if (toggleFavourite != null) {
        toggleFavourite(cartAndFavouriteEvent);
      } else if (orElse != null) {
        orElse(cartAndFavouriteEvent);
      }
    } else if (cartAndFavouriteEvent is CartAndFavouriteEventAddToCart) {
      if (addToCart != null) {
        addToCart(cartAndFavouriteEvent);
      } else if (orElse != null) {
        orElse(cartAndFavouriteEvent);
      }
    } else {
      throw AssertionError();
    }
  }

  R? mapOrNull<R extends Object?>({
    R Function(CartAndFavouriteEventInitialize initialize)? initialize,
    R Function(CartAndFavouriteEventToggleFavourite toggleFavourite)?
        toggleFavourite,
    R Function(CartAndFavouriteEventAddToCart addToCart)? addToCart,
    R Function(CartAndFavouriteEvent cartAndFavouriteEvent)? orElse,
  }) {
    final cartAndFavouriteEvent = this;
    if (cartAndFavouriteEvent is CartAndFavouriteEventInitialize) {
      return initialize != null
          ? initialize(cartAndFavouriteEvent)
          : orElse?.call(cartAndFavouriteEvent);
    } else if (cartAndFavouriteEvent is CartAndFavouriteEventToggleFavourite) {
      return toggleFavourite != null
          ? toggleFavourite(cartAndFavouriteEvent)
          : orElse?.call(cartAndFavouriteEvent);
    } else if (cartAndFavouriteEvent is CartAndFavouriteEventAddToCart) {
      return addToCart != null
          ? addToCart(cartAndFavouriteEvent)
          : orElse?.call(cartAndFavouriteEvent);
    } else {
      throw AssertionError();
    }
  }
}

/// (([CartAndFavouriteEventInitialize] : [CartAndFavouriteEvent]) initialize){[UniqueId] productId}
///
/// with data equality
class CartAndFavouriteEventInitialize extends CartAndFavouriteEvent
    with EquatableMixin {
  const CartAndFavouriteEventInitialize({
    required this.productId,
  }) : super._internal();

  final UniqueId productId;

  @override
  String toString() =>
      'CartAndFavouriteEvent.initialize(productId: $productId)';

  @override
  List<Object?> get props => [
        productId,
      ];
}

/// (([CartAndFavouriteEventToggleFavourite] : [CartAndFavouriteEvent]) toggleFavourite){[UniqueId] productId}
///
/// with data equality
class CartAndFavouriteEventToggleFavourite extends CartAndFavouriteEvent
    with EquatableMixin {
  const CartAndFavouriteEventToggleFavourite({
    required this.productId,
  }) : super._internal();

  final UniqueId productId;

  @override
  String toString() =>
      'CartAndFavouriteEvent.toggleFavourite(productId: $productId)';

  @override
  List<Object?> get props => [
        productId,
      ];
}

/// (([CartAndFavouriteEventAddToCart] : [CartAndFavouriteEvent]) addToCart){[PricedProduct] product, [int] quantity}
///
/// with data equality
class CartAndFavouriteEventAddToCart extends CartAndFavouriteEvent
    with EquatableMixin {
  const CartAndFavouriteEventAddToCart({
    required this.product,
    required this.quantity,
  }) : super._internal();

  final PricedProduct product;
  final int quantity;

  @override
  String toString() =>
      'CartAndFavouriteEvent.addToCart(product: $product, quantity: $quantity)';

  @override
  List<Object?> get props => [
        product,
        quantity,
      ];
}
