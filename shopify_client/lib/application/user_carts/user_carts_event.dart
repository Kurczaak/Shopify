part of 'user_carts_bloc.dart';

@Sealed()
abstract class _UserCartsEvent {
  void watchAllCarts();
  void createOrders();
}
