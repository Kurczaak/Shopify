import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopify_manager/domain/core/failures.dart';
import 'package:shopify_manager/domain/core/value_objects.dart';
import 'package:shopify_manager/domain/product/value_objects.dart';

part 'weight.freezed.dart';

@freezed
abstract class Weight with _$Weight {
  const Weight._();

  factory Weight.empty() => Weight(
      weight: PositiveNumber(0), weightUnit: WeightUnit(WeightUnits.gram));

  const factory Weight({
    required PositiveNumber weight,
    required WeightUnit weightUnit,
  }) = _Weight;

  factory Weight.fromPrimitives(double weight, String weightUnit) => Weight(
      weight: PositiveNumber(weight),
      weightUnit: WeightUnit.fromString(weightUnit));

  Option<ValueFailure<dynamic>> get failureOption {
    return weightUnit.failureOrUnit
        .andThen(weight.failureOrUnit)
        .fold((f) => some(f), (r) => none());
  }

  Either<ValueFailure<dynamic>, Unit> get failureOrUnit {
    return weight.failureOrUnit.andThen(weightUnit.failureOrUnit);
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
