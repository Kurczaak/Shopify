import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:shopify_domain/product.dart';
import 'package:shopify_manager/domain/product/i_open_food_facts_repository.dart';
import 'package:super_enum_sealed_annotations/super_enum_sealed_annotations.dart';

part 'search_product_event.dart';
part 'search_product_state.dart';
part 'search_product_bloc.super.dart';

@injectable
class SearchProductBloc extends Bloc<SearchProductEvent, SearchProductState> {
  final IOpenFoodFactsRepository openFoodFactsRepository;
  SearchProductBloc(this.openFoodFactsRepository)
      : super(const SearchProductState.initial()) {
    on<SearchProductEvent>((event, emit) async {
      await event.when(searchForProduct: (searchForProduct) async {
        emit(const Loading());
        final failureOrProduct = await openFoodFactsRepository
            .getProductByBarcode(Barcode(searchForProduct.barcode));
        failureOrProduct.fold(
            (failure) => emit(Loaded(
                failureOption: some(failure),
                productOption: none(),
                productExists: false)),
            (product) => emit(Loaded(
                failureOption: none(),
                productExists: false,
                productOption: some(product))));
      });
    });
  }
}
