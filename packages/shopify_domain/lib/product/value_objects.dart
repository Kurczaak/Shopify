import 'package:shopify_domain/core/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:shopify_domain/core/value_objects.dart';
import 'package:shopify_domain/product/price.dart';
import 'package:shopify_domain/product/product_categories.dart';
import 'package:shopify_domain/core/value_validators.dart';
import 'package:shopify_domain/product/value_validators.dart';
import 'package:shopify_domain/product/weight.dart';

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

class Category extends ValueObject<Categories> {
  @override
  final Either<ValueFailure<Categories>, Categories> value;
  factory Category(Categories category) {
    return Category._(right(category));
  }

  factory Category.fromString(String category) {
    return Category._(validateCategoryFromString(category));
  }
  const Category._(this.value);
}

class WeightUnit extends ValueObject<WeightUnits> {
  @override
  final Either<ValueFailure<WeightUnits>, WeightUnits> value;
  factory WeightUnit(WeightUnits unit) => WeightUnit._(right(unit));

  factory WeightUnit.fromString(String unit) =>
      WeightUnit._(validateWeightUnitFromString(unit));

  const WeightUnit._(this.value);
}

class Currency extends ValueObject<Currencies> {
  @override
  final Either<ValueFailure<Currencies>, Currencies> value;
  factory Currency(Currencies currency) {
    return Currency._(right(Currencies.zl));
  }

  factory Currency.fromString(String currency) {
    return Currency._(validateCurrencyFromString(currency));
  }
  const Currency._(this.value);
}

class Barcode extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  factory Barcode(String input) {
    return Barcode._(validateSingleLine(input).flatMap(validateStringNotEmpty));
  }

  const Barcode._(this.value);
}
