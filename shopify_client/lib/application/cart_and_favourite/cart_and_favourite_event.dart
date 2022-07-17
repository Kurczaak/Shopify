part of 'cart_and_favourite_bloc.dart';

@Sealed()
abstract class _CartAndFavouriteEvent {
  void initialize(UniqueId productId);
  void toggleFavourite(UniqueId productId);
  void addToCart(PricedProduct product, int quantity);
}
