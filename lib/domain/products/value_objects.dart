import 'package:dartz/dartz.dart';
import 'package:shopify_client/domain/core/failures.dart';
import 'package:shopify_client/domain/core/value_objects.dart';

class ProductDescription extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  factory ProductDescription(String input) {
    return ProductDescription._(left(ValueFailure.product(
        ProductValueFailure.exceedingLength(failedValue: input, maxLen: 1))));
  }
  const ProductDescription._(this.value);
}
