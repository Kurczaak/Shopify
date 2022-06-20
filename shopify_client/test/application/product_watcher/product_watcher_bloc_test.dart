import 'dart:convert';

import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/collection.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:shopify_client/application/product_watcher/product_watcher_bloc.dart';
import 'package:shopify_client/domain/product/i_product_repository.dart';
import 'package:shopify_domain/product.dart';
import 'package:shopify_domain/shop.dart';

import '../../utils/fixture_reader.dart';
import 'product_watcher_bloc_test.mocks.dart';

@GenerateMocks([IProductRepository])
void main() {
  late IProductRepository mockShopRepository;
  late ProductWatcherBloc productWatcherBloc;
  late Shop tShop;
  late ProductWatcherState initialState;

  final jsonPricedProduct = json.decode(fixture('priced_product.json'));
  final tPricedProduct =
      PricedProductDto.fromJson(jsonPricedProduct).toDomain();

  setUp(() {
    mockShopRepository = MockIProductRepository();
    tShop = Shop.empty().copyWith(shopName: ShopName('ABC'));
    productWatcherBloc =
        ProductWatcherBloc(shop: tShop, repository: mockShopRepository);
    initialState = ProductWatcherState.initial(tShop);
  });

  blocTest('should pass the initialized shop',
      build: () => productWatcherBloc,
      verify: (ProductWatcherBloc bloc) {
        expect(bloc.state.shop, tShop);
      });

  group('categoryChosen', () {
    final category = Category(Categories.bread);
    setUp(() {
      when(mockShopRepository.watchAllFromShopByCategory(tShop, category))
          .thenAnswer((_) => Stream.fromFuture(
              Future.value(right(KtList.from([tPricedProduct])))));
    });
    blocTest(
        'should emit state with chosen category, [LOADING], and fetched products',
        build: () => productWatcherBloc,
        seed: () => initialState,
        act: (ProductWatcherBloc bloc) =>
            bloc.add(ProductWatcherEvent.categoryChosen(category: category)),
        expect: () => [
              initialState.copyWith(categoryOption: some(category)),
              initialState.copyWith(
                  categoryOption: some(category), isLoading: true),
              initialState.copyWith(
                  categoryOption: some(category),
                  isLoading: false,
                  products: KtList.from([tPricedProduct])),
            ]);

    blocTest(
      'should call product repository if categoryOption is some',
      build: () => productWatcherBloc,
      seed: () => initialState,
      act: (ProductWatcherBloc bloc) =>
          bloc.add(ProductWatcherEvent.categoryChosen(category: category)),
      verify: (ProductWatcherBloc bloc) {
        verify(mockShopRepository.watchAllFromShopByCategory(
            bloc.state.shop,
            bloc.state.categoryOption
                .getOrElse(() => throw const Unexpected())));
      },
    );
  });
}
