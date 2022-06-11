import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:shopify_domain/product.dart';
import 'package:shopify_manager/domain/product/i_open_food_facts_repository.dart';
import 'package:sealed_annotations/sealed_annotations.dart';
import 'package:shopify_manager/domain/product/i_product_repository.dart';

part 'search_product_bloc.sealed.dart';
part 'search_product_event.dart';
part 'search_product_state.dart';

@injectable
class SearchProductBloc extends Bloc<SearchProductEvent, SearchProductState> {
  final IOpenFoodFactsRepository openFoodFactsRepository;
  final IProductRepository shopifyProductsRepository;
  SearchProductBloc(
      {required this.openFoodFactsRepository,
      required this.shopifyProductsRepository})
      : super(const SearchProductState.initial()) {
    on<SearchProductEvent>((event, emit) async {
      await event.when(searchForProduct: (barcode) async {
        emit(const SearchProductStateLoading());
        final failureOrShopifyProduct =
            await shopifyProductsRepository.getByBarcode(Barcode(barcode));
        await failureOrShopifyProduct.fold((failure) async {
          final failureOrProduct = await openFoodFactsRepository
              .getProductByBarcode(Barcode(barcode));
          failureOrProduct.fold(
              (failure) => emit(SearchProductStateLoaded(
                  failureOption: some(failure),
                  productOption: none(),
                  productExists: false)),
              (product) => emit(SearchProductStateLoaded(
                  failureOption: none(),
                  productExists: false,
                  productOption: some(product))));
        }, (shopifyProduct) {
          emit(
            SearchProductStateLoaded(
                failureOption: none(),
                productOption: some(shopifyProduct),
                productExists: true),
          );
        });
      });
    });
  }
}
