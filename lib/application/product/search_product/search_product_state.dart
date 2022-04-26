part of 'search_product_bloc.dart';

@superEnum
enum $SearchProductState {
  @object
  Initial,
  @object
  Loading,
  @Data(fields: [
    DataField<Option<ProductFailure>>('failureOption'),
    DataField<Option<Product>>('productOption'),
    DataField<bool>('productExists'),
  ])
  Loaded,
}
