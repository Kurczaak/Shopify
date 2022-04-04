import 'package:shopify_manager/domain/core/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:shopify_manager/domain/core/value_objects.dart';
import 'package:shopify_manager/domain/product/product_categories.dart';
import 'package:shopify_manager/domain/core/value_validators.dart';

class ProductName extends Name {
  static const maxLength = 40;
  static const minLength = 3;

  @override
  final Either<ValueFailure<String>, String> value;
  factory ProductName(String input) {
    return ProductName._(
      validateMaxStringLength(input, maxLength)
          .flatMap((passedValue) => validateMinStringLength(
              passedValue, minLength,
              countWhiteChars: false))
          .flatMap(validateSingleLine),
    );
  }
  const ProductName._(this.value);
}

class BrandName extends Name {
  static const maxLength = 50;
  static const minLength = 3;

  @override
  final Either<ValueFailure<String>, String> value;
  factory BrandName(String input) {
    return BrandName._(
      validateMaxStringLength(input, maxLength)
          .flatMap((passedValue) => validateMinStringLength(
              passedValue, minLength,
              countWhiteChars: false))
          .flatMap(validateSingleLine),
    );
  }
  const BrandName._(this.value);
}

class ProductDescription extends ValueObject<String> {
  static const maxLength = 500;
  static const minLength = 0;
  @override
  final Either<ValueFailure<String>, String> value;
  factory ProductDescription(String input) {
    return ProductDescription._(validateMaxStringLength(input, maxLength)
        .flatMap((passedValue) => validateMinStringLength(
            passedValue, minLength,
            countWhiteChars: false)));
  }
  const ProductDescription._(this.value);
}

class Weight extends ValueObject<double> {
  static const double maxWeight = 99999;
  static const double minWeight = 0.01;

  @override
  final Either<ValueFailure<double>, double> value;
  factory Weight(double input) {
    return Weight._(
      validateDoubleRange(input, minWeight, maxWeight),
    );
  }
  const Weight._(this.value);
}

class Price extends ValueObject<double> {
  static const double maxPrice = 99999.99;

  @override
  final Either<ValueFailure<double>, double> value;
  factory Price(double input) {
    return Price._(validatePositiveValue(input).flatMap(
        (passedValue) => validateDoubleRange(passedValue, 0.1, maxPrice)));
  }
  const Price._(this.value);
}

class Category extends ValueObject<Categories> {
  @override
  final Either<ValueFailure<Categories>, Categories> value;
  factory Category(String category) {
    return Category._(right(Categories.Diary));
  }
  const Category._(this.value);
}
