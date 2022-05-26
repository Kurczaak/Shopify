part of 'search_product_bloc.dart';

@Sealed()
abstract class _SearchProductEvent {
  void searchForProduct(String barcode);
}
