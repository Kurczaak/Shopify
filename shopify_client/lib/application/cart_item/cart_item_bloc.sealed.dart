// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_item_bloc.dart';

// **************************************************************************
// Generator: sealed_generators
// **************************************************************************

/// [CartItemEvent] {
///
/// ([CartItemEventRemove] remove){} with data equality
///
/// ([CartItemEventIncrement] increment){} with data equality
///
/// ([CartItemEventDecrement] decrement){} with data equality
///
/// ([CartItemEventInitialize] initialize){[CartItem] cartItem} with data equality
///
/// }
@SealedManifest(_CartItemEvent)
abstract class CartItemEvent {
  const CartItemEvent._internal();

  const factory CartItemEvent.remove() = CartItemEventRemove;

  const factory CartItemEvent.increment() = CartItemEventIncrement;

  const factory CartItemEvent.decrement() = CartItemEventDecrement;

  const factory CartItemEvent.initialize({
    required CartItem cartItem,
  }) = CartItemEventInitialize;

  bool get isRemove => this is CartItemEventRemove;

  bool get isIncrement => this is CartItemEventIncrement;

  bool get isDecrement => this is CartItemEventDecrement;

  bool get isInitialize => this is CartItemEventInitialize;

  CartItemEventRemove get asRemove => this as CartItemEventRemove;

  CartItemEventIncrement get asIncrement => this as CartItemEventIncrement;

  CartItemEventDecrement get asDecrement => this as CartItemEventDecrement;

  CartItemEventInitialize get asInitialize => this as CartItemEventInitialize;

  CartItemEventRemove? get asRemoveOrNull {
    final cartItemEvent = this;
    return cartItemEvent is CartItemEventRemove ? cartItemEvent : null;
  }

  CartItemEventIncrement? get asIncrementOrNull {
    final cartItemEvent = this;
    return cartItemEvent is CartItemEventIncrement ? cartItemEvent : null;
  }

  CartItemEventDecrement? get asDecrementOrNull {
    final cartItemEvent = this;
    return cartItemEvent is CartItemEventDecrement ? cartItemEvent : null;
  }

  CartItemEventInitialize? get asInitializeOrNull {
    final cartItemEvent = this;
    return cartItemEvent is CartItemEventInitialize ? cartItemEvent : null;
  }

  R when<R extends Object?>({
    required R Function() remove,
    required R Function() increment,
    required R Function() decrement,
    required R Function(CartItem cartItem) initialize,
  }) {
    final cartItemEvent = this;
    if (cartItemEvent is CartItemEventRemove) {
      return remove();
    } else if (cartItemEvent is CartItemEventIncrement) {
      return increment();
    } else if (cartItemEvent is CartItemEventDecrement) {
      return decrement();
    } else if (cartItemEvent is CartItemEventInitialize) {
      return initialize(cartItemEvent.cartItem);
    } else {
      throw AssertionError();
    }
  }

  R maybeWhen<R extends Object?>({
    R Function()? remove,
    R Function()? increment,
    R Function()? decrement,
    R Function(CartItem cartItem)? initialize,
    required R Function(CartItemEvent cartItemEvent) orElse,
  }) {
    final cartItemEvent = this;
    if (cartItemEvent is CartItemEventRemove) {
      return remove != null ? remove() : orElse(cartItemEvent);
    } else if (cartItemEvent is CartItemEventIncrement) {
      return increment != null ? increment() : orElse(cartItemEvent);
    } else if (cartItemEvent is CartItemEventDecrement) {
      return decrement != null ? decrement() : orElse(cartItemEvent);
    } else if (cartItemEvent is CartItemEventInitialize) {
      return initialize != null
          ? initialize(cartItemEvent.cartItem)
          : orElse(cartItemEvent);
    } else {
      throw AssertionError();
    }
  }

  @Deprecated('Use `whenOrNull` instead. Will be removed by next release.')
  void partialWhen({
    void Function()? remove,
    void Function()? increment,
    void Function()? decrement,
    void Function(CartItem cartItem)? initialize,
    void Function(CartItemEvent cartItemEvent)? orElse,
  }) {
    final cartItemEvent = this;
    if (cartItemEvent is CartItemEventRemove) {
      if (remove != null) {
        remove();
      } else if (orElse != null) {
        orElse(cartItemEvent);
      }
    } else if (cartItemEvent is CartItemEventIncrement) {
      if (increment != null) {
        increment();
      } else if (orElse != null) {
        orElse(cartItemEvent);
      }
    } else if (cartItemEvent is CartItemEventDecrement) {
      if (decrement != null) {
        decrement();
      } else if (orElse != null) {
        orElse(cartItemEvent);
      }
    } else if (cartItemEvent is CartItemEventInitialize) {
      if (initialize != null) {
        initialize(cartItemEvent.cartItem);
      } else if (orElse != null) {
        orElse(cartItemEvent);
      }
    } else {
      throw AssertionError();
    }
  }

  R? whenOrNull<R extends Object?>({
    R Function()? remove,
    R Function()? increment,
    R Function()? decrement,
    R Function(CartItem cartItem)? initialize,
    R Function(CartItemEvent cartItemEvent)? orElse,
  }) {
    final cartItemEvent = this;
    if (cartItemEvent is CartItemEventRemove) {
      return remove != null ? remove() : orElse?.call(cartItemEvent);
    } else if (cartItemEvent is CartItemEventIncrement) {
      return increment != null ? increment() : orElse?.call(cartItemEvent);
    } else if (cartItemEvent is CartItemEventDecrement) {
      return decrement != null ? decrement() : orElse?.call(cartItemEvent);
    } else if (cartItemEvent is CartItemEventInitialize) {
      return initialize != null
          ? initialize(cartItemEvent.cartItem)
          : orElse?.call(cartItemEvent);
    } else {
      throw AssertionError();
    }
  }

  R map<R extends Object?>({
    required R Function(CartItemEventRemove remove) remove,
    required R Function(CartItemEventIncrement increment) increment,
    required R Function(CartItemEventDecrement decrement) decrement,
    required R Function(CartItemEventInitialize initialize) initialize,
  }) {
    final cartItemEvent = this;
    if (cartItemEvent is CartItemEventRemove) {
      return remove(cartItemEvent);
    } else if (cartItemEvent is CartItemEventIncrement) {
      return increment(cartItemEvent);
    } else if (cartItemEvent is CartItemEventDecrement) {
      return decrement(cartItemEvent);
    } else if (cartItemEvent is CartItemEventInitialize) {
      return initialize(cartItemEvent);
    } else {
      throw AssertionError();
    }
  }

  R maybeMap<R extends Object?>({
    R Function(CartItemEventRemove remove)? remove,
    R Function(CartItemEventIncrement increment)? increment,
    R Function(CartItemEventDecrement decrement)? decrement,
    R Function(CartItemEventInitialize initialize)? initialize,
    required R Function(CartItemEvent cartItemEvent) orElse,
  }) {
    final cartItemEvent = this;
    if (cartItemEvent is CartItemEventRemove) {
      return remove != null ? remove(cartItemEvent) : orElse(cartItemEvent);
    } else if (cartItemEvent is CartItemEventIncrement) {
      return increment != null
          ? increment(cartItemEvent)
          : orElse(cartItemEvent);
    } else if (cartItemEvent is CartItemEventDecrement) {
      return decrement != null
          ? decrement(cartItemEvent)
          : orElse(cartItemEvent);
    } else if (cartItemEvent is CartItemEventInitialize) {
      return initialize != null
          ? initialize(cartItemEvent)
          : orElse(cartItemEvent);
    } else {
      throw AssertionError();
    }
  }

  @Deprecated('Use `mapOrNull` instead. Will be removed by next release.')
  void partialMap({
    void Function(CartItemEventRemove remove)? remove,
    void Function(CartItemEventIncrement increment)? increment,
    void Function(CartItemEventDecrement decrement)? decrement,
    void Function(CartItemEventInitialize initialize)? initialize,
    void Function(CartItemEvent cartItemEvent)? orElse,
  }) {
    final cartItemEvent = this;
    if (cartItemEvent is CartItemEventRemove) {
      if (remove != null) {
        remove(cartItemEvent);
      } else if (orElse != null) {
        orElse(cartItemEvent);
      }
    } else if (cartItemEvent is CartItemEventIncrement) {
      if (increment != null) {
        increment(cartItemEvent);
      } else if (orElse != null) {
        orElse(cartItemEvent);
      }
    } else if (cartItemEvent is CartItemEventDecrement) {
      if (decrement != null) {
        decrement(cartItemEvent);
      } else if (orElse != null) {
        orElse(cartItemEvent);
      }
    } else if (cartItemEvent is CartItemEventInitialize) {
      if (initialize != null) {
        initialize(cartItemEvent);
      } else if (orElse != null) {
        orElse(cartItemEvent);
      }
    } else {
      throw AssertionError();
    }
  }

  R? mapOrNull<R extends Object?>({
    R Function(CartItemEventRemove remove)? remove,
    R Function(CartItemEventIncrement increment)? increment,
    R Function(CartItemEventDecrement decrement)? decrement,
    R Function(CartItemEventInitialize initialize)? initialize,
    R Function(CartItemEvent cartItemEvent)? orElse,
  }) {
    final cartItemEvent = this;
    if (cartItemEvent is CartItemEventRemove) {
      return remove != null
          ? remove(cartItemEvent)
          : orElse?.call(cartItemEvent);
    } else if (cartItemEvent is CartItemEventIncrement) {
      return increment != null
          ? increment(cartItemEvent)
          : orElse?.call(cartItemEvent);
    } else if (cartItemEvent is CartItemEventDecrement) {
      return decrement != null
          ? decrement(cartItemEvent)
          : orElse?.call(cartItemEvent);
    } else if (cartItemEvent is CartItemEventInitialize) {
      return initialize != null
          ? initialize(cartItemEvent)
          : orElse?.call(cartItemEvent);
    } else {
      throw AssertionError();
    }
  }
}

/// (([CartItemEventRemove] : [CartItemEvent]) remove){}
///
/// with data equality
class CartItemEventRemove extends CartItemEvent with EquatableMixin {
  const CartItemEventRemove() : super._internal();

  @override
  String toString() => 'CartItemEvent.remove()';

  @override
  List<Object?> get props => [];
}

/// (([CartItemEventIncrement] : [CartItemEvent]) increment){}
///
/// with data equality
class CartItemEventIncrement extends CartItemEvent with EquatableMixin {
  const CartItemEventIncrement() : super._internal();

  @override
  String toString() => 'CartItemEvent.increment()';

  @override
  List<Object?> get props => [];
}

/// (([CartItemEventDecrement] : [CartItemEvent]) decrement){}
///
/// with data equality
class CartItemEventDecrement extends CartItemEvent with EquatableMixin {
  const CartItemEventDecrement() : super._internal();

  @override
  String toString() => 'CartItemEvent.decrement()';

  @override
  List<Object?> get props => [];
}

/// (([CartItemEventInitialize] : [CartItemEvent]) initialize){[CartItem] cartItem}
///
/// with data equality
class CartItemEventInitialize extends CartItemEvent with EquatableMixin {
  const CartItemEventInitialize({
    required this.cartItem,
  }) : super._internal();

  final CartItem cartItem;

  @override
  String toString() => 'CartItemEvent.initialize(cartItem: $cartItem)';

  @override
  List<Object?> get props => [
        cartItem,
      ];
}
