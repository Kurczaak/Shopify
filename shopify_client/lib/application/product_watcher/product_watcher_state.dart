part of 'product_watcher_bloc.dart';

@freezed
class ProductWatcherState with _$ProductWatcherState {
  const factory ProductWatcherState({
    required Option<Shop> shopOption,
    required Option<Category> categoryOption,
    required Option<KtList<PricedProduct>> products,
    required int currentPage,
    required bool isLoading,
    required Option<ProductFailure> failureOption,
  }) = _ProductWatcherState;

  factory ProductWatcherState.initial() => ProductWatcherState(
      categoryOption: none(),
      failureOption: none(),
      currentPage: 0,
      isLoading: false,
      products: none(),
      shopOption: none());
}
