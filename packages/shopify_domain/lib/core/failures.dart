import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopify_domain/auth/value_objects.dart';
import 'package:shopify_domain/cart/value_failures.dart';
import 'package:shopify_domain/core/value_failures.dart';
import 'package:shopify_domain/product/value_failures.dart';
import 'package:shopify_domain/auth/value_failures.dart';
import 'package:shopify_domain/shop/value_failures.dart';

part 'failures.freezed.dart';

@freezed
class ValueFailure<T> with _$ValueFailure<T> {
  const ValueFailure._();
  const factory ValueFailure.auth(AuthValueFailure<T> f) = _Auth<T>;
  const factory ValueFailure.shop(ShopValueFailure<T> f) = _Shop<T>;
  const factory ValueFailure.product(ProductValueFailure<T> f) = _Product<T>;
  const factory ValueFailure.core(CoreValueFailure<T> f) = _Core<T>;
  const factory ValueFailure.cart(CartValueFailure<T> f) = _Cart<T>;

  String stringifyValueFailure({String? fieldName}) {
    return when(
      cart: (cartFailure) =>
          cartFailure.when(emptyyCartItemsList: () => 'Empty cart'),
      auth: (authFailure) => authFailure.when(
          invalidEmail: (_) => EmailAddress.incorrectEmailStr,
          incorrectPassword: (_) => Password.incorrectPasswordStr),
      shop: (shopFailure) => shopFailure.when(
        invalidTimeInterval: (_) => 'Invalid time interval',
        shopClosedAllWeekLong: (_) => 'Shop cannot be closed all week long',
        incorrectHour: (_, pm) => 'Incorrect hour format',
      ),
      product: (productFailure) => productFailure.when(
        unexpectedProductFailure: (failure) =>
            'Unexpected failure. Failed value: $failure',
        incorrectCategoryString: (_) => 'This category does not exist',
        incorrectWeightUnitString: (_) => 'Incorrect weight unit',
        incorrectCurrencyString: (_) => 'Incorrect currency',
        incorrectWeight: (failure) =>
            failure.stringifyValueFailure(fieldName: 'Weight'),
        incorrectPhotos: (failure) =>
            failure.stringifyValueFailure(fieldName: 'Photos'),
        incorrectNutrients: (failure) =>
            failure.stringifyValueFailure(fieldName: 'Nutrients'),
        incorrectIngredients: (failure) =>
            failure.stringifyValueFailure(fieldName: 'Ingredients'),
        incorrectId: (failure) =>
            failure.stringifyValueFailure(fieldName: 'Id'),
        incorrectDescription: (failure) =>
            failure.stringifyValueFailure(fieldName: 'Description'),
        incorrectCategory: () => 'Incorrect category',
        incorrectBrandName: (failure) =>
            failure.stringifyValueFailure(fieldName: 'Brand Name'),
        incorrectBarcode: (failure) =>
            failure.stringifyValueFailure(fieldName: 'Barcode'),
        incorrectProductName: (failure) =>
            failure.stringifyValueFailure(fieldName: 'Product Name'),
      ),
      core: (coreFailure) => coreFailure.when(
          listTooLong: (_, max) => 'Too many elements $fieldName. Max $max',
          listTooShort: (_, min) => 'Too little $fieldName. At least $min',
          exceedingLength: (_, max) =>
              '$fieldName too long. Max $max characters',
          stringTooShort: (_, min) =>
              '$fieldName too short. At least $min characters',
          stringDoesntContainKeyword: (_, keyword) =>
              'Incorrect $fieldName. It should contain \'$keyword\'',
          empty: () => '$fieldName should not be empty',
          multiline: (_) => '$fieldName cannot be multiline',
          nonNumeric: (_) => '$fieldName is not a numeric value',
          noNumericValuePresent: (_) =>
              '$fieldName should contain a numeric value',
          nonPositive: (_) => '$fieldName must be a positive value',
          numberOutsideInterval: (_, min, max) =>
              '$fieldName outside the $min - $max interval',
          imageTooBig: (_, maxHeight, maxWidth) =>
              'Image too big. Max $maxHeight by $maxWidth pixels',
          imageTooSmall: (_, minHeight, minWidth) =>
              'Image too small. Minimum $minHeight by $minWidth pixels',
          incorrectPostalCode: (_) => 'Incorrect postal code',
          noAddressNumber: (_) => 'Address number cannot be empty',
          noInternetConnection: () =>
              'No internet connection. Make sure you have a valid internet connection or try again later'),
    );
  }
}
