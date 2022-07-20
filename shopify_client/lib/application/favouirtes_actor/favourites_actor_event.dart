part of 'favourites_actor_bloc.dart';

@Sealed()
abstract class _FavouritesActorEvent {
  void initialize(UniqueId productId);
  void toggleFavourite(UniqueId productId);
}
