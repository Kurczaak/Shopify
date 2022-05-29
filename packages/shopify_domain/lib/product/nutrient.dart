import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';
import 'package:shopify_domain/core/failures.dart';
import 'package:shopify_domain/core/value_objects.dart';
import 'package:shopify_domain/core/value_validators.dart';
import 'package:shopify_domain/product.dart';

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

  int get caloriePerGram;
  int get calories;

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
  int get calories;
}

//==================Fats=====================

class Fat extends Nutrient {
  Fat(Weight weight) : super(weight, NutrientName('Fat'));
  factory Fat.zero() => Fat(Weight.zero());

  @override
  int get caloriePerGram => 9;

  @override
  int get calories => caloriePerGram * weight.weight.getOrCrash().toInt();
}

class SaturatedFat extends Fat {
  SaturatedFat(Weight weight) : super(weight);
  factory SaturatedFat.zero() => SaturatedFat(Weight.zero());

  @override
  NutrientName get name => NutrientName('Saturated Fat');
}

class TransFat extends Fat {
  TransFat(Weight weight) : super(weight);
  factory TransFat.zero() => TransFat(Weight.zero());

  @override
  NutrientName get name => NutrientName('Trans Fat');
}

class MonosaturatedFat extends Fat {
  MonosaturatedFat(Weight weight) : super(weight);
  factory MonosaturatedFat.zero() => MonosaturatedFat(Weight.zero());

  @override
  NutrientName get name => NutrientName('Monosaturated Fat');
}

class PolysaturatedFat extends Fat {
  PolysaturatedFat(Weight weight) : super(weight);
  factory PolysaturatedFat.zero() => PolysaturatedFat(Weight.zero());

  @override
  NutrientName get name => NutrientName('Polysaturated Fat');
}

class Fats implements NutrientsGroup<Fat> {
  final Fat fat;
  final SaturatedFat saturatedFat;
  final TransFat transFat;
  final MonosaturatedFat monosaturatedFat;
  final PolysaturatedFat polysaturatedFat;

  Fats._(
      {required this.fat,
      required this.saturatedFat,
      required this.transFat,
      required this.monosaturatedFat,
      required this.polysaturatedFat});
  factory Fats({
    Fat? fat,
    SaturatedFat? saturatedFat,
    TransFat? transFat,
    MonosaturatedFat? monosaturatedFat,
    PolysaturatedFat? polysaturatedFat,
  }) =>
      Fats._(
          fat: fat ?? Fat.zero(),
          saturatedFat: saturatedFat ?? SaturatedFat.zero(),
          transFat: transFat ?? TransFat.zero(),
          monosaturatedFat: monosaturatedFat ?? MonosaturatedFat.zero(),
          polysaturatedFat: polysaturatedFat ?? PolysaturatedFat.zero());

  @override
  get mainNutrient => fat;

  @override
  KtList<Fat> get subNutrients => KtList<Fat>.from(
      [saturatedFat, transFat, monosaturatedFat, polysaturatedFat]);

  @override
  int get calories => fat.calories;
}

//=================Proteins==================

class Protein extends Nutrient {
  Protein(Weight weight) : super(weight, NutrientName('Protein'));
  factory Protein.zero() => Protein(Weight.zero());

  @override
  int get caloriePerGram => 4;

  @override
  int get calories => caloriePerGram * weight.weight.getOrCrash().toInt();
}

class AnimalProtein extends Protein {
  AnimalProtein(Weight weight) : super(weight);
  factory AnimalProtein.zero() => AnimalProtein(Weight.zero());

  @override
  NutrientName get name => NutrientName('Animal Protein');
}

class PlantProtein extends Protein {
  PlantProtein(Weight weight) : super(weight);
  factory PlantProtein.zero() => PlantProtein(Weight.zero());

  @override
  NutrientName get name => NutrientName('Plant Protein');
}

class Proteins implements NutrientsGroup<Protein> {
  final Protein protein;
  final AnimalProtein animalProtein;
  final PlantProtein plantProtein;

  Proteins._(
      {required this.protein,
      required this.animalProtein,
      required this.plantProtein});

  factory Proteins(
      {Protein? protein,
      AnimalProtein? animalProtein,
      PlantProtein? plantProtein}) {
    return Proteins._(
      protein: protein ?? Protein.zero(),
      animalProtein: animalProtein ?? AnimalProtein.zero(),
      plantProtein: plantProtein ?? PlantProtein.zero(),
    );
  }

  @override
  Protein get mainNutrient => protein;

  @override
  KtList<Protein> get subNutrients =>
      KtList.from([animalProtein, plantProtein]);
  @override
  int get calories => protein.calories;
}

//=================Carbohydrates==================

class Carbohydrate extends Nutrient {
  Carbohydrate(Weight weight) : super(weight, NutrientName('Carbohydrate'));
  factory Carbohydrate.zero() => Carbohydrate(Weight.zero());

  @override
  int get caloriePerGram => 4;

  @override
  int get calories => caloriePerGram * weight.weight.getOrCrash().toInt();
}

class Sugar extends Carbohydrate {
  Sugar(Weight weight) : super(weight);
  factory Sugar.zero() => Sugar(Weight.zero());

  @override
  NutrientName get name => NutrientName('Sugar');
}

class Carbohydrates implements NutrientsGroup<Carbohydrate> {
  final Carbohydrate carbohydrate;
  final Sugar sugar;

  Carbohydrates._({required this.carbohydrate, required this.sugar});

  factory Carbohydrates({Carbohydrate? carbohydrate, Sugar? sugar}) =>
      Carbohydrates._(
          carbohydrate: carbohydrate ?? Carbohydrate.zero(),
          sugar: sugar ?? Sugar.zero());
  @override
  Carbohydrate get mainNutrient => carbohydrate;

  @override
  KtList<Carbohydrate> get subNutrients => KtList.from([sugar]);

  @override
  int get calories => carbohydrate.calories;
}

class NutrientTable {
  final Proteins proteins;
  final Fats fats;
  final Carbohydrates carbohydrates;
  int get totalCalories =>
      proteins.calories + fats.calories + carbohydrates.calories;

  NutrientTable(this.proteins, this.fats, this.carbohydrates);
}
