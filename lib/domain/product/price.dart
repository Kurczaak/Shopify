import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopify_manager/domain/core/failures.dart';
import 'package:shopify_manager/domain/core/value_objects.dart';
import 'package:shopify_manager/domain/product/value_objects.dart';

part 'price.freezed.dart';

@freezed
abstract class Price with _$Price {
  const Price._();

  factory Price.empty() =>
      Price(price: PositiveNumber(0), currency: Currency(Currencies.zl));

  factory Price({
    required PositiveNumber price,
    required Currency currency,
  }) = _Price;

  factory Price.fromPrimitives(double price, String currency) => Price(
      price: PositiveNumber(price), currency: Currency.fromString(currency));

  Option<ValueFailure<dynamic>> get failureOption {
    return currency.failureOrUnit
        .andThen(price.failureOrUnit)
        .fold((f) => some(f), (r) => none());
  }

  Either<ValueFailure<dynamic>, Unit> get failureOrUnit {
    return price.failureOrUnit.andThen(currency.failureOrUnit);
  }
}

enum Currencies {
  zl,
  eur,
}
