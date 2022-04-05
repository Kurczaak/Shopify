import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopify_manager/domain/core/failures.dart';
import 'package:shopify_manager/domain/core/value_objects.dart';

part 'price.freezed.dart';

@freezed
abstract class Price with _$Price {
  const Price._();

  const factory Price({
    required PositiveNumber price,
    @Default(Currency.zl) Currency currency,
  }) = _Price;

  Option<ValueFailure<dynamic>> get failureOption {
    return price.failureOrUnit.fold((f) => some(f), (r) => none());
  }
}

enum Currency {
  zl,
  eur,
}
