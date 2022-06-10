import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:shopify_domain/core/config.dart';
import 'package:shopify_domain/product.dart';
import 'package:shopify_manager/application/product/search_product/search_product_bloc.dart';
import 'package:shopify_manager/domain/product/i_open_food_facts_repository.dart';
import 'package:shopify_manager/domain/product/i_product_repository.dart';

import '../../../fixtures/test_product.dart';
import 'search_product_bloc_test.mocks.dart';

@GenerateMocks([IOpenFoodFactsRepository, IProductRepository])
void main() {
  late SearchProductBloc bloc;
  late MockIOpenFoodFactsRepository mockOpenFoodFactsRepository;
  late MockIProductRepository mockProductRepository;
  const barcodeString = '12-345-ABC';

  setUp(() {
    mockOpenFoodFactsRepository = MockIOpenFoodFactsRepository();
    mockProductRepository = MockIProductRepository();
    bloc = SearchProductBloc(
        openFoodFactsRepository: mockOpenFoodFactsRepository,
        shopifyProductsRepository: mockProductRepository);
  });

  group('product found in OpenFoodFacts repository', () {
    setUp(() {
      when(mockOpenFoodFactsRepository
              .getProductByBarcode(Barcode(barcodeString)))
          .thenAnswer((_) async => right(fixtureProduct));
      when(mockProductRepository.getByBarcode(Barcode(barcodeString)))
          .thenAnswer(
              (_) async => left(const ProductFailure.productNotFound()));
    });
    blocTest(
        'should call openFoodFactsAPI and search for a product by a barcode',
        build: () => bloc,
        act: (SearchProductBloc bloc) => bloc.add(
            const SearchProductEvent.searchForProduct(barcode: barcodeString)),
        verify: (bloc) {
          verify(mockOpenFoodFactsRepository
              .getProductByBarcode(Barcode(barcodeString)));
        });
    blocTest(
        'should emit [LOADING] and [LOADED] with a proper product if found',
        build: () => bloc,
        act: (SearchProductBloc bloc) => bloc.add(
            const SearchProductEvent.searchForProduct(barcode: barcodeString)),
        expect: () => [
              const SearchProductStateLoading(),
              SearchProductStateLoaded(
                  failureOption: none(),
                  productOption: some(fixtureProduct),
                  productExists: false),
            ]);
    blocTest(
        'should emit [LOADING] and [LOADED] with none() if product not found',
        build: () => bloc,
        act: (SearchProductBloc bloc) => bloc.add(
            const SearchProductEvent.searchForProduct(barcode: barcodeString)),
        setUp: () {
          when(mockOpenFoodFactsRepository
                  .getProductByBarcode(Barcode(barcodeString)))
              .thenAnswer(
                  (_) async => left(const ProductFailure.productNotFound()));
        },
        expect: () => [
              const SearchProductStateLoading(),
              SearchProductStateLoaded(
                  failureOption: some(const ProductFailure.productNotFound()),
                  productOption: none(),
                  productExists: false),
            ]);
    blocTest('should emit [LOADING] and [ERROR] when an error occuers',
        build: () => bloc,
        act: (SearchProductBloc bloc) => bloc.add(
            const SearchProductEvent.searchForProduct(barcode: barcodeString)),
        setUp: () {
          when(mockOpenFoodFactsRepository
                  .getProductByBarcode(Barcode(barcodeString)))
              .thenAnswer((_) async =>
                  left(const ProductFailure.timeout(timeoutDuration)));
        },
        expect: () => [
              const SearchProductStateLoading(),
              SearchProductStateLoaded(
                  failureOption:
                      some(const ProductFailure.timeout(timeoutDuration)),
                  productOption: none(),
                  productExists: false),
            ]);
  });
}
