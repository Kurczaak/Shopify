part of 'product_preview_bloc.dart';

@freezed
class ProductPreviewState with _$ProductPreviewState {
  const ProductPreviewState._();

  Option<Unit> get shopAndProductOption {
    if (shopOption.isNone() || productOption.isNone()) {
      return none();
    } else {
      return some(unit);
    }
  }

  Shop get getShopOrCrash => shopOption.getOrElse(() => throw UnimplementedError(
      'An error ocurred when calling getShopOrCrash in product preview state'));
  Product get getProductOrCrash =>
      productOption.getOrElse(() => throw UnimplementedError(
          'An error ocurred when calling getProductOrCrash in product preview state'));

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
