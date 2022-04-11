part of 'product_form_bloc.dart';

@superEnum
enum _ProductFormEvent {
  @Data(fields: [DataField<Category>('category')])
  CategoryChanged,
  @Data(fields: [DataField<ProductName>('productName')])
  ProductNameChanged,
  @Data(fields: [DataField<BrandName>('brandName')])
  BrandNameChanged,
  @Data(fields: [DataField<Weight>('weight')])
  WeightChanged,
  @Data(fields: [DataField<Price>('brandName')])
  PriceChanged,
  @Data(fields: [DataField<ProductDescription>('productDescription')])
  ProductDescriptionChanged,
  @Data(fields: [DataField<ProductDescription>('ingredients')])
  IngredientsChanged,
  @Data(fields: [DataField<NonEmptyList5<ProductPhoto>>('photos')])
  PhotosChanged,
  @object
  Saved
}

// @freezed
// class ProductFormEvent with _$ProductFormEvent {
//   const factory ProductFormEvent.categoryChanged(Category category) =
//       CategoryChanged;
// }
