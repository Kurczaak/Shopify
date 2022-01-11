part of 'shopping_actor_bloc.dart';

@freezed
abstract class ShoppingActorState with _$ShoppingActorState {
  const factory ShoppingActorState.inital() = _Initial;
  const factory ShoppingActorState.actionInProgress() = _ActionInProgress;
  const factory ShoppingActorState.deleteFailure(ShopFailure shopFailure) =
      _DeleteFailure;
  const factory ShoppingActorState.deleteSuccess() = _DeleteSuccess;
}
