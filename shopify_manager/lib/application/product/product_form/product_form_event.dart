part of 'product_form_bloc.dart';

@superEnum
enum _ProductFormEvent {
  @Data(fields: [DataField<Categories>('category')])
  CategoryChanged,
  @Data(fields: [DataField<String>('productName')])
  ProductNameChanged,
  @Data(fields: [DataField<String>('brandName')])
  BrandNameChanged,
  @Data(fields: [DataField<String>('weightNumber')])
  WeightNumberChanged,
  @Data(fields: [DataField<WeightUnits>('weightUnit')])
  WeightUnitChanged,
  @Data(fields: [DataField<String>('price')])
  PriceChanged,
  @Data(fields: [DataField<Currencies>('currency')])
  CurrencyChanged,
  @Data(fields: [DataField<String>('productDescription')])
  ProductDescriptionChanged,
  @Data(fields: [DataField<String>('ingredients')])
  IngredientsChanged,
  @object
  PhotosFilesChanged,
  @Data(fields: [DataField<Product>('product')])
  ProductFound,
  @object
  Saved
}
