part of 'product_watcher_bloc.dart';

@Sealed()
abstract class _ProductWatcherState {
  void initial(Shop shop);
  void loading();
  void loaded(
    Shop shop,
    Category? category,
    KtList<PricedProduct> products,
    int currentPage,
  );
  void error(ProductFailure failure);
}
