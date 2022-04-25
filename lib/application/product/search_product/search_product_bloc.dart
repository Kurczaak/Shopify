import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopify_manager/domain/product/open_food_facts/i_open_food_facts_repository.dart';
import 'package:shopify_manager/domain/product/product.dart';
import 'package:shopify_manager/domain/product/product_failure.dart';
import 'package:shopify_manager/domain/product/value_objects.dart';
import 'package:super_enum_sealed_annotations/super_enum_sealed_annotations.dart';

part 'search_product_event.dart';
part 'search_product_state.dart';
part 'search_product_bloc.freezed.dart';
part 'search_product_bloc.super.dart';

class SearchProductBloc extends Bloc<SearchProductEvent, SearchProductState> {
  final IOpenFoodFactsRepository openFoodFactsRepository;
  SearchProductBloc(this.openFoodFactsRepository)
      : super(SearchProductState.initial()) {
    on<SearchProductEvent>((event, emit) {
      event.when(searchForProduct: (searchForProduct) async {
        emit(state.copyWith(isLoading: true));
        final failureOrProduct = await openFoodFactsRepository
            .getProductByBarcode(Barcode(searchForProduct.barcode));
        failureOrProduct.fold(
            (failure) => emit(SearchProductState(
                isLoading: false,
                failureOption: some(failure),
                productOption: none(),
                productExists: false)),
            (product) => emit(SearchProductState(
                failureOption: none(),
                isLoading: false,
                productExists: false,
                productOption: some(product))));
      });
    });
  }
}
