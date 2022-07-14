// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_watcher_bloc.dart';

// **************************************************************************
// Generator: sealed_generators
// **************************************************************************

/// [OrderWatcherEvent] {
///
/// ([OrderWatcherEventWatchPendingOrders] watchPendingOrders){} with data equality
///
/// ([OrderWatcherEventWatchCompletedOrders] watchCompletedOrders){} with data equality
///
/// ([OrderWatcherEventWatchCollectedOrders] watchCollectedOrders){} with data equality
///
/// }
@SealedManifest(_OrderWatcherEvent)
abstract class OrderWatcherEvent {
  const OrderWatcherEvent._internal();

  const factory OrderWatcherEvent.watchPendingOrders() =
      OrderWatcherEventWatchPendingOrders;

  const factory OrderWatcherEvent.watchCompletedOrders() =
      OrderWatcherEventWatchCompletedOrders;

  const factory OrderWatcherEvent.watchCollectedOrders() =
      OrderWatcherEventWatchCollectedOrders;

  bool get isWatchPendingOrders => this is OrderWatcherEventWatchPendingOrders;

  bool get isWatchCompletedOrders =>
      this is OrderWatcherEventWatchCompletedOrders;

  bool get isWatchCollectedOrders =>
      this is OrderWatcherEventWatchCollectedOrders;

  OrderWatcherEventWatchPendingOrders get asWatchPendingOrders =>
      this as OrderWatcherEventWatchPendingOrders;

  OrderWatcherEventWatchCompletedOrders get asWatchCompletedOrders =>
      this as OrderWatcherEventWatchCompletedOrders;

  OrderWatcherEventWatchCollectedOrders get asWatchCollectedOrders =>
      this as OrderWatcherEventWatchCollectedOrders;

  OrderWatcherEventWatchPendingOrders? get asWatchPendingOrdersOrNull {
    final orderWatcherEvent = this;
    return orderWatcherEvent is OrderWatcherEventWatchPendingOrders
        ? orderWatcherEvent
        : null;
  }

  OrderWatcherEventWatchCompletedOrders? get asWatchCompletedOrdersOrNull {
    final orderWatcherEvent = this;
    return orderWatcherEvent is OrderWatcherEventWatchCompletedOrders
        ? orderWatcherEvent
        : null;
  }

  OrderWatcherEventWatchCollectedOrders? get asWatchCollectedOrdersOrNull {
    final orderWatcherEvent = this;
    return orderWatcherEvent is OrderWatcherEventWatchCollectedOrders
        ? orderWatcherEvent
        : null;
  }

  R when<R extends Object?>({
    required R Function() watchPendingOrders,
    required R Function() watchCompletedOrders,
    required R Function() watchCollectedOrders,
  }) {
    final orderWatcherEvent = this;
    if (orderWatcherEvent is OrderWatcherEventWatchPendingOrders) {
      return watchPendingOrders();
    } else if (orderWatcherEvent is OrderWatcherEventWatchCompletedOrders) {
      return watchCompletedOrders();
    } else if (orderWatcherEvent is OrderWatcherEventWatchCollectedOrders) {
      return watchCollectedOrders();
    } else {
      throw AssertionError();
    }
  }

  R maybeWhen<R extends Object?>({
    R Function()? watchPendingOrders,
    R Function()? watchCompletedOrders,
    R Function()? watchCollectedOrders,
    required R Function(OrderWatcherEvent orderWatcherEvent) orElse,
  }) {
    final orderWatcherEvent = this;
    if (orderWatcherEvent is OrderWatcherEventWatchPendingOrders) {
      return watchPendingOrders != null
          ? watchPendingOrders()
          : orElse(orderWatcherEvent);
    } else if (orderWatcherEvent is OrderWatcherEventWatchCompletedOrders) {
      return watchCompletedOrders != null
          ? watchCompletedOrders()
          : orElse(orderWatcherEvent);
    } else if (orderWatcherEvent is OrderWatcherEventWatchCollectedOrders) {
      return watchCollectedOrders != null
          ? watchCollectedOrders()
          : orElse(orderWatcherEvent);
    } else {
      throw AssertionError();
    }
  }

  @Deprecated('Use `whenOrNull` instead. Will be removed by next release.')
  void partialWhen({
    void Function()? watchPendingOrders,
    void Function()? watchCompletedOrders,
    void Function()? watchCollectedOrders,
    void Function(OrderWatcherEvent orderWatcherEvent)? orElse,
  }) {
    final orderWatcherEvent = this;
    if (orderWatcherEvent is OrderWatcherEventWatchPendingOrders) {
      if (watchPendingOrders != null) {
        watchPendingOrders();
      } else if (orElse != null) {
        orElse(orderWatcherEvent);
      }
    } else if (orderWatcherEvent is OrderWatcherEventWatchCompletedOrders) {
      if (watchCompletedOrders != null) {
        watchCompletedOrders();
      } else if (orElse != null) {
        orElse(orderWatcherEvent);
      }
    } else if (orderWatcherEvent is OrderWatcherEventWatchCollectedOrders) {
      if (watchCollectedOrders != null) {
        watchCollectedOrders();
      } else if (orElse != null) {
        orElse(orderWatcherEvent);
      }
    } else {
      throw AssertionError();
    }
  }

  R? whenOrNull<R extends Object?>({
    R Function()? watchPendingOrders,
    R Function()? watchCompletedOrders,
    R Function()? watchCollectedOrders,
    R Function(OrderWatcherEvent orderWatcherEvent)? orElse,
  }) {
    final orderWatcherEvent = this;
    if (orderWatcherEvent is OrderWatcherEventWatchPendingOrders) {
      return watchPendingOrders != null
          ? watchPendingOrders()
          : orElse?.call(orderWatcherEvent);
    } else if (orderWatcherEvent is OrderWatcherEventWatchCompletedOrders) {
      return watchCompletedOrders != null
          ? watchCompletedOrders()
          : orElse?.call(orderWatcherEvent);
    } else if (orderWatcherEvent is OrderWatcherEventWatchCollectedOrders) {
      return watchCollectedOrders != null
          ? watchCollectedOrders()
          : orElse?.call(orderWatcherEvent);
    } else {
      throw AssertionError();
    }
  }

  R map<R extends Object?>({
    required R Function(OrderWatcherEventWatchPendingOrders watchPendingOrders)
        watchPendingOrders,
    required R Function(
            OrderWatcherEventWatchCompletedOrders watchCompletedOrders)
        watchCompletedOrders,
    required R Function(
            OrderWatcherEventWatchCollectedOrders watchCollectedOrders)
        watchCollectedOrders,
  }) {
    final orderWatcherEvent = this;
    if (orderWatcherEvent is OrderWatcherEventWatchPendingOrders) {
      return watchPendingOrders(orderWatcherEvent);
    } else if (orderWatcherEvent is OrderWatcherEventWatchCompletedOrders) {
      return watchCompletedOrders(orderWatcherEvent);
    } else if (orderWatcherEvent is OrderWatcherEventWatchCollectedOrders) {
      return watchCollectedOrders(orderWatcherEvent);
    } else {
      throw AssertionError();
    }
  }

  R maybeMap<R extends Object?>({
    R Function(OrderWatcherEventWatchPendingOrders watchPendingOrders)?
        watchPendingOrders,
    R Function(OrderWatcherEventWatchCompletedOrders watchCompletedOrders)?
        watchCompletedOrders,
    R Function(OrderWatcherEventWatchCollectedOrders watchCollectedOrders)?
        watchCollectedOrders,
    required R Function(OrderWatcherEvent orderWatcherEvent) orElse,
  }) {
    final orderWatcherEvent = this;
    if (orderWatcherEvent is OrderWatcherEventWatchPendingOrders) {
      return watchPendingOrders != null
          ? watchPendingOrders(orderWatcherEvent)
          : orElse(orderWatcherEvent);
    } else if (orderWatcherEvent is OrderWatcherEventWatchCompletedOrders) {
      return watchCompletedOrders != null
          ? watchCompletedOrders(orderWatcherEvent)
          : orElse(orderWatcherEvent);
    } else if (orderWatcherEvent is OrderWatcherEventWatchCollectedOrders) {
      return watchCollectedOrders != null
          ? watchCollectedOrders(orderWatcherEvent)
          : orElse(orderWatcherEvent);
    } else {
      throw AssertionError();
    }
  }

  @Deprecated('Use `mapOrNull` instead. Will be removed by next release.')
  void partialMap({
    void Function(OrderWatcherEventWatchPendingOrders watchPendingOrders)?
        watchPendingOrders,
    void Function(OrderWatcherEventWatchCompletedOrders watchCompletedOrders)?
        watchCompletedOrders,
    void Function(OrderWatcherEventWatchCollectedOrders watchCollectedOrders)?
        watchCollectedOrders,
    void Function(OrderWatcherEvent orderWatcherEvent)? orElse,
  }) {
    final orderWatcherEvent = this;
    if (orderWatcherEvent is OrderWatcherEventWatchPendingOrders) {
      if (watchPendingOrders != null) {
        watchPendingOrders(orderWatcherEvent);
      } else if (orElse != null) {
        orElse(orderWatcherEvent);
      }
    } else if (orderWatcherEvent is OrderWatcherEventWatchCompletedOrders) {
      if (watchCompletedOrders != null) {
        watchCompletedOrders(orderWatcherEvent);
      } else if (orElse != null) {
        orElse(orderWatcherEvent);
      }
    } else if (orderWatcherEvent is OrderWatcherEventWatchCollectedOrders) {
      if (watchCollectedOrders != null) {
        watchCollectedOrders(orderWatcherEvent);
      } else if (orElse != null) {
        orElse(orderWatcherEvent);
      }
    } else {
      throw AssertionError();
    }
  }

  R? mapOrNull<R extends Object?>({
    R Function(OrderWatcherEventWatchPendingOrders watchPendingOrders)?
        watchPendingOrders,
    R Function(OrderWatcherEventWatchCompletedOrders watchCompletedOrders)?
        watchCompletedOrders,
    R Function(OrderWatcherEventWatchCollectedOrders watchCollectedOrders)?
        watchCollectedOrders,
    R Function(OrderWatcherEvent orderWatcherEvent)? orElse,
  }) {
    final orderWatcherEvent = this;
    if (orderWatcherEvent is OrderWatcherEventWatchPendingOrders) {
      return watchPendingOrders != null
          ? watchPendingOrders(orderWatcherEvent)
          : orElse?.call(orderWatcherEvent);
    } else if (orderWatcherEvent is OrderWatcherEventWatchCompletedOrders) {
      return watchCompletedOrders != null
          ? watchCompletedOrders(orderWatcherEvent)
          : orElse?.call(orderWatcherEvent);
    } else if (orderWatcherEvent is OrderWatcherEventWatchCollectedOrders) {
      return watchCollectedOrders != null
          ? watchCollectedOrders(orderWatcherEvent)
          : orElse?.call(orderWatcherEvent);
    } else {
      throw AssertionError();
    }
  }
}

/// (([OrderWatcherEventWatchPendingOrders] : [OrderWatcherEvent]) watchPendingOrders){}
///
/// with data equality
class OrderWatcherEventWatchPendingOrders extends OrderWatcherEvent
    with EquatableMixin {
  const OrderWatcherEventWatchPendingOrders() : super._internal();

  @override
  String toString() => 'OrderWatcherEvent.watchPendingOrders()';

  @override
  List<Object?> get props => [];
}

/// (([OrderWatcherEventWatchCompletedOrders] : [OrderWatcherEvent]) watchCompletedOrders){}
///
/// with data equality
class OrderWatcherEventWatchCompletedOrders extends OrderWatcherEvent
    with EquatableMixin {
  const OrderWatcherEventWatchCompletedOrders() : super._internal();

  @override
  String toString() => 'OrderWatcherEvent.watchCompletedOrders()';

  @override
  List<Object?> get props => [];
}

/// (([OrderWatcherEventWatchCollectedOrders] : [OrderWatcherEvent]) watchCollectedOrders){}
///
/// with data equality
class OrderWatcherEventWatchCollectedOrders extends OrderWatcherEvent
    with EquatableMixin {
  const OrderWatcherEventWatchCollectedOrders() : super._internal();

  @override
  String toString() => 'OrderWatcherEvent.watchCollectedOrders()';

  @override
  List<Object?> get props => [];
}
