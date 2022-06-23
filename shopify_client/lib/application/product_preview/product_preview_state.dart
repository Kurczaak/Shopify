part of 'product_preview_bloc.dart';

@freezed
class ProductPreviewState with _$ProductPreviewState {
  const factory ProductPreviewState({
    required Option<Shop> shopOption,
    required Option<Product> productOption,
    required bool isFavourite,
    required Option<ProductFailure> failureOption,
    required bool isLoading,
  }) = _ProductPreviewState;
  factory ProductPreviewState.initial() => ProductPreviewState(
      isFavourite: false,
      productOption: none(),
      shopOption: none(),
      failureOption: none(),
      isLoading: false);

  factory ProductPreviewState.error(
          {required ProductPreviewState previousState,
          required ProductFailure failure}) =>
      ProductPreviewState(
          isFavourite: previousState.isFavourite,
          productOption: previousState.productOption,
          shopOption: previousState.shopOption,
          failureOption: some(failure),
          isLoading: false);
  factory ProductPreviewState.loading(ProductPreviewState previousState) =>
      ProductPreviewState(
          isFavourite: previousState.isFavourite,
          productOption: previousState.productOption,
          shopOption: previousState.shopOption,
          failureOption: previousState.failureOption,
          isLoading: true);
}
