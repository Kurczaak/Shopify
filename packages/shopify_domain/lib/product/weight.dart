import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopify_domain/core/failures.dart';
import 'package:shopify_domain/core/value_objects.dart';
import 'package:shopify_domain/product/value_failures.dart';
import 'package:shopify_domain/product/value_objects.dart';

part 'weight.freezed.dart';

@freezed
class Weight with _$Weight {
  const Weight._();

  factory Weight.zero({WeightUnits? unit}) => Weight(
      weight: NonnegativeNumber(0),
      weightUnit: WeightUnit(unit ?? WeightUnits.gram));

  const factory Weight({
    required NonnegativeNumber weight,
    required WeightUnit weightUnit,
  }) = _Weight;

  factory Weight.fromPrimitives(double weight, String weightUnit) => Weight(
      weight: NonnegativeNumber(weight),
      weightUnit: WeightUnit.fromString(weightUnit));

  Either<ValueFailure<dynamic>, Unit> get failureOrUnit {
    return weightUnit.failureOrUnit.andThen(weight.failureOrUnit.fold(
        (failure) => failure.maybeWhen(
            core: (coreFailure) => coreFailure.maybeWhen(
                numberOutsideInterval: (failedValue, min, max) => left(
                    ValueFailure.product(
                        ProductValueFailure.incorrectWeight(failure: failure))),
                orElse: () => left(ValueFailure.product(
                    ProductValueFailure.unexpectedProductFailure(failure)))),
            orElse: () =>
                left(ValueFailure.product(ProductValueFailure.unexpectedProductFailure(failure)))),
        (_) => right(unit)));
  }
}

enum WeightUnits {
  microgram,
  miligram,
  gram,
  kilogram,
}

extension SymboliseX on WeightUnits {
  String get symbol {
    switch (this) {
      case WeightUnits.microgram:
        return 'µg';
      case WeightUnits.miligram:
        return 'mg';
      case WeightUnits.gram:
        return 'g';
      case WeightUnits.kilogram:
        return 'kg';
      default:
        throw UnimplementedError('Could not symbolise given weight unit');
    }
  }
}
