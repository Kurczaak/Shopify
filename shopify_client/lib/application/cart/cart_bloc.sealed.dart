// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_bloc.dart';

// **************************************************************************
// Generator: sealed_generators
// **************************************************************************

/// [CartEvent] {
///
/// ([CartEventWatchAllCarts] watchAllCarts){} with data equality
///
/// ([CartEventCreateOrders] createOrders){} with data equality
///
/// }
@SealedManifest(_CartEvent)
abstract class CartEvent {
  const CartEvent._internal();

  const factory CartEvent.watchAllCarts() = CartEventWatchAllCarts;

  const factory CartEvent.createOrders() = CartEventCreateOrders;

  bool get isWatchAllCarts => this is CartEventWatchAllCarts;

  bool get isCreateOrders => this is CartEventCreateOrders;

  CartEventWatchAllCarts get asWatchAllCarts => this as CartEventWatchAllCarts;

  CartEventCreateOrders get asCreateOrders => this as CartEventCreateOrders;

  CartEventWatchAllCarts? get asWatchAllCartsOrNull {
    final cartEvent = this;
    return cartEvent is CartEventWatchAllCarts ? cartEvent : null;
  }

  CartEventCreateOrders? get asCreateOrdersOrNull {
    final cartEvent = this;
    return cartEvent is CartEventCreateOrders ? cartEvent : null;
  }

  R when<R extends Object?>({
    required R Function() watchAllCarts,
    required R Function() createOrders,
  }) {
    final cartEvent = this;
    if (cartEvent is CartEventWatchAllCarts) {
      return watchAllCarts();
    } else if (cartEvent is CartEventCreateOrders) {
      return createOrders();
    } else {
      throw AssertionError();
    }
  }

  R maybeWhen<R extends Object?>({
    R Function()? watchAllCarts,
    R Function()? createOrders,
    required R Function(CartEvent cartEvent) orElse,
  }) {
    final cartEvent = this;
    if (cartEvent is CartEventWatchAllCarts) {
      return watchAllCarts != null ? watchAllCarts() : orElse(cartEvent);
    } else if (cartEvent is CartEventCreateOrders) {
      return createOrders != null ? createOrders() : orElse(cartEvent);
    } else {
      throw AssertionError();
    }
  }

  @Deprecated('Use `whenOrNull` instead. Will be removed by next release.')
  void partialWhen({
    void Function()? watchAllCarts,
    void Function()? createOrders,
    void Function(CartEvent cartEvent)? orElse,
  }) {
    final cartEvent = this;
    if (cartEvent is CartEventWatchAllCarts) {
      if (watchAllCarts != null) {
        watchAllCarts();
      } else if (orElse != null) {
        orElse(cartEvent);
      }
    } else if (cartEvent is CartEventCreateOrders) {
      if (createOrders != null) {
        createOrders();
      } else if (orElse != null) {
        orElse(cartEvent);
      }
    } else {
      throw AssertionError();
    }
  }

  R? whenOrNull<R extends Object?>({
    R Function()? watchAllCarts,
    R Function()? createOrders,
    R Function(CartEvent cartEvent)? orElse,
  }) {
    final cartEvent = this;
    if (cartEvent is CartEventWatchAllCarts) {
      return watchAllCarts != null ? watchAllCarts() : orElse?.call(cartEvent);
    } else if (cartEvent is CartEventCreateOrders) {
      return createOrders != null ? createOrders() : orElse?.call(cartEvent);
    } else {
      throw AssertionError();
    }
  }

  R map<R extends Object?>({
    required R Function(CartEventWatchAllCarts watchAllCarts) watchAllCarts,
    required R Function(CartEventCreateOrders createOrders) createOrders,
  }) {
    final cartEvent = this;
    if (cartEvent is CartEventWatchAllCarts) {
      return watchAllCarts(cartEvent);
    } else if (cartEvent is CartEventCreateOrders) {
      return createOrders(cartEvent);
    } else {
      throw AssertionError();
    }
  }

  R maybeMap<R extends Object?>({
    R Function(CartEventWatchAllCarts watchAllCarts)? watchAllCarts,
    R Function(CartEventCreateOrders createOrders)? createOrders,
    required R Function(CartEvent cartEvent) orElse,
  }) {
    final cartEvent = this;
    if (cartEvent is CartEventWatchAllCarts) {
      return watchAllCarts != null
          ? watchAllCarts(cartEvent)
          : orElse(cartEvent);
    } else if (cartEvent is CartEventCreateOrders) {
      return createOrders != null ? createOrders(cartEvent) : orElse(cartEvent);
    } else {
      throw AssertionError();
    }
  }

  @Deprecated('Use `mapOrNull` instead. Will be removed by next release.')
  void partialMap({
    void Function(CartEventWatchAllCarts watchAllCarts)? watchAllCarts,
    void Function(CartEventCreateOrders createOrders)? createOrders,
    void Function(CartEvent cartEvent)? orElse,
  }) {
    final cartEvent = this;
    if (cartEvent is CartEventWatchAllCarts) {
      if (watchAllCarts != null) {
        watchAllCarts(cartEvent);
      } else if (orElse != null) {
        orElse(cartEvent);
      }
    } else if (cartEvent is CartEventCreateOrders) {
      if (createOrders != null) {
        createOrders(cartEvent);
      } else if (orElse != null) {
        orElse(cartEvent);
      }
    } else {
      throw AssertionError();
    }
  }

  R? mapOrNull<R extends Object?>({
    R Function(CartEventWatchAllCarts watchAllCarts)? watchAllCarts,
    R Function(CartEventCreateOrders createOrders)? createOrders,
    R Function(CartEvent cartEvent)? orElse,
  }) {
    final cartEvent = this;
    if (cartEvent is CartEventWatchAllCarts) {
      return watchAllCarts != null
          ? watchAllCarts(cartEvent)
          : orElse?.call(cartEvent);
    } else if (cartEvent is CartEventCreateOrders) {
      return createOrders != null
          ? createOrders(cartEvent)
          : orElse?.call(cartEvent);
    } else {
      throw AssertionError();
    }
  }
}

/// (([CartEventWatchAllCarts] : [CartEvent]) watchAllCarts){}
///
/// with data equality
class CartEventWatchAllCarts extends CartEvent with EquatableMixin {
  const CartEventWatchAllCarts() : super._internal();

  @override
  String toString() => 'CartEvent.watchAllCarts()';

  @override
  List<Object?> get props => [];
}

/// (([CartEventCreateOrders] : [CartEvent]) createOrders){}
///
/// with data equality
class CartEventCreateOrders extends CartEvent with EquatableMixin {
  const CartEventCreateOrders() : super._internal();

  @override
  String toString() => 'CartEvent.createOrders()';

  @override
  List<Object?> get props => [];
}
