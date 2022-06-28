// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_and_favourite_bloc.dart';

// **************************************************************************
// Generator: sealed_generators
// **************************************************************************

/// [CartAndFavouriteEvent] {
///
/// ([CartAndFavouriteEventAddToFavourite] addToFavourite){} with data equality
///
/// ([CartAndFavouriteEventAddToCart] addToCart){[int] quantity} with data equality
///
/// }
@SealedManifest(_CartAndFavouriteEvent)
abstract class CartAndFavouriteEvent {
  const CartAndFavouriteEvent._internal();

  const factory CartAndFavouriteEvent.addToFavourite() =
      CartAndFavouriteEventAddToFavourite;

  const factory CartAndFavouriteEvent.addToCart({
    required int quantity,
  }) = CartAndFavouriteEventAddToCart;

  bool get isAddToFavourite => this is CartAndFavouriteEventAddToFavourite;

  bool get isAddToCart => this is CartAndFavouriteEventAddToCart;

  CartAndFavouriteEventAddToFavourite get asAddToFavourite =>
      this as CartAndFavouriteEventAddToFavourite;

  CartAndFavouriteEventAddToCart get asAddToCart =>
      this as CartAndFavouriteEventAddToCart;

  CartAndFavouriteEventAddToFavourite? get asAddToFavouriteOrNull {
    final cartAndFavouriteEvent = this;
    return cartAndFavouriteEvent is CartAndFavouriteEventAddToFavourite
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
    required R Function() addToFavourite,
    required R Function(int quantity) addToCart,
  }) {
    final cartAndFavouriteEvent = this;
    if (cartAndFavouriteEvent is CartAndFavouriteEventAddToFavourite) {
      return addToFavourite();
    } else if (cartAndFavouriteEvent is CartAndFavouriteEventAddToCart) {
      return addToCart(cartAndFavouriteEvent.quantity);
    } else {
      throw AssertionError();
    }
  }

  R maybeWhen<R extends Object?>({
    R Function()? addToFavourite,
    R Function(int quantity)? addToCart,
    required R Function(CartAndFavouriteEvent cartAndFavouriteEvent) orElse,
  }) {
    final cartAndFavouriteEvent = this;
    if (cartAndFavouriteEvent is CartAndFavouriteEventAddToFavourite) {
      return addToFavourite != null
          ? addToFavourite()
          : orElse(cartAndFavouriteEvent);
    } else if (cartAndFavouriteEvent is CartAndFavouriteEventAddToCart) {
      return addToCart != null
          ? addToCart(cartAndFavouriteEvent.quantity)
          : orElse(cartAndFavouriteEvent);
    } else {
      throw AssertionError();
    }
  }

  @Deprecated('Use `whenOrNull` instead. Will be removed by next release.')
  void partialWhen({
    void Function()? addToFavourite,
    void Function(int quantity)? addToCart,
    void Function(CartAndFavouriteEvent cartAndFavouriteEvent)? orElse,
  }) {
    final cartAndFavouriteEvent = this;
    if (cartAndFavouriteEvent is CartAndFavouriteEventAddToFavourite) {
      if (addToFavourite != null) {
        addToFavourite();
      } else if (orElse != null) {
        orElse(cartAndFavouriteEvent);
      }
    } else if (cartAndFavouriteEvent is CartAndFavouriteEventAddToCart) {
      if (addToCart != null) {
        addToCart(cartAndFavouriteEvent.quantity);
      } else if (orElse != null) {
        orElse(cartAndFavouriteEvent);
      }
    } else {
      throw AssertionError();
    }
  }

  R? whenOrNull<R extends Object?>({
    R Function()? addToFavourite,
    R Function(int quantity)? addToCart,
    R Function(CartAndFavouriteEvent cartAndFavouriteEvent)? orElse,
  }) {
    final cartAndFavouriteEvent = this;
    if (cartAndFavouriteEvent is CartAndFavouriteEventAddToFavourite) {
      return addToFavourite != null
          ? addToFavourite()
          : orElse?.call(cartAndFavouriteEvent);
    } else if (cartAndFavouriteEvent is CartAndFavouriteEventAddToCart) {
      return addToCart != null
          ? addToCart(cartAndFavouriteEvent.quantity)
          : orElse?.call(cartAndFavouriteEvent);
    } else {
      throw AssertionError();
    }
  }

  R map<R extends Object?>({
    required R Function(CartAndFavouriteEventAddToFavourite addToFavourite)
        addToFavourite,
    required R Function(CartAndFavouriteEventAddToCart addToCart) addToCart,
  }) {
    final cartAndFavouriteEvent = this;
    if (cartAndFavouriteEvent is CartAndFavouriteEventAddToFavourite) {
      return addToFavourite(cartAndFavouriteEvent);
    } else if (cartAndFavouriteEvent is CartAndFavouriteEventAddToCart) {
      return addToCart(cartAndFavouriteEvent);
    } else {
      throw AssertionError();
    }
  }

  R maybeMap<R extends Object?>({
    R Function(CartAndFavouriteEventAddToFavourite addToFavourite)?
        addToFavourite,
    R Function(CartAndFavouriteEventAddToCart addToCart)? addToCart,
    required R Function(CartAndFavouriteEvent cartAndFavouriteEvent) orElse,
  }) {
    final cartAndFavouriteEvent = this;
    if (cartAndFavouriteEvent is CartAndFavouriteEventAddToFavourite) {
      return addToFavourite != null
          ? addToFavourite(cartAndFavouriteEvent)
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
    void Function(CartAndFavouriteEventAddToFavourite addToFavourite)?
        addToFavourite,
    void Function(CartAndFavouriteEventAddToCart addToCart)? addToCart,
    void Function(CartAndFavouriteEvent cartAndFavouriteEvent)? orElse,
  }) {
    final cartAndFavouriteEvent = this;
    if (cartAndFavouriteEvent is CartAndFavouriteEventAddToFavourite) {
      if (addToFavourite != null) {
        addToFavourite(cartAndFavouriteEvent);
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
    R Function(CartAndFavouriteEventAddToFavourite addToFavourite)?
        addToFavourite,
    R Function(CartAndFavouriteEventAddToCart addToCart)? addToCart,
    R Function(CartAndFavouriteEvent cartAndFavouriteEvent)? orElse,
  }) {
    final cartAndFavouriteEvent = this;
    if (cartAndFavouriteEvent is CartAndFavouriteEventAddToFavourite) {
      return addToFavourite != null
          ? addToFavourite(cartAndFavouriteEvent)
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

/// (([CartAndFavouriteEventAddToFavourite] : [CartAndFavouriteEvent]) addToFavourite){}
///
/// with data equality
class CartAndFavouriteEventAddToFavourite extends CartAndFavouriteEvent
    with EquatableMixin {
  const CartAndFavouriteEventAddToFavourite() : super._internal();

  @override
  String toString() => 'CartAndFavouriteEvent.addToFavourite()';

  @override
  List<Object?> get props => [];
}

/// (([CartAndFavouriteEventAddToCart] : [CartAndFavouriteEvent]) addToCart){[int] quantity}
///
/// with data equality
class CartAndFavouriteEventAddToCart extends CartAndFavouriteEvent
    with EquatableMixin {
  const CartAndFavouriteEventAddToCart({
    required this.quantity,
  }) : super._internal();

  final int quantity;

  @override
  String toString() => 'CartAndFavouriteEvent.addToCart(quantity: $quantity)';

  @override
  List<Object?> get props => [
        quantity,
      ];
}
