part of 'product_adder_bloc.dart';

@Sealed()
abstract class _ProductAdderEvent {
  void selectedShopsChanged(List<Shop> shops);
  void priceNumberStringChanged(String priceNumber);
  void priceCurrencyChanged(Currencies currency);
  void saved();
  void initialize(Product product);
}
