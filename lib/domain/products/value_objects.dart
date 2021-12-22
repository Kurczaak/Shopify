import 'package:dartz/dartz.dart';
import 'package:shopify_manager/domain/core/failures.dart';
import 'package:shopify_manager/domain/core/value_objects.dart';

class ProductDescription extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  factory ProductDescription(String input) {
    return ProductDescription._(left(ValueFailure.product(
        ProductValueFailure.exceedingLength(StringValueFailure.stringTooLong(
            failedValue: input, maxLength: 12)))));
  }
  const ProductDescription._(this.value);
}
