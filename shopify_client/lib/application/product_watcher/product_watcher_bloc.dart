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

  ProductWatcherEvent? _previousEvent;

  @override
  void onEvent(ProductWatcherEvent event) {
    _previousEvent = event;
    super.onEvent(event);
  }

  void retry() {
    if (_previousEvent != null) {
      add(_previousEvent!);
    }
  }

  ProductWatcherBloc({required this.repository})
      : super(ProductWatcherState.initial()) {
    on<ProductWatcherEvent>((event, emit) async {
      await event.when(
          watchAllProductsSelected: () async {
            await state.shopOption.fold(() async => null, (shop) async {
              emit(state.copyWith(
                  productsOption: none(),
                  isLoading: true,
                  failureOption: none()));

              await emit.forEach(repository.watchAllFromShop(shop),
                  onData:
                      (Either<ProductFailure, KtList<PricedProduct>> data) =>
                          data.fold(
                              (failure) => state.copyWith(
                                  failureOption: some(failure),
                                  isLoading: false),
                              (productsOption) => state.copyWith(
                                  productsOption: some(productsOption),
                                  isLoading: false)));
            });
          },
          clearCategoryAndProducts: () {
            emit(state.copyWith(
                categoryOption: none(),
                productsOption: none(),
                failureOption: none(),
                isLoading: false));
          },
          initialize: (shop) {
            emit(state.copyWith(shopOption: some(shop)));
          },
          searchedForProduct: (String query) async {
            await state.shopOption.fold(
                () async => emit(state.copyWith(
                    failureOption: some(const ProductFailure.unexpected()))),
                (shop) async {
              emit(state.copyWith(
                  isLoading: true,
                  productsOption: none(),
                  failureOption: none()));
              final failureOrProducts = await state.categoryOption.fold(
                  () async => await repository.searchInShop(shop, query),
                  (category) async => await repository.searchInShopWithCategory(
                      shop, query, category));

              failureOrProducts.fold(
                  (failure) => emit(
                        state.copyWith(
                            failureOption: some(failure),
                            productsOption: none(),
                            isLoading: false),
                      ),
                  (productsOption) => emit(state.copyWith(
                      productsOption: some(productsOption), isLoading: false)));
            });
          },
          categoryChosen: (Category category) async {
            await state.shopOption.fold(
                () async => emit(state.copyWith(
                    failureOption: some(const ProductFailure.unexpected()))),
                (shop) async {
              emit(state.copyWith(
                  categoryOption: some(category),
                  productsOption: none(),
                  failureOption: none()));
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
                            (productsOption) => state.copyWith(
                                productsOption: some(productsOption),
                                isLoading: false)));
              });
            });
          },
          getNextPage: () {});
    });
  }
}
