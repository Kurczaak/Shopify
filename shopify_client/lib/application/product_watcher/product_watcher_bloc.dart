import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:sealed_annotations/sealed_annotations.dart';
import 'package:shopify_client/domain/product/i_product_repository.dart';
import 'package:shopify_domain/product.dart';
import 'package:shopify_domain/shop.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_watcher_event.dart';
part 'product_watcher_state.dart';
part 'product_watcher_bloc.sealed.dart';
part 'product_watcher_bloc.freezed.dart';

@Injectable()
class ProductWatcherBloc
    extends Bloc<ProductWatcherEvent, ProductWatcherState> {
  final IProductRepository repository;
  ProductWatcherBloc({required this.repository})
      : super(ProductWatcherState.initial()) {
    on<ProductWatcherEvent>((event, emit) async {
      await event.when(
          watchAllProductsSelected: () async {
            await state.shopOption.fold(() async => null, (shop) async {
              emit(state.copyWith(products: none(), isLoading: true));

              await emit.forEach(repository.watchAllFromShop(shop),
                  onData:
                      (Either<ProductFailure, KtList<PricedProduct>> data) =>
                          data.fold(
                              (failure) => state.copyWith(
                                  failureOption: some(failure),
                                  isLoading: false),
                              (products) => state.copyWith(
                                  products: some(products), isLoading: false)));
            });
          },
          clearCategoryAndProducts: () {
            emit(state.copyWith(categoryOption: none(), products: none()));
          },
          initialize: (shop) {
            emit(state.copyWith(shopOption: some(shop)));
          },
          searchedForProduct: (String query) async {
            await state.shopOption.fold(
                () async => emit(state.copyWith(
                    failureOption: some(const ProductFailure.unexpected()))),
                (shop) async {
              final failureOrProducts = await state.categoryOption.fold(
                  () async => await repository.searchInShop(shop, query),
                  (category) async => await repository.searchInShopWithCategory(
                      shop, query, category));

              failureOrProducts.fold(
                  (failure) => failure.maybeWhen(
                      noMoreProducts: () => emit(state.copyWith(
                          failureOption: some(failure),
                          products: some(const KtList.empty()))),
                      orElse: () => emit(state.copyWith(
                          failureOption: some(failure), products: none()))),
                  (products) => emit(state.copyWith(products: some(products))));
            });
          },
          categoryChosen: (Category category) async {
            await state.shopOption.fold(
                () async => emit(state.copyWith(
                    failureOption: some(const ProductFailure.unexpected()))),
                (shop) async {
              emit(state.copyWith(
                  categoryOption: some(category), products: none()));
              emit(state.copyWith(isLoading: true));
              await state.categoryOption.fold(() async => null,
                  (category) async {
                await emit.forEach(
                    repository.watchAllFromShopByCategory(shop, category),
                    onData: (Either<ProductFailure, KtList<PricedProduct>>
                            data) =>
                        data.fold(
                            (failure) =>
                                state.copyWith(failureOption: some(failure)),
                            (products) => state.copyWith(
                                products: some(products), isLoading: false)));
              });
            });
          },
          getNextPage: () {});
    });
  }
}
