part of 'cart_and_favourite_bloc.dart';

@Sealed()
abstract class _CartAndFavouriteEvent {
  void addToFavourite();
  void addToCart({int quantity = 1});
}
