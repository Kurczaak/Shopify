part of 'product_form_bloc.dart';

@Sealed()
abstract class _ProductFormEvent {
  void categoryChanged(Categories category);
  void productNameChanged(String productName);
  void brandNameChanged(String brandName);
  void weightNumberChanged(String weightNumber);
  void weightUnitChanged(WeightUnits weightUnit);
  void priceChanged(String price);
  void currencyChanged(Currencies currency);
  void productDescriptionChanged(String productDescription);
  void ingredientsChanged(String ingredients);
  void photosFilesChanged();
  void productFound(Product product);
  void saved();
}
