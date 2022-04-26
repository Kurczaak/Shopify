import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:shopify_manager/application/product/search_product/search_product_bloc.dart';
import 'package:shopify_manager/domain/product/open_food_facts/i_open_food_facts_repository.dart';
import 'package:shopify_manager/domain/product/product_failure.dart';
import 'package:shopify_manager/domain/product/value_objects.dart';
import 'package:shopify_manager/infrastructure/core/config.dart';
import '../../../fixtures/test_product.dart';
import 'search_product_bloc_test.mocks.dart';

@GenerateMocks([IOpenFoodFactsRepository])
void main() {
  late SearchProductBloc bloc;
  late MockIOpenFoodFactsRepository mockOpenFoodFactsRepository;
  const barcodeString = '12-345-ABC';

  setUp(() {
    mockOpenFoodFactsRepository = MockIOpenFoodFactsRepository();
    bloc = SearchProductBloc(mockOpenFoodFactsRepository);
  });

  group('product found in OpenFoodFacts repository', () {
    setUp(() {
      when(mockOpenFoodFactsRepository
              .getProductByBarcode(Barcode(barcodeString)))
          .thenAnswer((_) async => right(fixtureProduct));
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
              const Loading(),
              Loaded(
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
              const Loading(),
              Loaded(
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
              const Loading(),
              Loaded(
                  failureOption:
                      some(const ProductFailure.timeout(timeoutDuration)),
                  productOption: none(),
                  productExists: false),
            ]);
  });
}
