import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:shopify_client/infrastructure/product/product_repository_implementation.dart';
import 'package:shopify_domain/core/network/network_info.dart';

@GenerateMocks([NetworkInfo, FirebaseFirestore])
void main() {
  late ProductRepositoryImpl productRepository;

  group('watchAllNearby', () {
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
      'should get added products collection',
      () async {
        // arrange

        // act

        // assert
      },
    );

    test(
      'should get products within given radius',
      () async {
        // arrange

        // act

        // assert
      },
    );

    test(
      'should return a failure if connection timed out',
      () async {
        // arrange

        // act

        // assert
      },
    );

    test(
      'should return a failure if the firebase throws an exception',
      () async {
        // arrange

        // act

        // assert
      },
    );
  });
}
