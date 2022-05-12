import 'package:dartz/dartz.dart';
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
