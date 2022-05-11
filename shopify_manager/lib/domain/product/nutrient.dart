import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';
import 'package:shopify_manager/domain/core/failures.dart';
import 'package:shopify_manager/domain/core/value_objects.dart';
import 'package:shopify_manager/domain/core/value_validators.dart';
import 'package:shopify_manager/domain/product/weight.dart';

class NutrientName extends Name {
  static const maxLength = 50;
  static const minLength = 3;
  @override
  final Either<ValueFailure<String>, String> value;
  factory NutrientName(String input) {
    return NutrientName._(
      validateMaxStringLength(input, maxLength)
          .flatMap(
              (passedValue) => validateMinStringLength(passedValue, minLength))
          .flatMap(validateSingleLine),
    );
  }
  const NutrientName._(this.value);
}

@immutable
abstract class Nutrient extends Equatable {
  final Weight weight;
  final NutrientName name;

  const Nutrient(this.weight, this.name);

  @override
  List<Object> get props => [weight, name];

  @override
  bool get stringify => true;
}

abstract class NutrientsGroup<Nutrient> {
  final Nutrient mainNutrient;
  final KtList<Nutrient> subNutrients;
  const NutrientsGroup(this.mainNutrient,
      {required Weight weight,
      required NutrientName name,
      required this.subNutrients});
}

//==================Fats=====================

class Fat extends Nutrient {
  Fat(Weight weight) : super(weight, NutrientName('Fat'));
}

class SaturatedFat extends Fat {
  SaturatedFat(Weight weight) : super(weight);

  @override
  NutrientName get name => NutrientName('Saturated Fat');
}

class TransFat extends Fat {
  TransFat(Weight weight) : super(weight);

  @override
  NutrientName get name => NutrientName('Trans Fat');
}

class MonosaturatedFat extends Fat {
  MonosaturatedFat(Weight weight) : super(weight);

  @override
  NutrientName get name => NutrientName('Monosaturated Fat');
}

class PolysaturatedFat extends Fat {
  PolysaturatedFat(Weight weight) : super(weight);

  @override
  NutrientName get name => NutrientName('Polysaturated Fat');
}

class Fats implements NutrientsGroup<Fat> {
  final Fat fat;
  final SaturatedFat saturatedFat;
  final TransFat transFat;
  final MonosaturatedFat monosaturatedFat;
  final PolysaturatedFat polysaturatedFat;

  Fats(
      {required this.fat,
      required this.saturatedFat,
      required this.transFat,
      required this.monosaturatedFat,
      required this.polysaturatedFat});
  @override
  get mainNutrient => fat;

  @override
  KtList<Fat> get subNutrients => KtList<Fat>.from(
      [saturatedFat, transFat, monosaturatedFat, polysaturatedFat]);
}

//=================Proteins==================

class Protein extends Nutrient {
  Protein(Weight weight) : super(weight, NutrientName('Protein'));
}
