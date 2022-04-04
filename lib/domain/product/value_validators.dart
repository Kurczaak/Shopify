import 'package:dartz/dartz.dart';
import 'package:shopify_manager/domain/product/product_categories.dart';
import '../core/failures.dart';
import './value_failures.dart';

Either<ValueFailure<String>, Categories> validateCategoryFromString(
    String input) {
  final lowercaseInput = input.toLowerCase();

  for (final category in Categories.values) {
    final lowercaseCategoryStr = category.name.toLowerCase();
    if (lowercaseInput == lowercaseCategoryStr) return right(category);
  }

  return left(ValueFailure.product(
      ProductValueFailure.incorrectCategoryString(failedValue: input)));
}
