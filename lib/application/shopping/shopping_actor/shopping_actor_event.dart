part of 'shopping_actor_bloc.dart';

@freezed
abstract class ShoppingActorEvent with _$ShoppingActorEvent {
  const factory ShoppingActorEvent.deleted(Shop shop) = _Deleted;
}
