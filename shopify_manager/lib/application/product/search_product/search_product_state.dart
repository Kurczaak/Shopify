part of 'search_product_bloc.dart';

@Sealed()
abstract class _SearchProductState {
  void initial();
  void loading();
  void loaded(Option<ProductFailure> failureOption,
      Option<Product> productOption, bool productExists);
}
