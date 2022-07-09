// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_carts_bloc.dart';

// **************************************************************************
// Generator: sealed_generators
// **************************************************************************

/// [UserCartsEvent] {
///
/// ([UserCartsEventWatchAllCarts] watchAllCarts){} with data equality
///
/// ([UserCartsEventCreateOrders] createOrders){} with data equality
///
/// }
@SealedManifest(_UserCartsEvent)
abstract class UserCartsEvent {
  const UserCartsEvent._internal();

  const factory UserCartsEvent.watchAllCarts() = UserCartsEventWatchAllCarts;

  const factory UserCartsEvent.createOrders() = UserCartsEventCreateOrders;

  bool get isWatchAllCarts => this is UserCartsEventWatchAllCarts;

  bool get isCreateOrders => this is UserCartsEventCreateOrders;

  UserCartsEventWatchAllCarts get asWatchAllCarts =>
      this as UserCartsEventWatchAllCarts;

  UserCartsEventCreateOrders get asCreateOrders =>
      this as UserCartsEventCreateOrders;

  UserCartsEventWatchAllCarts? get asWatchAllCartsOrNull {
    final userCartsEvent = this;
    return userCartsEvent is UserCartsEventWatchAllCarts
        ? userCartsEvent
        : null;
  }

  UserCartsEventCreateOrders? get asCreateOrdersOrNull {
    final userCartsEvent = this;
    return userCartsEvent is UserCartsEventCreateOrders ? userCartsEvent : null;
  }

  R when<R extends Object?>({
    required R Function() watchAllCarts,
    required R Function() createOrders,
  }) {
    final userCartsEvent = this;
    if (userCartsEvent is UserCartsEventWatchAllCarts) {
      return watchAllCarts();
    } else if (userCartsEvent is UserCartsEventCreateOrders) {
      return createOrders();
    } else {
      throw AssertionError();
    }
  }

  R maybeWhen<R extends Object?>({
    R Function()? watchAllCarts,
    R Function()? createOrders,
    required R Function(UserCartsEvent userCartsEvent) orElse,
  }) {
    final userCartsEvent = this;
    if (userCartsEvent is UserCartsEventWatchAllCarts) {
      return watchAllCarts != null ? watchAllCarts() : orElse(userCartsEvent);
    } else if (userCartsEvent is UserCartsEventCreateOrders) {
      return createOrders != null ? createOrders() : orElse(userCartsEvent);
    } else {
      throw AssertionError();
    }
  }

  @Deprecated('Use `whenOrNull` instead. Will be removed by next release.')
  void partialWhen({
    void Function()? watchAllCarts,
    void Function()? createOrders,
    void Function(UserCartsEvent userCartsEvent)? orElse,
  }) {
    final userCartsEvent = this;
    if (userCartsEvent is UserCartsEventWatchAllCarts) {
      if (watchAllCarts != null) {
        watchAllCarts();
      } else if (orElse != null) {
        orElse(userCartsEvent);
      }
    } else if (userCartsEvent is UserCartsEventCreateOrders) {
      if (createOrders != null) {
        createOrders();
      } else if (orElse != null) {
        orElse(userCartsEvent);
      }
    } else {
      throw AssertionError();
    }
  }

  R? whenOrNull<R extends Object?>({
    R Function()? watchAllCarts,
    R Function()? createOrders,
    R Function(UserCartsEvent userCartsEvent)? orElse,
  }) {
    final userCartsEvent = this;
    if (userCartsEvent is UserCartsEventWatchAllCarts) {
      return watchAllCarts != null
          ? watchAllCarts()
          : orElse?.call(userCartsEvent);
    } else if (userCartsEvent is UserCartsEventCreateOrders) {
      return createOrders != null
          ? createOrders()
          : orElse?.call(userCartsEvent);
    } else {
      throw AssertionError();
    }
  }

  R map<R extends Object?>({
    required R Function(UserCartsEventWatchAllCarts watchAllCarts)
        watchAllCarts,
    required R Function(UserCartsEventCreateOrders createOrders) createOrders,
  }) {
    final userCartsEvent = this;
    if (userCartsEvent is UserCartsEventWatchAllCarts) {
      return watchAllCarts(userCartsEvent);
    } else if (userCartsEvent is UserCartsEventCreateOrders) {
      return createOrders(userCartsEvent);
    } else {
      throw AssertionError();
    }
  }

  R maybeMap<R extends Object?>({
    R Function(UserCartsEventWatchAllCarts watchAllCarts)? watchAllCarts,
    R Function(UserCartsEventCreateOrders createOrders)? createOrders,
    required R Function(UserCartsEvent userCartsEvent) orElse,
  }) {
    final userCartsEvent = this;
    if (userCartsEvent is UserCartsEventWatchAllCarts) {
      return watchAllCarts != null
          ? watchAllCarts(userCartsEvent)
          : orElse(userCartsEvent);
    } else if (userCartsEvent is UserCartsEventCreateOrders) {
      return createOrders != null
          ? createOrders(userCartsEvent)
          : orElse(userCartsEvent);
    } else {
      throw AssertionError();
    }
  }

  @Deprecated('Use `mapOrNull` instead. Will be removed by next release.')
  void partialMap({
    void Function(UserCartsEventWatchAllCarts watchAllCarts)? watchAllCarts,
    void Function(UserCartsEventCreateOrders createOrders)? createOrders,
    void Function(UserCartsEvent userCartsEvent)? orElse,
  }) {
    final userCartsEvent = this;
    if (userCartsEvent is UserCartsEventWatchAllCarts) {
      if (watchAllCarts != null) {
        watchAllCarts(userCartsEvent);
      } else if (orElse != null) {
        orElse(userCartsEvent);
      }
    } else if (userCartsEvent is UserCartsEventCreateOrders) {
      if (createOrders != null) {
        createOrders(userCartsEvent);
      } else if (orElse != null) {
        orElse(userCartsEvent);
      }
    } else {
      throw AssertionError();
    }
  }

  R? mapOrNull<R extends Object?>({
    R Function(UserCartsEventWatchAllCarts watchAllCarts)? watchAllCarts,
    R Function(UserCartsEventCreateOrders createOrders)? createOrders,
    R Function(UserCartsEvent userCartsEvent)? orElse,
  }) {
    final userCartsEvent = this;
    if (userCartsEvent is UserCartsEventWatchAllCarts) {
      return watchAllCarts != null
          ? watchAllCarts(userCartsEvent)
          : orElse?.call(userCartsEvent);
    } else if (userCartsEvent is UserCartsEventCreateOrders) {
      return createOrders != null
          ? createOrders(userCartsEvent)
          : orElse?.call(userCartsEvent);
    } else {
      throw AssertionError();
    }
  }
}

/// (([UserCartsEventWatchAllCarts] : [UserCartsEvent]) watchAllCarts){}
///
/// with data equality
class UserCartsEventWatchAllCarts extends UserCartsEvent with EquatableMixin {
  const UserCartsEventWatchAllCarts() : super._internal();

  @override
  String toString() => 'UserCartsEvent.watchAllCarts()';

  @override
  List<Object?> get props => [];
}

/// (([UserCartsEventCreateOrders] : [UserCartsEvent]) createOrders){}
///
/// with data equality
class UserCartsEventCreateOrders extends UserCartsEvent with EquatableMixin {
  const UserCartsEventCreateOrders() : super._internal();

  @override
  String toString() => 'UserCartsEvent.createOrders()';

  @override
  List<Object?> get props => [];
}
