part of 'cart_and_favourite_bloc.dart';

@Sealed()
abstract class _CartActorEvent {
  void addToCart(PricedProduct product, int quantity);
}
