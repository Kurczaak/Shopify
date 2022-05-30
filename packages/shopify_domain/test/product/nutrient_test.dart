import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shopify_domain/core.dart';
import 'package:shopify_domain/product.dart';

void main() {
  group('fats', () {
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
}
