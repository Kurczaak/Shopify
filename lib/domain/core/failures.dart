import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopify_manager/domain/auth/value_objects.dart';
import 'package:shopify_manager/domain/core/value_failures.dart';
import 'package:shopify_manager/domain/product/value_failures.dart';
import '../auth/value_failures.dart';
import '../shop/value_failures.dart';

part 'failures.freezed.dart';

@freezed
class ValueFailure<T> with _$ValueFailure<T> {
  const ValueFailure._();
  const factory ValueFailure.auth(AuthValueFailure<T> f) = _Auth<T>;
  const factory ValueFailure.shop(ShopValueFailure<T> f) = _Shop<T>;
  const factory ValueFailure.product(ProductValueFailure<T> f) = _Product<T>;
  const factory ValueFailure.core(CoreValueFailure<T> f) = _Core<T>;

  String stringifyValueFailure({required String fieldName}) {
    return when(
      auth: (authFailure) => authFailure.when(
          invalidEmail: (_) => EmailAddress.incorrectEmailStr,
          incorrectPassword: (_) => Password.incorrectPasswordStr),
      shop: (shopFailure) => shopFailure.when(
        invalidTimeInterval: (_) => 'Invalid time interval',
        shopClosedAllWeekLong: (_) => 'Shop cannot be closed all week long',
        incorrectHour: (_, pm) => 'Incorrect hour format',
      ),
      product: (productFailure) => productFailure.when(
          incorrectCategoryString: (_) => 'This category does not exist',
          incorrectWeightUnitString: (_) => 'Incorrect weight unit',
          incorrectCurrencyString: (_) => 'Incorrect currency'),
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

// @freezed
// class CoreValueFailure<T> with _$CoreValueFailure<T> {
//   const factory CoreValueFailure.incorrectAddress({required T input}) =
//       IncorrectAddress<T>;
// }


