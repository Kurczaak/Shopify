import 'package:flutter_test/flutter_test.dart';
import 'package:shopify_domain/core/value_objects.dart';
import 'package:shopify_domain/product/price.dart';
import 'package:shopify_domain/product/product.dart';
import 'package:shopify_domain/product/weight.dart';
import 'package:shopify_domain/src/product/product_dtos.dart';

void main() {
  final String id = UniqueId().getOrCrash();
  const String barcode = 'ABC-123-DEF';
  const double weight = 10;
  const String weightUnit = 'gram';
  const double price = 21.37;
  const String currency = 'zl';
  const String category = 'bread';
  const String name = 'Test Product';
  const String brand = 'Test Brand';
  const String description = 'This is just a test product';
  const String ingredients = 'tests, bugs, overflows';
  final List<String> photosUrls = [
    'https://firebasestorage.googleapis.com/v0/b/shopify-app-6d29d.appspot.com/o/images/1',
    'https://firebasestorage.googleapis.com/v0/b/shopify-app-6d29d.appspot.com/o/images/2',
    'https://firebasestorage.googleapis.com/v0/b/shopify-app-6d29d.appspot.com/o/images/3'
  ];

  // Weight
  final tWeight = Weight.fromPrimitives(weight, weightUnit);
  const tWeightDto = WeightDto(weight: weight, weightUnit: weightUnit);

  // Price
  final tPrice = Price.fromPrimitives(price, currency);
  const tPriceDto = PriceDto(price: price, currency: currency);

  // Product
  final tProduct = Product.fromPrimitives(
      id: id,
      barcode: barcode,
      weight: weight,
      weightUnit: weightUnit,
      price: price,
      currency: currency,
      category: category,
      name: name,
      brand: brand,
      description: description,
      ingredients: ingredients,
      photosUrls: photosUrls);

  final tProductDto = ProductDto(
      id: id,
      barcode: barcode,
      weight: tWeightDto,
      price: tPriceDto,
      category: category,
      name: name,
      brand: brand,
      description: description,
      ingredients: ingredients,
      photosUrls: photosUrls);

  group('ProductDto', () {
    test(
      'should convert fromDomain',
      () async {
        // act
        final result = ProductDto.fromDomain(tProduct);
        // assert
        expect(result, tProductDto);
      },
    );

    test(
      'should convert toDomain',
      () async {
        // act
        final result = tProductDto.toDomain();
        // assert
        expect(result, tProduct);
      },
    );
  });
  group('WeightDto', () {
    test(
      'should convert fromDomain',
      () async {
        // act
        final result = WeightDto.fromDomain(tWeight);
        // assert
        expect(result, tWeightDto);
      },
    );

    test(
      'should convert toDomain',
      () async {
        // act
        final result = tWeightDto.toDomain();
        // assert
        expect(result, tWeight);
      },
    );
  });

  group('PriceDto', () {
    test(
      'should convert fromDomain',
      () async {
        // act
        final result = PriceDto.fromDomain(tPrice);
        // assert
        expect(result, tPriceDto);
      },
    );

    test(
      'should convert toDomain',
      () async {
        // act
        final result = tPriceDto.toDomain();
        // assert
        expect(result, tPrice);
      },
    );
  });
}
