import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopify_domain/core/failures.dart';
import 'package:shopify_domain/core/value_objects.dart';
import 'package:shopify_domain/product/value_objects.dart';

part 'price.freezed.dart';

@freezed
class Price with _$Price {
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

@override
extension StringifyExtension on Currencies {
  String get stringify {
    if (this == Currencies.zl) {
      return 'Zł';
    } else {
      return name.replaceRange(0, 1, name[0].toUpperCase());
    }
  }
}
