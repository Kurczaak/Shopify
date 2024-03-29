part of 'product_watcher_bloc.dart';

@Sealed()
abstract class _ProductWatcherEvent {
  void searchedForProduct(String term);
  void categoryChosen(Category category);
  void getNextPage();
  void initialize(Shop shop);
  void clearCategoryAndProducts();
  void watchAllProductsSelected();
}
