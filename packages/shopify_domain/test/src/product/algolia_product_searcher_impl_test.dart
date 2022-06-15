import 'dart:convert';

import 'package:algolia/algolia.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/kt.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:shopify_domain/core.dart';
import 'package:shopify_domain/core/network/network_info.dart';
import 'package:shopify_domain/product.dart';
import 'package:shopify_domain/src/product/algolia_product_searcher_impl.dart';

import '../../utils/fixture_reader.dart';
import 'algolia_product_searcher_impl_test.mocks.dart';

@GenerateMocks([
  Algolia,
  AlgoliaQuery,
  AlgoliaIndexReference,
  AlgoliaQuerySnapshot,
  NetworkInfo
])
void main() {
  late MockAlgolia mockAlgolia;
  late MockAlgoliaQuery mockAlgoliaQuery;
  late MockAlgoliaIndexReference mockAlgoliaIndexReference;
  late MockAlgoliaQuerySnapshot mockAlgoliaQuerySnapshot;
  late MockNetworkInfo mockNetworkInfo;

  late AlgoliaProductSearcher productSearcher;

  final algoliaJsonProduct =
      json.decode(fixture('algolia_product.json')) as Map<String, dynamic>;
  final algoliaJsonEmptyResult =
      json.decode(fixture('algolia_empty_result.json')) as Map<String, dynamic>;

  setUp(() {
    mockAlgolia = MockAlgolia();
    mockAlgoliaQuery = MockAlgoliaQuery();
    mockAlgoliaIndexReference = MockAlgoliaIndexReference();
    mockAlgoliaQuerySnapshot = MockAlgoliaQuerySnapshot();
    mockNetworkInfo = MockNetworkInfo();
    productSearcher = AlgoliaProductSearcher(
        algolia: mockAlgolia, networkInfo: mockNetworkInfo);
  });
  group('search', () {
    const String searchTerm = 'harbio';

    setUp(() {
      when(mockNetworkInfo.isConnected).thenAnswer((_) async => true);
      when(mockAlgolia.instance).thenReturn(mockAlgolia);
      when(mockAlgolia.index(algoliaProductsIndex))
          .thenReturn(mockAlgoliaIndexReference);
      when(mockAlgoliaIndexReference.query(any)).thenReturn(mockAlgoliaQuery);
      when(mockAlgoliaQuery.setPage(any)).thenReturn(mockAlgoliaQuery);
      when(mockAlgoliaQuery.getObjects())
          .thenAnswer((_) async => mockAlgoliaQuerySnapshot);
      when(mockAlgoliaQuerySnapshot.toMap()).thenReturn(algoliaJsonProduct);
    });
    test(
      'should check internet connection',
      () async {
        // act
        await productSearcher.search(searchTerm);
        // assert
        verify(mockNetworkInfo.isConnected);
      },
    );
    test(
      'should return a failure if no internet connection is available',
      () async {
        // arrange
        when(mockNetworkInfo.isConnected).thenAnswer((_) async => false);
        // act
        final result = await productSearcher.search(searchTerm);
        // assert
        expect(result, isA<Left<ProductFailure, KtList<Product>>>());
      },
    );
    test(
      'should get algolia instance',
      () async {
        // act
        await productSearcher.search(searchTerm);
        // assert
        verify(mockAlgolia.instance);
      },
    );

    test(
      'should pass the query to the pricedProducts index',
      () async {
        // act
        await productSearcher.search(searchTerm);
        // assert
        verify(mockAlgolia.index(algoliaProductsIndex));
      },
    );

    test(
      'should set given page',
      () async {
        // arrange
        const page = 3;
        // act
        await productSearcher.search(searchTerm, page: page);
        // assert
        verify(mockAlgoliaQuery.setPage(page));
      },
    );

    test(
      'should return a failure if no results are fetched',
      () async {
        // arrange
        when(mockAlgoliaQuerySnapshot.toMap())
            .thenReturn(algoliaJsonEmptyResult);
        // act
        final result = await productSearcher.search(searchTerm);
        // assert
        expect(result, left(const ProductFailure.noMoreProducts()));
      },
    );

    test(
      'should return a list of products',
      () async {
        // act
        final result = await productSearcher.search(searchTerm);
        // assert

        expect(
            result,
            right(KtList.from([
              ProductDto.fromJson(algoliaJsonProduct['hits'][0]).toDomain()
            ])));
      },
    );
  });
}
