import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopify_manager/domain/core/failures.dart';
import 'package:shopify_manager/domain/core/value_objects.dart';

part 'weight.freezed.dart';

@freezed
abstract class Weight with _$Weight {
  const Weight._();

  const factory Weight({
    required PositiveNumber weight,
    @Default(WeightUnit.gram) WeightUnit unit,
  }) = _Weight;

  Option<ValueFailure<dynamic>> get failureOption {
    return weight.failureOrUnit.fold((f) => some(f), (r) => none());
  }
}

enum WeightUnit {
  microgram,
  miligram,
  gram,
  kilogram,
}

extension SymboliseX on WeightUnit {
  String get symbol {
    switch (this) {
      case WeightUnit.microgram:
        return 'µg';
      case WeightUnit.miligram:
        return 'mg';
      case WeightUnit.gram:
        return 'g';
      case WeightUnit.kilogram:
        return 'kg';
      default:
        throw UnimplementedError('Could not symbolise given weight unit');
    }
  }
}
