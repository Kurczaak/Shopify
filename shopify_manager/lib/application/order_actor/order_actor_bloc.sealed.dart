// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_actor_bloc.dart';

// **************************************************************************
// Generator: sealed_generators
// **************************************************************************

/// [OrderActorEvent] {
///
/// ([OrderActorEventInitialize] initialize){[OrderStatus] orderStatus, [UniqueId] orderId} with data equality
///
/// ([OrderActorEventChangeOrderStatus] changeOrderStatus){[OrderStatusEnum] orderStatus} with data equality
///
/// }
@SealedManifest(_OrderActorEvent)
abstract class OrderActorEvent {
  const OrderActorEvent._internal();

  const factory OrderActorEvent.initialize({
    required OrderStatus orderStatus,
    required UniqueId orderId,
  }) = OrderActorEventInitialize;

  const factory OrderActorEvent.changeOrderStatus({
    required OrderStatusEnum orderStatus,
  }) = OrderActorEventChangeOrderStatus;

  bool get isInitialize => this is OrderActorEventInitialize;

  bool get isChangeOrderStatus => this is OrderActorEventChangeOrderStatus;

  OrderActorEventInitialize get asInitialize =>
      this as OrderActorEventInitialize;

  OrderActorEventChangeOrderStatus get asChangeOrderStatus =>
      this as OrderActorEventChangeOrderStatus;

  OrderActorEventInitialize? get asInitializeOrNull {
    final orderActorEvent = this;
    return orderActorEvent is OrderActorEventInitialize
        ? orderActorEvent
        : null;
  }

  OrderActorEventChangeOrderStatus? get asChangeOrderStatusOrNull {
    final orderActorEvent = this;
    return orderActorEvent is OrderActorEventChangeOrderStatus
        ? orderActorEvent
        : null;
  }

  R when<R extends Object?>({
    required R Function(OrderStatus orderStatus, UniqueId orderId) initialize,
    required R Function(OrderStatusEnum orderStatus) changeOrderStatus,
  }) {
    final orderActorEvent = this;
    if (orderActorEvent is OrderActorEventInitialize) {
      return initialize(orderActorEvent.orderStatus, orderActorEvent.orderId);
    } else if (orderActorEvent is OrderActorEventChangeOrderStatus) {
      return changeOrderStatus(orderActorEvent.orderStatus);
    } else {
      throw AssertionError();
    }
  }

  R maybeWhen<R extends Object?>({
    R Function(OrderStatus orderStatus, UniqueId orderId)? initialize,
    R Function(OrderStatusEnum orderStatus)? changeOrderStatus,
    required R Function(OrderActorEvent orderActorEvent) orElse,
  }) {
    final orderActorEvent = this;
    if (orderActorEvent is OrderActorEventInitialize) {
      return initialize != null
          ? initialize(orderActorEvent.orderStatus, orderActorEvent.orderId)
          : orElse(orderActorEvent);
    } else if (orderActorEvent is OrderActorEventChangeOrderStatus) {
      return changeOrderStatus != null
          ? changeOrderStatus(orderActorEvent.orderStatus)
          : orElse(orderActorEvent);
    } else {
      throw AssertionError();
    }
  }

  @Deprecated('Use `whenOrNull` instead. Will be removed by next release.')
  void partialWhen({
    void Function(OrderStatus orderStatus, UniqueId orderId)? initialize,
    void Function(OrderStatusEnum orderStatus)? changeOrderStatus,
    void Function(OrderActorEvent orderActorEvent)? orElse,
  }) {
    final orderActorEvent = this;
    if (orderActorEvent is OrderActorEventInitialize) {
      if (initialize != null) {
        initialize(orderActorEvent.orderStatus, orderActorEvent.orderId);
      } else if (orElse != null) {
        orElse(orderActorEvent);
      }
    } else if (orderActorEvent is OrderActorEventChangeOrderStatus) {
      if (changeOrderStatus != null) {
        changeOrderStatus(orderActorEvent.orderStatus);
      } else if (orElse != null) {
        orElse(orderActorEvent);
      }
    } else {
      throw AssertionError();
    }
  }

  R? whenOrNull<R extends Object?>({
    R Function(OrderStatus orderStatus, UniqueId orderId)? initialize,
    R Function(OrderStatusEnum orderStatus)? changeOrderStatus,
    R Function(OrderActorEvent orderActorEvent)? orElse,
  }) {
    final orderActorEvent = this;
    if (orderActorEvent is OrderActorEventInitialize) {
      return initialize != null
          ? initialize(orderActorEvent.orderStatus, orderActorEvent.orderId)
          : orElse?.call(orderActorEvent);
    } else if (orderActorEvent is OrderActorEventChangeOrderStatus) {
      return changeOrderStatus != null
          ? changeOrderStatus(orderActorEvent.orderStatus)
          : orElse?.call(orderActorEvent);
    } else {
      throw AssertionError();
    }
  }

  R map<R extends Object?>({
    required R Function(OrderActorEventInitialize initialize) initialize,
    required R Function(OrderActorEventChangeOrderStatus changeOrderStatus)
        changeOrderStatus,
  }) {
    final orderActorEvent = this;
    if (orderActorEvent is OrderActorEventInitialize) {
      return initialize(orderActorEvent);
    } else if (orderActorEvent is OrderActorEventChangeOrderStatus) {
      return changeOrderStatus(orderActorEvent);
    } else {
      throw AssertionError();
    }
  }

  R maybeMap<R extends Object?>({
    R Function(OrderActorEventInitialize initialize)? initialize,
    R Function(OrderActorEventChangeOrderStatus changeOrderStatus)?
        changeOrderStatus,
    required R Function(OrderActorEvent orderActorEvent) orElse,
  }) {
    final orderActorEvent = this;
    if (orderActorEvent is OrderActorEventInitialize) {
      return initialize != null
          ? initialize(orderActorEvent)
          : orElse(orderActorEvent);
    } else if (orderActorEvent is OrderActorEventChangeOrderStatus) {
      return changeOrderStatus != null
          ? changeOrderStatus(orderActorEvent)
          : orElse(orderActorEvent);
    } else {
      throw AssertionError();
    }
  }

  @Deprecated('Use `mapOrNull` instead. Will be removed by next release.')
  void partialMap({
    void Function(OrderActorEventInitialize initialize)? initialize,
    void Function(OrderActorEventChangeOrderStatus changeOrderStatus)?
        changeOrderStatus,
    void Function(OrderActorEvent orderActorEvent)? orElse,
  }) {
    final orderActorEvent = this;
    if (orderActorEvent is OrderActorEventInitialize) {
      if (initialize != null) {
        initialize(orderActorEvent);
      } else if (orElse != null) {
        orElse(orderActorEvent);
      }
    } else if (orderActorEvent is OrderActorEventChangeOrderStatus) {
      if (changeOrderStatus != null) {
        changeOrderStatus(orderActorEvent);
      } else if (orElse != null) {
        orElse(orderActorEvent);
      }
    } else {
      throw AssertionError();
    }
  }

  R? mapOrNull<R extends Object?>({
    R Function(OrderActorEventInitialize initialize)? initialize,
    R Function(OrderActorEventChangeOrderStatus changeOrderStatus)?
        changeOrderStatus,
    R Function(OrderActorEvent orderActorEvent)? orElse,
  }) {
    final orderActorEvent = this;
    if (orderActorEvent is OrderActorEventInitialize) {
      return initialize != null
          ? initialize(orderActorEvent)
          : orElse?.call(orderActorEvent);
    } else if (orderActorEvent is OrderActorEventChangeOrderStatus) {
      return changeOrderStatus != null
          ? changeOrderStatus(orderActorEvent)
          : orElse?.call(orderActorEvent);
    } else {
      throw AssertionError();
    }
  }
}

/// (([OrderActorEventInitialize] : [OrderActorEvent]) initialize){[OrderStatus] orderStatus, [UniqueId] orderId}
///
/// with data equality
class OrderActorEventInitialize extends OrderActorEvent with EquatableMixin {
  const OrderActorEventInitialize({
    required this.orderStatus,
    required this.orderId,
  }) : super._internal();

  final OrderStatus orderStatus;
  final UniqueId orderId;

  @override
  String toString() =>
      'OrderActorEvent.initialize(orderStatus: $orderStatus, orderId: $orderId)';

  @override
  List<Object?> get props => [
        orderStatus,
        orderId,
      ];
}

/// (([OrderActorEventChangeOrderStatus] : [OrderActorEvent]) changeOrderStatus){[OrderStatusEnum] orderStatus}
///
/// with data equality
class OrderActorEventChangeOrderStatus extends OrderActorEvent
    with EquatableMixin {
  const OrderActorEventChangeOrderStatus({
    required this.orderStatus,
  }) : super._internal();

  final OrderStatusEnum orderStatus;

  @override
  String toString() =>
      'OrderActorEvent.changeOrderStatus(orderStatus: $orderStatus)';

  @override
  List<Object?> get props => [
        orderStatus,
      ];
}
