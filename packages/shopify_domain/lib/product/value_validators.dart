import 'package:dartz/dartz.dart';
import 'package:shopify_domain/core/value_validators.dart';
import 'package:shopify_domain/product/price.dart';
import 'package:shopify_domain/product/product_categories.dart';
import 'package:shopify_domain/product/weight.dart';
import '../core/failures.dart';
import './value_failures.dart';

Either<ValueFailure<Categories>, Categories> validateCategoryFromString(
    String input) {
  final lowercaseInput = input.toLowerCase();

  for (final category in Categories.values) {
    final lowercaseCategoryStr = category.name.toLowerCase();
    if (lowercaseInput == lowercaseCategoryStr) return right(category);
  }

  return left(ValueFailure.product(
      ProductValueFailure.incorrectCategoryString(failedValue: input)));
}

Either<ValueFailure<WeightUnits>, WeightUnits> validateWeightUnitFromString(
    String input) {
  final lowercaseInput = input.toLowerCase();

  for (final unit in WeightUnits.values) {
    final lowercaseCategoryStr = unit.name.toLowerCase();
    if (lowercaseInput == lowercaseCategoryStr) return right(unit);
  }

  return left(ValueFailure.product(
      ProductValueFailure.incorrectWeightUnitString(failedValue: input)));
}

Either<ValueFailure<Currencies>, Currencies> validateCurrencyFromString(
    String input) {
  final lowercaseInput = input.toLowerCase();

  for (final currency in Currencies.values) {
    final lowercaseCategoryStr = currency.name.toLowerCase();
    if (lowercaseInput == lowercaseCategoryStr) return right(currency);
  }

  return left(ValueFailure.product(
      ProductValueFailure.incorrectCurrencyString(failedValue: input)));
}

Either<ValueFailure<String>, String> validatetName(
    String input, int minLength, int maxLength) {
  return validateStringNotEmpty(input)
      .flatMap((passedValue) => validateMaxStringLength(passedValue, maxLength)
          .flatMap((passedValue) => validateMinStringLength(
              passedValue, minLength,
              countWhiteChars: false)))
      .flatMap(validateSingleLine);
}

Either<ValueFailure<String>, String> validatetDescription(
    String input, int minLength, int maxLength) {
  return validateMaxStringLength(input, maxLength).flatMap((passedValue) =>
      validateMinStringLength(passedValue, minLength, countWhiteChars: false));
}

Either<ValueFailure<String>, String> validateBarcode(String input) {
  return validateSingleLine(input).flatMap(validateStringNotEmpty);
}
