import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/kt.dart';
import 'package:shopify_domain/core/failures.dart';
import 'package:shopify_domain/core/value_objects.dart';
import 'package:shopify_domain/product.dart';

import '../fixtures/description_501_chars.dart';

void main() {
  final String id = UniqueId().getOrCrash();
  const String barcode = 'ABC-123-DEF';
  const double weight = 10;
  const String weightUnit = 'gram';
  const double price = 21.37;
  const String currency = 'zl';
  const String category = 'Bread';
  const String name = 'Test Product';
  const String brand = 'Test Brand';
  const String description = 'This is just a test product';
  const String ingredients = 'tests, bugs, overflows';
  final List<String> photosUrls = [
    'www.photo.com/1',
    'www.photo.com/2',
    'www.photo.com/3'
  ];
  final tProduct = Product.fromPrimitives(
    barcode: barcode,
    brand: brand,
    category: category,
    currency: currency,
    description: description,
    id: id,
    ingredients: ingredients,
    name: name,
    photosUrls: photosUrls,
    price: price,
    weight: weight,
    weightUnit: weightUnit,
  );
  group('failureOption', () {
    test(
      'should return none given a valid product',
      () async {
        // act
        final result = tProduct.failureOption;
        // assert
        expect(result, none());
      },
    );
    test(
      'should return barcode value failure given an invalid barcode',
      () async {
        // arrange
        final invalidProduct = tProduct.copyWith(barcode: Barcode(''));
        // act
        final result = invalidProduct.failureOption;
        // assert
        expect(result, isA<Some<ValueFailure<dynamic>>>());
      },
    );

    test(
      'should return weight value failure given an invalid weight',
      () async {
        // arrange
        final invalidProduct =
            tProduct.copyWith(weight: Weight.fromPrimitives(-1, 'kg'));
        // act
        final result = invalidProduct.failureOption;
        // assert
        expect(result, isA<Some<ValueFailure<dynamic>>>());
      },
    );

    test(
      'should return category value failure given an invalid category',
      () async {
        // arrange
        final invalidProduct = tProduct.copyWith(
            category: Category.fromString('this category does not exist'));
        // act
        final result = invalidProduct.failureOption;
        // assert
        expect(result, isA<Some<ValueFailure<dynamic>>>());
      },
    );

    test(
      'should return productName value failure given an invalid productName',
      () async {
        // arrange
        final invalidProduct = tProduct.copyWith(name: ProductName(''));
        // act
        final result = invalidProduct.failureOption;
        // assert
        expect(result, isA<Some<ValueFailure<dynamic>>>());
      },
    );

    test(
      'should return brandName value failure given an invalid brandName',
      () async {
        // arrange
        final invalidProduct = tProduct.copyWith(brand: BrandName(''));
        // act
        final result = invalidProduct.failureOption;
        // assert
        expect(result, isA<Some<ValueFailure<dynamic>>>());
      },
    );

    test(
      'should return description value failure given an invalid description',
      () async {
        // arrange
        final invalidProduct = tProduct.copyWith(
            description: ProductDescription(reallyLongDescription));
        // act
        final result = invalidProduct.failureOption;
        // assert
        expect(result, isA<Some<ValueFailure<dynamic>>>());
      },
    );

    test(
      'should return ingredients value failure given  invalid ingredients',
      () async {
        // arrange
        final invalidProduct = tProduct.copyWith(
            ingredients: ProductDescription(reallyLongDescription));
        // act
        final result = invalidProduct.failureOption;
        // assert
        expect(result, isA<Some<ValueFailure<dynamic>>>());
      },
    );

    test(
      'should return photos value failure given invalid photos',
      () async {
        // arrange
        final invalidProduct = tProduct.copyWith(
            photos: NonEmptyList5(KtList.from(
                ['1', '2', '3', '4', '5', '6'].map((url) => ShopifyUrl(url)))));
        // act
        final result = invalidProduct.failureOption;
        // assert
        expect(result, isA<Some<ValueFailure<dynamic>>>());
      },
    );
  });

  group('failureOrUnit', () {
    test(
      'should return right(unit) given a valid product',
      () async {
        // act
        final result = tProduct.failureOrUnit;
        // assert
        expect(result, right(unit));
      },
    );
    test(
      'should return barcode value failure given an invalid barcode',
      () async {
        // arrange
        final invalidProduct = tProduct.copyWith(barcode: Barcode(''));
        // act
        final result = invalidProduct.failureOrUnit;
        // assert
        expect(result, isA<Left<ValueFailure<dynamic>, Unit>>());
      },
    );

    test(
      'should return weight value failure given an invalid weight',
      () async {
        // arrange
        final invalidProduct =
            tProduct.copyWith(weight: Weight.fromPrimitives(-1, 'kg'));
        // act
        final result = invalidProduct.failureOrUnit;
        // assert
        expect(result, isA<Left<ValueFailure<dynamic>, Unit>>());
      },
    );

    test(
      'should return category value failure given an invalid category',
      () async {
        // arrange
        final invalidProduct = tProduct.copyWith(
            category: Category.fromString('this category does not exist'));
        // act
        final result = invalidProduct.failureOrUnit;
        // assert
        expect(result, isA<Left<ValueFailure<dynamic>, Unit>>());
      },
    );

    test(
      'should return productName value failure given an invalid productName',
      () async {
        // arrange
        final invalidProduct = tProduct.copyWith(name: ProductName(''));
        // act
        final result = invalidProduct.failureOrUnit;
        // assert
        expect(result, isA<Left<ValueFailure<dynamic>, Unit>>());
      },
    );

    test(
      'should return brandName value failure given an invalid brandName',
      () async {
        // arrange
        final invalidProduct = tProduct.copyWith(brand: BrandName(''));
        // act
        final result = invalidProduct.failureOrUnit;
        // assert
        expect(result, isA<Left<ValueFailure<dynamic>, Unit>>());
      },
    );

    test(
      'should return description value failure given an invalid description',
      () async {
        // arrange
        final invalidProduct = tProduct.copyWith(
            description: ProductDescription(reallyLongDescription));
        // act
        final result = invalidProduct.failureOrUnit;
        // assert
        expect(result, isA<Left<ValueFailure<dynamic>, Unit>>());
      },
    );

    test(
      'should return ingredients value failure given  invalid ingredients',
      () async {
        // arrange
        final invalidProduct = tProduct.copyWith(
            ingredients: ProductDescription(reallyLongDescription));
        // act
        final result = invalidProduct.failureOrUnit;
        // assert
        expect(result, isA<Left<ValueFailure<dynamic>, Unit>>());
      },
    );

    test(
      'should return photos value failure given invalid photos',
      () async {
        // arrange
        final invalidProduct = tProduct.copyWith(
            photos: NonEmptyList5(KtList.from(
                ['1', '2', '3', '4', '5', '6'].map((url) => ShopifyUrl(url)))));
        // act
        final result = invalidProduct.failureOrUnit;
        // assert
        expect(result, isA<Left<ValueFailure<dynamic>, Unit>>());
      },
    );
  });
}
