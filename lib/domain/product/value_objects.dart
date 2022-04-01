import 'package:shopify_manager/domain/core/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:shopify_manager/domain/core/value_objects.dart';

class ProductName extends Name {
  static const maxLength = 50;
  static const minLength = 3;

  @override
  final Either<ValueFailure<String>, String> value;
  factory ProductName(String input) {
    return ProductName._(right(input));
  }
  const ProductName._(this.value);
}
