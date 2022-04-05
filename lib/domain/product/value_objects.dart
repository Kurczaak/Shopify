import 'package:shopify_manager/domain/core/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:shopify_manager/domain/core/value_objects.dart';
import 'package:shopify_manager/domain/product/product_categories.dart';
import 'package:shopify_manager/domain/core/value_validators.dart';
import 'package:shopify_manager/domain/product/value_validators.dart';

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
    return Category._(right(Categories.Diary));
  }

  factory Category.fromString(String category) {
    return Category._(validateCategoryFromString(category));
  }
  const Category._(this.value);
}

class Barcode extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  factory Barcode(String input) {
    return Barcode._(validateSingleLine(input).flatMap(validateStringNotEmpty));
  }

  const Barcode._(this.value);
}
