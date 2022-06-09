import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shopify_domain/core.dart';
import 'package:shopify_domain/product.dart';

void main() {
  group('Fats', () {
    late Fat fat;
    late SaturatedFat saturatedFat;
    late TransFat transFat;
    late MonosaturatedFat monosaturatedFat;
    late PolysaturatedFat polysaturatedFat;
    late Fats fats;
    final correctWeight = Weight(
        weight: NonnegativeNumber(1), weightUnit: WeightUnit(WeightUnits.gram));

    final incorrectWeight = correctWeight.copyWith(
        weightUnit: WeightUnit.fromString('incorrectUnit'));
    setUp(() {
      fat = Fat(correctWeight);
      saturatedFat = SaturatedFat(correctWeight);
      transFat = TransFat(correctWeight);
      monosaturatedFat = MonosaturatedFat(correctWeight);
      polysaturatedFat = PolysaturatedFat(correctWeight);
      fats = Fats(
        fat: fat,
        monosaturatedFat: monosaturatedFat,
        polysaturatedFat: polysaturatedFat,
        saturatedFat: saturatedFat,
        transFat: transFat,
      );
    });

    test('Should return corresponding names', () {
      expect(fat.name.getOrCrash(), 'Fat');
      expect(saturatedFat.name.getOrCrash(), 'Saturated Fat');
      expect(transFat.name.getOrCrash(), 'Trans Fat');
      expect(monosaturatedFat.name.getOrCrash(), 'Monosaturated Fat');
      expect(polysaturatedFat.name.getOrCrash(), 'Polysaturated Fat');
    });

    test('shoul return correct calories', () {
      expect(fats.calories, fats.mainNutrient.weight.weight.getOrCrash() * 9);
    });

    test('should not return a failure given correct data', () {
      expect(fat.failureOrUnit, isA<Right<ValueFailure<dynamic>, Unit>>());
      expect(saturatedFat.failureOrUnit,
          isA<Right<ValueFailure<dynamic>, Unit>>());
      expect(transFat.failureOrUnit, isA<Right<ValueFailure<dynamic>, Unit>>());
      expect(monosaturatedFat.failureOrUnit,
          isA<Right<ValueFailure<dynamic>, Unit>>());
      expect(polysaturatedFat.failureOrUnit,
          isA<Right<ValueFailure<dynamic>, Unit>>());
      expect(fats.failureOrUnit, isA<Right<ValueFailure<dynamic>, Unit>>());
    });

    test('should return a failure given incorrect fat', () {
      fat = Fat(incorrectWeight);
      fats = Fats(
        fat: fat,
        monosaturatedFat: monosaturatedFat,
        polysaturatedFat: polysaturatedFat,
        saturatedFat: saturatedFat,
        transFat: transFat,
      );
      expect(fat.failureOrUnit, isA<Left<ValueFailure<dynamic>, Unit>>());
      expect(saturatedFat.failureOrUnit,
          isA<Right<ValueFailure<dynamic>, Unit>>());
      expect(transFat.failureOrUnit, isA<Right<ValueFailure<dynamic>, Unit>>());
      expect(monosaturatedFat.failureOrUnit,
          isA<Right<ValueFailure<dynamic>, Unit>>());
      expect(polysaturatedFat.failureOrUnit,
          isA<Right<ValueFailure<dynamic>, Unit>>());
      expect(fats.failureOrUnit, isA<Left<ValueFailure<dynamic>, Unit>>());
    });

    test('should return a failure given incorrect saturatedFat', () {
      saturatedFat = SaturatedFat(incorrectWeight);
      fats = Fats(
        fat: fat,
        monosaturatedFat: monosaturatedFat,
        polysaturatedFat: polysaturatedFat,
        saturatedFat: saturatedFat,
        transFat: transFat,
      );
      expect(fat.failureOrUnit, isA<Right<ValueFailure<dynamic>, Unit>>());
      expect(
          saturatedFat.failureOrUnit, isA<Left<ValueFailure<dynamic>, Unit>>());
      expect(transFat.failureOrUnit, isA<Right<ValueFailure<dynamic>, Unit>>());
      expect(monosaturatedFat.failureOrUnit,
          isA<Right<ValueFailure<dynamic>, Unit>>());
      expect(polysaturatedFat.failureOrUnit,
          isA<Right<ValueFailure<dynamic>, Unit>>());
      expect(fats.failureOrUnit, isA<Left<ValueFailure<dynamic>, Unit>>());
    });

    test('should return a failure given incorrect transFat', () {
      transFat = TransFat(incorrectWeight);
      fats = Fats(
        fat: fat,
        monosaturatedFat: monosaturatedFat,
        polysaturatedFat: polysaturatedFat,
        saturatedFat: saturatedFat,
        transFat: transFat,
      );
      expect(fat.failureOrUnit, isA<Right<ValueFailure<dynamic>, Unit>>());
      expect(saturatedFat.failureOrUnit,
          isA<Right<ValueFailure<dynamic>, Unit>>());
      expect(transFat.failureOrUnit, isA<Left<ValueFailure<dynamic>, Unit>>());
      expect(monosaturatedFat.failureOrUnit,
          isA<Right<ValueFailure<dynamic>, Unit>>());
      expect(polysaturatedFat.failureOrUnit,
          isA<Right<ValueFailure<dynamic>, Unit>>());
      expect(fats.failureOrUnit, isA<Left<ValueFailure<dynamic>, Unit>>());
    });

    test('should return a failure given incorrect monosaturatedFat', () {
      monosaturatedFat = MonosaturatedFat(incorrectWeight);
      fats = Fats(
        fat: fat,
        monosaturatedFat: monosaturatedFat,
        polysaturatedFat: polysaturatedFat,
        saturatedFat: saturatedFat,
        transFat: transFat,
      );
      expect(fat.failureOrUnit, isA<Right<ValueFailure<dynamic>, Unit>>());
      expect(saturatedFat.failureOrUnit,
          isA<Right<ValueFailure<dynamic>, Unit>>());
      expect(transFat.failureOrUnit, isA<Right<ValueFailure<dynamic>, Unit>>());
      expect(monosaturatedFat.failureOrUnit,
          isA<Left<ValueFailure<dynamic>, Unit>>());
      expect(polysaturatedFat.failureOrUnit,
          isA<Right<ValueFailure<dynamic>, Unit>>());
      expect(fats.failureOrUnit, isA<Left<ValueFailure<dynamic>, Unit>>());
    });

    test('should return a failure given incorrect polysaturatedFat', () {
      polysaturatedFat = PolysaturatedFat(incorrectWeight);
      fats = Fats(
        fat: fat,
        monosaturatedFat: monosaturatedFat,
        polysaturatedFat: polysaturatedFat,
        saturatedFat: saturatedFat,
        transFat: transFat,
      );
      expect(fat.failureOrUnit, isA<Right<ValueFailure<dynamic>, Unit>>());
      expect(saturatedFat.failureOrUnit,
          isA<Right<ValueFailure<dynamic>, Unit>>());
      expect(transFat.failureOrUnit, isA<Right<ValueFailure<dynamic>, Unit>>());
      expect(monosaturatedFat.failureOrUnit,
          isA<Right<ValueFailure<dynamic>, Unit>>());
      expect(polysaturatedFat.failureOrUnit,
          isA<Left<ValueFailure<dynamic>, Unit>>());
      expect(fats.failureOrUnit, isA<Left<ValueFailure<dynamic>, Unit>>());
    });
  });
  group('Proteins', () {
    late Protein protein;
    late AnimalProtein animalProtein;
    late PlantProtein plantProtein;
    late Proteins proteins;
    final correctWeight = Weight(
        weight: NonnegativeNumber(1), weightUnit: WeightUnit(WeightUnits.gram));
    final incorrectWeight = correctWeight.copyWith(
        weightUnit: WeightUnit.fromString('incorrectUnit'));

    setUp(() {
      protein = Protein(correctWeight);
      animalProtein = AnimalProtein(correctWeight);
      plantProtein = PlantProtein(correctWeight);
      proteins = Proteins(
        protein: protein,
        animalProtein: animalProtein,
        plantProtein: plantProtein,
      );
    });

    test('Should return corresponding names', () {
      expect(protein.name.getOrCrash(), 'Protein');
      expect(animalProtein.name.getOrCrash(), 'Animal Protein');
      expect(plantProtein.name.getOrCrash(), 'Plant Protein');
    });

    test('shoul return correct calories', () {
      expect(proteins.calories,
          proteins.mainNutrient.weight.weight.getOrCrash() * 4);
    });

    test('should not return a failure given correct data', () {
      expect(protein.failureOrUnit, isA<Right<ValueFailure<dynamic>, Unit>>());
      expect(animalProtein.failureOrUnit,
          isA<Right<ValueFailure<dynamic>, Unit>>());
      expect(plantProtein.failureOrUnit,
          isA<Right<ValueFailure<dynamic>, Unit>>());
      expect(proteins.failureOrUnit, isA<Right<ValueFailure<dynamic>, Unit>>());
    });

    test('should return a failure given incorrect protein', () {
      protein = Protein(incorrectWeight);
      proteins = Proteins(
        protein: protein,
        animalProtein: animalProtein,
        plantProtein: plantProtein,
      );
      expect(protein.failureOrUnit, isA<Left<ValueFailure<dynamic>, Unit>>());
      expect(animalProtein.failureOrUnit,
          isA<Right<ValueFailure<dynamic>, Unit>>());
      expect(plantProtein.failureOrUnit,
          isA<Right<ValueFailure<dynamic>, Unit>>());
      expect(proteins.failureOrUnit, isA<Left<ValueFailure<dynamic>, Unit>>());
    });
    test('should return a failure given incorrect animalProtein', () {
      animalProtein = AnimalProtein(incorrectWeight);
      proteins = Proteins(
        protein: protein,
        animalProtein: animalProtein,
        plantProtein: plantProtein,
      );
      expect(protein.failureOrUnit, isA<Right<ValueFailure<dynamic>, Unit>>());
      expect(animalProtein.failureOrUnit,
          isA<Left<ValueFailure<dynamic>, Unit>>());
      expect(plantProtein.failureOrUnit,
          isA<Right<ValueFailure<dynamic>, Unit>>());
      expect(proteins.failureOrUnit, isA<Left<ValueFailure<dynamic>, Unit>>());
    });
    test('should return a failure given incorrect plantProtein', () {
      plantProtein = PlantProtein(incorrectWeight);
      proteins = Proteins(
        protein: protein,
        animalProtein: animalProtein,
        plantProtein: plantProtein,
      );
      expect(protein.failureOrUnit, isA<Right<ValueFailure<dynamic>, Unit>>());
      expect(animalProtein.failureOrUnit,
          isA<Right<ValueFailure<dynamic>, Unit>>());
      expect(
          plantProtein.failureOrUnit, isA<Left<ValueFailure<dynamic>, Unit>>());
      expect(proteins.failureOrUnit, isA<Left<ValueFailure<dynamic>, Unit>>());
    });
  });

  group('Carbohydrates', () {
    late Carbohydrate carbohydrate;
    late Sugar sugar;
    late Carbohydrates carbohydrates;
    final correctWeight = Weight(
        weight: NonnegativeNumber(1), weightUnit: WeightUnit(WeightUnits.gram));

    final incorrectWeight = correctWeight.copyWith(
        weightUnit: WeightUnit.fromString('incorrectUnit'));

    setUp(() {
      carbohydrate = Carbohydrate(correctWeight);
      sugar = Sugar(correctWeight);
      carbohydrates = Carbohydrates(carbohydrate: carbohydrate, sugar: sugar);
    });

    test('Should return corresponding names', () {
      expect(carbohydrate.name.getOrCrash(), 'Carbohydrate');
      expect(sugar.name.getOrCrash(), 'Sugar');
    });

    test('shoul return correct calories', () {
      expect(carbohydrates.calories,
          carbohydrates.mainNutrient.weight.weight.getOrCrash() * 4);
    });

    test('should not return a failure given correct data', () {
      expect(carbohydrate.failureOrUnit,
          isA<Right<ValueFailure<dynamic>, Unit>>());
      expect(sugar.failureOrUnit, isA<Right<ValueFailure<dynamic>, Unit>>());
      expect(carbohydrates.failureOrUnit,
          isA<Right<ValueFailure<dynamic>, Unit>>());
    });

    test('should return a failure given incorrect carbohydrate', () {
      carbohydrate = Carbohydrate(incorrectWeight);
      carbohydrates = Carbohydrates(carbohydrate: carbohydrate, sugar: sugar);
      expect(
          carbohydrate.failureOrUnit, isA<Left<ValueFailure<dynamic>, Unit>>());
      expect(sugar.failureOrUnit, isA<Right<ValueFailure<dynamic>, Unit>>());
      expect(carbohydrates.failureOrUnit,
          isA<Left<ValueFailure<dynamic>, Unit>>());
    });

    test('should return a failure given incorrect sugar', () {
      sugar = Sugar(incorrectWeight);
      carbohydrates = Carbohydrates(carbohydrate: carbohydrate, sugar: sugar);
      expect(carbohydrate.failureOrUnit,
          isA<Right<ValueFailure<dynamic>, Unit>>());
      expect(sugar.failureOrUnit, isA<Left<ValueFailure<dynamic>, Unit>>());
      expect(carbohydrates.failureOrUnit,
          isA<Left<ValueFailure<dynamic>, Unit>>());
    });
  });

  group('Nutrients table', () {
    late Fats fats;
    late Proteins proteins;
    late Carbohydrates carbohydrates;
    late NutrientFacts nutrientFacts;
    final correctWeight = Weight(
        weight: NonnegativeNumber(1), weightUnit: WeightUnit(WeightUnits.gram));
    final incorrectWeight =
        correctWeight.copyWith(weight: NonnegativeNumber(-1));
    setUp(() {
      fats = Fats(fat: Fat(correctWeight));
      proteins = Proteins(protein: Protein(correctWeight));
      carbohydrates = Carbohydrates(carbohydrate: Carbohydrate(correctWeight));
      nutrientFacts = NutrientFacts(
          proteins: proteins, fats: fats, carbohydrates: carbohydrates);
    });

    test('should return correct calories', () {
      expect(nutrientFacts.totalCalories,
          fats.calories + proteins.calories + carbohydrates.calories);
    });

    test('failureOrUnit should not return a failure given correct data', () {
      expect(nutrientFacts.failureOrUnit,
          isA<Right<ValueFailure<dynamic>, Unit>>());
    });
    test('failureOrUnit should return a failure given incorrect fats', () {
      fats = Fats(fat: Fat(incorrectWeight));
      nutrientFacts = NutrientFacts(
          proteins: proteins, fats: fats, carbohydrates: carbohydrates);
      expect(nutrientFacts.failureOrUnit,
          isA<Left<ValueFailure<dynamic>, Unit>>());
    });
    test('failureOrUnit should return a failure given incorrect proteins', () {
      proteins = Proteins(protein: Protein(incorrectWeight));
      nutrientFacts = NutrientFacts(
          proteins: proteins, fats: fats, carbohydrates: carbohydrates);
      expect(nutrientFacts.failureOrUnit,
          isA<Left<ValueFailure<dynamic>, Unit>>());
    });

    test('failureOrUnit should return a failure given incorrect carbohydrates',
        () {
      carbohydrates =
          Carbohydrates(carbohydrate: Carbohydrate(incorrectWeight));
      nutrientFacts = NutrientFacts(
          proteins: proteins, fats: fats, carbohydrates: carbohydrates);
      expect(nutrientFacts.failureOrUnit,
          isA<Left<ValueFailure<dynamic>, Unit>>());
    });
  });
}
