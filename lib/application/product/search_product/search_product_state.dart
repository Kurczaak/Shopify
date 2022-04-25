part of 'search_product_bloc.dart';

@freezed
class SearchProductState with _$SearchProductState {
  const factory SearchProductState({
    required bool isLoading,
    required Option<ProductFailure> failureOption,
    required Option<Product> productOption,
    required bool productExists,
  }) = _SearchProductState;

  factory SearchProductState.initial() => SearchProductState(
      isLoading: false,
      failureOption: none(),
      productOption: none(),
      productExists: false);
}
