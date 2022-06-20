part of 'product_watcher_bloc.dart';

@freezed
class ProductWatcherState with _$ProductWatcherState {
  const factory ProductWatcherState({
    required Option<Shop> shopOption,
    required Option<Category> categoryOption,
    required KtList<PricedProduct> products,
    required int currentPage,
    required bool isLoading,
  }) = _ProductWatcherState;

  factory ProductWatcherState.initial() => ProductWatcherState(
      categoryOption: none(),
      currentPage: 0,
      isLoading: false,
      products: const KtList.empty(),
      shopOption: none());
}
