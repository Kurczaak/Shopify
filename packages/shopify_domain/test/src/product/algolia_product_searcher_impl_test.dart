import 'package:algolia/algolia.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:shopify_domain/core/network/network_info.dart';

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

  setUp(() {
    mockAlgolia = MockAlgolia();
    mockAlgoliaQuery = MockAlgoliaQuery();
    mockAlgoliaIndexReference = MockAlgoliaIndexReference();
    mockAlgoliaQuerySnapshot = MockAlgoliaQuerySnapshot();
  });
  group('search', () {
    test(
      'should check internet connection',
      () async {
        // arrange

        // act

        // assert
      },
    );
    test(
      'should return a failure if no internet connection is available',
      () async {
        // arrange

        // act

        // assert
      },
    );
    test(
      'should get algolia instance',
      () async {
        // arrange

        // act

        // assert
      },
    );

    test(
      'should pass the query to the pricedProducts index',
      () async {
        // arrange

        // act

        // assert
      },
    );

    test(
      'should set given page',
      () async {
        // arrange

        // act

        // assert
      },
    );

    test(
      'should return a failure if no results are fetched',
      () async {
        // arrange

        // act

        // assert
      },
    );

    test(
      'should return a list of products',
      () async {
        // arrange

        // act

        // assert
      },
    );
  });
}
