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
  final Shop shop;
  final IProductRepository repository;
  ProductWatcherBloc({required this.shop, required this.repository})
      : super(ProductWatcherState.initial(shop)) {
    on<ProductWatcherEvent>((event, emit) async {
      await event.when(
          searchedForProduct: (String query) {},
          categoryChosen: (Category category) async {
            emit(state.copyWith(categoryOption: some(category)));
            emit(state.copyWith(isLoading: true));
            await state.categoryOption.fold(() async => null, (category) async {
              await emit.forEach(
                  repository.watchAllFromShopByCategory(shop, category),
                  onData:
                      (Either<ProductFailure, KtList<PricedProduct>> data) =>
                          data.fold(
                              (failure) => state,
                              (products) => state.copyWith(
                                  products: products, isLoading: false)));
            });
          },
          getNextPage: () {});
    });
  }
}
