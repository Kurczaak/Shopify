part of 'cart_item_bloc.dart';

@Sealed()
abstract class _CartItemEvent {
  void remove();
  void increment();
  void decrement();
  void initialize(CartItem cartItem);
}
