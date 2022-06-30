part of 'cart_bloc.dart';

@Sealed()
abstract class _CartEvent {
  void watchAllCarts();
  void createOrders();
}
