part of 'shop_actor_bloc.dart';

@freezed
class ShoppingActorEvent with _$ShoppingActorEvent {
  const factory ShoppingActorEvent.deleted(Shop shop) = _Deleted;
}
