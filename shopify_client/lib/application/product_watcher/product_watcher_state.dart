part of 'product_watcher_bloc.dart';

@freezed
class ProductWatcherState with _$ProductWatcherState {
  const ProductWatcherState._();

  const factory ProductWatcherState({
    required Option<Shop> shopOption,
    required Option<Category> categoryOption,
    required Option<KtList<PricedProduct>> productsOption,
    required int currentPage,
    required bool isLoading,
    required Option<ProductFailure> failureOption,
  }) = _ProductWatcherState;

  factory ProductWatcherState.initial() => ProductWatcherState(
      categoryOption: none(),
      failureOption: none(),
      currentPage: 0,
      isLoading: false,
      productsOption: none(),
      shopOption: none());

  Option<Unit> get productsAndCategoryOption {
    if (productsOption.isNone() && categoryOption.isNone()) {
      return none();
    }
    return some(unit);
  }
}
