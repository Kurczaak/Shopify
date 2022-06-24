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
    productWatcherBloc = ProductWatcherBloc(repository: mockShopRepository);
    initialState =
        ProductWatcherState.initial().copyWith(shopOption: some(tShop));
  });

  blocTest('Init state should pass the initialized shop',
      build: () => productWatcherBloc,
      act: (ProductWatcherBloc bloc) =>
          bloc.add(ProductWatcherEvent.initialize(shop: tShop)),
      verify: (ProductWatcherBloc bloc) {
        expect(bloc.state.shopOption, some(tShop));
      });

  group('categoryChosen', () {
    final category = Category(Categories.bread);
    setUp(() {
      when(mockShopRepository.watchAllFromShopByCategory(tShop, category))
          .thenAnswer((_) => Stream.fromFuture(
              Future.value(right(KtList.from([tPricedProduct])))));
    });
    blocTest(
        'should emit state with chosen category, nono() as productsOption list, [LOADING], and some() fetched productsOption',
        build: () => productWatcherBloc,
        seed: () => initialState,
        act: (ProductWatcherBloc bloc) =>
            bloc.add(ProductWatcherEvent.categoryChosen(category: category)),
        expect: () => [
              initialState.copyWith(
                  categoryOption: some(category), productsOption: none()),
              initialState.copyWith(
                  categoryOption: some(category),
                  productsOption: none(),
                  isLoading: true),
              initialState.copyWith(
                  categoryOption: some(category),
                  isLoading: false,
                  productsOption: some(KtList.from([tPricedProduct]))),
            ]);

    blocTest(
      'should call product repository if categoryOption is some',
      build: () => productWatcherBloc,
      seed: () => initialState,
      act: (ProductWatcherBloc bloc) =>
          bloc.add(ProductWatcherEvent.categoryChosen(category: category)),
      verify: (ProductWatcherBloc bloc) {
        verify(mockShopRepository.watchAllFromShopByCategory(
            tShop,
            bloc.state.categoryOption
                .getOrElse(() => throw const Unexpected())));
      },
    );

    blocTest('should emit [ERROR] if no shop has been provided',
        build: () => productWatcherBloc,
        seed: () => ProductWatcherState.initial(),
        act: (ProductWatcherBloc bloc) =>
            bloc.add(ProductWatcherEvent.categoryChosen(category: category)),
        expect: () => [
              ProductWatcherState.initial().copyWith(
                  failureOption: some(const ProductFailure.unexpected()))
            ]);
  });

  group('clearCategoryAndProducts', () {
    final category = Category(Categories.bread);
    blocTest('should set category nad productsOption to none()',
        build: () => productWatcherBloc,
        seed: () => initialState.copyWith(
            categoryOption: some(category),
            productsOption: some(KtList.from([tPricedProduct]))),
        act: (ProductWatcherBloc bloc) =>
            bloc.add(const ProductWatcherEvent.clearCategoryAndProducts()),
        expect: () => [
              initialState.copyWith(
                  categoryOption: none(), productsOption: none())
            ]);
  });

  group('searchedForProducts', () {
    final category = Category(Categories.bread);
    const String query = "juice";

    setUp(() {
      when(mockShopRepository.searchInShop(tShop, query))
          .thenAnswer((_) async => right(KtList.from([tPricedProduct])));
      when(mockShopRepository.searchInShopWithCategory(tShop, query, category))
          .thenAnswer((_) async => right(KtList.from([tPricedProduct])));
    });

    blocTest('should return [ERROR] if shop is none',
        build: () => productWatcherBloc,
        seed: () => ProductWatcherState.initial(),
        act: (ProductWatcherBloc bloc) =>
            bloc.add(const ProductWatcherEvent.searchedForProduct(term: query)),
        expect: () => [
              ProductWatcherState.initial().copyWith(
                  failureOption: some(const ProductFailure.unexpected()))
            ]);
    blocTest(
      'should call searchInShopWithCategory if category is chosen',
      build: () => productWatcherBloc,
      seed: () => initialState.copyWith(categoryOption: some(category)),
      act: (ProductWatcherBloc bloc) =>
          bloc.add(const ProductWatcherEvent.searchedForProduct(term: query)),
      verify: (ProductWatcherBloc bloc) {
        verify(mockShopRepository.searchInShopWithCategory(
            tShop, query, category));
      },
    );
    blocTest(
      'should call searchInShop if category has not been chosen',
      build: () => productWatcherBloc,
      seed: () => initialState.copyWith(),
      act: (ProductWatcherBloc bloc) =>
          bloc.add(const ProductWatcherEvent.searchedForProduct(term: query)),
      verify: (ProductWatcherBloc bloc) {
        verify(mockShopRepository.searchInShop(tShop, query));
      },
    );

    blocTest(
        'should emit [LOADING], and [LOADED] states when searchInShop is called',
        build: () => productWatcherBloc,
        seed: () => initialState,
        act: (ProductWatcherBloc bloc) =>
            bloc.add(const ProductWatcherEvent.searchedForProduct(term: query)),
        verify: (ProductWatcherBloc bloc) {
          verify(mockShopRepository.searchInShop(tShop, query));
        },
        expect: () => [
              initialState.copyWith(isLoading: true, productsOption: none()),
              initialState.copyWith(
                  productsOption: some(KtList.from([tPricedProduct])))
            ]);

    blocTest(
        'should emit [LOADING], and [LOADED] states when searchInShopWithCategory is called',
        build: () => productWatcherBloc,
        seed: () => initialState.copyWith(categoryOption: some(category)),
        act: (ProductWatcherBloc bloc) =>
            bloc.add(const ProductWatcherEvent.searchedForProduct(term: query)),
        verify: (ProductWatcherBloc bloc) {
          verify(mockShopRepository.searchInShopWithCategory(
              tShop, query, category));
        },
        expect: () => [
              initialState.copyWith(
                  categoryOption: some(category),
                  isLoading: true,
                  productsOption: none()),
              initialState.copyWith(
                  categoryOption: some(category),
                  productsOption: some(KtList.from([tPricedProduct])))
            ]);
  });
}
