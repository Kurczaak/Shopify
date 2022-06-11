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
  Either<ValueFailure<dynamic>, Unit> get failureOrUnit =>
      weight.failureOrUnit.andThen(name.failureOrUnit);

  const Nutrient(this.weight, this.name);

  @override
  List<Object> get props => [weight, name];

  @override
  bool get stringify => true;

  String get stringifyOrCrash =>
      '${name.getOrCrash()}: ${weight.stringifyOrCrash}';
}

class NutrientsGroup extends Equatable {
  final Nutrient mainNutrient;
  final KtList<Nutrient> subNutrients;

  const NutrientsGroup(this.mainNutrient, this.subNutrients);

  int get calories => mainNutrient.calories;
  String get name => mainNutrient.name.getOrCrash() + 's';

  Either<ValueFailure<dynamic>, Unit> get failureOrUnit {
    if (mainNutrient.failureOrUnit.isLeft()) {
      return mainNutrient.failureOrUnit;
    }
    if (subNutrients.isEmpty()) {
      return right(unit);
    }
    for (final subNutrient in subNutrients.iter) {
      if (subNutrient.failureOrUnit.isLeft()) {
        return subNutrient.failureOrUnit;
      }
    }
    return right(unit);
  }

  String get stringifyOrCrash => mainNutrient.stringifyOrCrash;

  @override
  List<Object> get props => [mainNutrient, subNutrients];
  @override
  bool get stringify => true;
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

class Fats extends NutrientsGroup {
  final Fat fat;
  final SaturatedFat saturatedFat;
  final TransFat transFat;
  final MonosaturatedFat monosaturatedFat;
  final PolysaturatedFat polysaturatedFat;

  Fats copyWith({
    Fat? fat,
    SaturatedFat? saturatedFat,
    TransFat? transFat,
    MonosaturatedFat? monosaturatedFat,
    PolysaturatedFat? polysaturatedFat,
  }) =>
      Fats._(
          fat: fat ?? this.fat,
          saturatedFat: saturatedFat ?? this.saturatedFat,
          transFat: transFat ?? this.transFat,
          monosaturatedFat: monosaturatedFat ?? this.monosaturatedFat,
          polysaturatedFat: polysaturatedFat ?? this.polysaturatedFat);

  Fats._(
      {required this.fat,
      required this.saturatedFat,
      required this.transFat,
      required this.monosaturatedFat,
      required this.polysaturatedFat})
      : super(
            fat,
            KtList<Fat>.from(
                [saturatedFat, transFat, monosaturatedFat, polysaturatedFat]));

  factory Fats.fromWeightsInGrams({
    double? fat,
    double? saturatedFat,
    double? transFat,
    double? monosaturatedFat,
    double? polysaturatedFat,
  }) =>
      Fats._(
          fat: Fat(Weight(
              weight: NonnegativeNumber(fat ?? 0),
              weightUnit: WeightUnit(WeightUnits.gram))),
          saturatedFat: SaturatedFat(Weight(
              weight: NonnegativeNumber(saturatedFat ?? 0),
              weightUnit: WeightUnit(WeightUnits.gram))),
          transFat: TransFat(Weight(
              weight: NonnegativeNumber(transFat ?? 0),
              weightUnit: WeightUnit(WeightUnits.gram))),
          monosaturatedFat: MonosaturatedFat(Weight(
              weight: NonnegativeNumber(monosaturatedFat ?? 0),
              weightUnit: WeightUnit(WeightUnits.gram))),
          polysaturatedFat: PolysaturatedFat(Weight(
              weight: NonnegativeNumber(polysaturatedFat ?? 0),
              weightUnit: WeightUnit(WeightUnits.gram))));

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

  factory Fats.zero() => Fats(
      fat: Fat.zero(),
      monosaturatedFat: MonosaturatedFat.zero(),
      polysaturatedFat: PolysaturatedFat.zero(),
      saturatedFat: SaturatedFat.zero(),
      transFat: TransFat.zero());
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

class Proteins extends NutrientsGroup {
  final Protein protein;
  final AnimalProtein animalProtein;
  final PlantProtein plantProtein;

  Proteins._(
      {required this.protein,
      required this.animalProtein,
      required this.plantProtein})
      : super(protein, KtList<Protein>.from([animalProtein, plantProtein]));

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

  factory Proteins.fromWeightsInGrams({
    double? protein,
    double? animalProtein,
    double? plantProtein,
  }) =>
      Proteins._(
          protein: Protein(Weight(
              weight: NonnegativeNumber(protein ?? 0),
              weightUnit: WeightUnit(WeightUnits.gram))),
          animalProtein: AnimalProtein(Weight(
              weight: NonnegativeNumber(animalProtein ?? 0),
              weightUnit: WeightUnit(WeightUnits.gram))),
          plantProtein: PlantProtein(Weight(
              weight: NonnegativeNumber(plantProtein ?? 0),
              weightUnit: WeightUnit(WeightUnits.gram))));

  factory Proteins.zero() => Proteins(
        protein: Protein.zero(),
        animalProtein: AnimalProtein.zero(),
        plantProtein: PlantProtein.zero(),
      );

  Proteins copyWith(
          {Protein? protein,
          AnimalProtein? animalProtein,
          PlantProtein? plantProtein}) =>
      Proteins._(
          protein: protein ?? this.protein,
          animalProtein: animalProtein ?? this.animalProtein,
          plantProtein: plantProtein ?? this.plantProtein);
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

class Carbohydrates extends NutrientsGroup {
  final Carbohydrate carbohydrate;
  final Sugar sugar;

  Carbohydrates._({required this.carbohydrate, required this.sugar})
      : super(carbohydrate, KtList<Carbohydrate>.from([sugar]));

  factory Carbohydrates({Carbohydrate? carbohydrate, Sugar? sugar}) =>
      Carbohydrates._(
          carbohydrate: carbohydrate ?? Carbohydrate.zero(),
          sugar: sugar ?? Sugar.zero());

  factory Carbohydrates.fromNutrientsGroup(NutrientsGroup group) {
    return Carbohydrates._(
        carbohydrate: group.mainNutrient as Carbohydrate,
        sugar: group.subNutrients.first() as Sugar);
  }

  factory Carbohydrates.fromWeightsInGrams(
          {double? carbohydrate, double? sugar}) =>
      Carbohydrates(
          carbohydrate: Carbohydrate(Weight(
              weight: NonnegativeNumber(carbohydrate ?? 0),
              weightUnit: WeightUnit(WeightUnits.gram))),
          sugar: Sugar(Weight(
              weight: NonnegativeNumber(sugar ?? 0),
              weightUnit: WeightUnit(WeightUnits.gram))));

  Carbohydrates copyWith({
    Carbohydrate? carbohydrate,
    Sugar? sugar,
  }) =>
      Carbohydrates._(
        carbohydrate: carbohydrate ?? this.carbohydrate,
        sugar: sugar ?? this.sugar,
      );

  factory Carbohydrates.zero() =>
      Carbohydrates(carbohydrate: Carbohydrate.zero(), sugar: Sugar.zero());
}

class NutrientFacts extends Equatable {
  final Proteins proteins;
  final Fats fats;
  final Carbohydrates carbohydrates;
  int get totalCalories =>
      proteins.calories + fats.calories + carbohydrates.calories;

  Either<ValueFailure<dynamic>, Unit> get failureOrUnit =>
      proteins.failureOrUnit
          .andThen(fats.failureOrUnit.andThen(carbohydrates.failureOrUnit));

  const NutrientFacts(
      {required this.proteins,
      required this.fats,
      required this.carbohydrates});

  factory NutrientFacts.empty() => NutrientFacts(
      proteins: Proteins.zero(),
      fats: Fats.zero(),
      carbohydrates: Carbohydrates.zero());

  NutrientFacts copyWith(
          {Proteins? proteins, Fats? fats, Carbohydrates? carbohydrates}) =>
      NutrientFacts(
        carbohydrates: carbohydrates ?? this.carbohydrates,
        fats: fats ?? this.fats,
        proteins: proteins ?? this.proteins,
      );

  factory NutrientFacts.fromWeightsIngrams({
    double? fat,
    double? saturatedFat,
    double? transFat,
    double? monosaturatedFat,
    double? polysaturatedFat,
    double? protein,
    double? animalProtein,
    double? plantProtein,
    double? carbohydrate,
    double? sugar,
  }) =>
      NutrientFacts(
        fats: Fats.fromWeightsInGrams(
            fat: fat,
            monosaturatedFat: monosaturatedFat,
            polysaturatedFat: polysaturatedFat,
            saturatedFat: saturatedFat,
            transFat: transFat),
        proteins: Proteins.fromWeightsInGrams(
            protein: protein,
            plantProtein: plantProtein,
            animalProtein: animalProtein),
        carbohydrates: Carbohydrates.fromWeightsInGrams(
            carbohydrate: carbohydrate, sugar: sugar),
      );

  @override
  List<Object> get props => [proteins, fats, carbohydrates];
}
