import 'package:flutter_test/flutter_test.dart';
import 'package:shopify_domain/core/value_objects.dart';
import 'package:shopify_domain/product.dart';
import 'package:shopify_domain/src/product/product_dtos.dart';

void main() {
  final String id = UniqueId().getOrCrash();
  const String barcode = 'ABC-123-DEF';
  const double weight = 10;
  const String weightUnit = 'gram';
  const double price = 21.37;
  const String currency = 'zl';
  const String category = 'bread';
  const String name = 'Test Product';
  const String brand = 'Test Brand';
  const String description = 'This is just a test product';
  const String ingredients = 'tests, bugs, overflows';
  final List<String> photosUrls = [
    'https://firebasestorage.googleapis.com/v0/b/shopify-app-6d29d.appspot.com/o/images/1',
    'https://firebasestorage.googleapis.com/v0/b/shopify-app-6d29d.appspot.com/o/images/2',
    'https://firebasestorage.googleapis.com/v0/b/shopify-app-6d29d.appspot.com/o/images/3'
  ];

  // Weight
  final tWeight = Weight.fromPrimitives(weight, weightUnit);
  const tWeightDto = WeightDto(weight: weight, weightUnit: weightUnit);

  // Price
  final tPrice = Price.fromPrimitives(price, currency);
  const tPriceDto = PriceDto(price: price, currency: currency);

  // Nutrients
  final tFat = Fat.zero();
  final tSaturatedFat = SaturatedFat.zero();
  final tTransFat = TransFat.zero();
  final tMonosaturatedFat = MonosaturatedFat.zero();
  final tPolysaturatedFat = PolysaturatedFat.zero();
  final tProtein = Protein.zero();
  final tPlantProtein = PlantProtein.zero();
  final tAnimalProtein = AnimalProtein.zero();
  final tCarbohydrate = Carbohydrate.zero();
  final tSugar = Sugar.zero();
  final listOfNutrients = [
    tFat,
    tSaturatedFat,
    tTransFat,
    tMonosaturatedFat,
    tPolysaturatedFat,
    tProtein,
    tPlantProtein,
    tAnimalProtein,
    tCarbohydrate,
    tSugar
  ];
  const tNutrientWeight = WeightDto(weight: 0, weightUnit: 'gram');
  const tFatDto = NutrientDto(weight: tNutrientWeight, name: 'Fat');
  const tSaturatedFatDto =
      NutrientDto(weight: tNutrientWeight, name: 'Saturated Fat');
  const tMonosaturatedFatDto =
      NutrientDto(weight: tNutrientWeight, name: 'Monosaturated Fat');
  const tPolysaturatedFatDto =
      NutrientDto(weight: tNutrientWeight, name: 'Polysaturated Fat');
  const tTransFatDto = NutrientDto(weight: tNutrientWeight, name: 'Trans Fat');
  const tProteinDto = NutrientDto(weight: tNutrientWeight, name: 'Protein');
  const tAnimalProteinDto =
      NutrientDto(weight: tNutrientWeight, name: 'Animal Protein');
  const tPlantProteinDto =
      NutrientDto(weight: tNutrientWeight, name: 'Plant Protein');
  const tCarbohydrateDto =
      NutrientDto(weight: tNutrientWeight, name: 'Carbohydrate');
  const tSugarDto = NutrientDto(weight: tNutrientWeight, name: 'Sugar');

  final listOfDtos = [
    tFatDto,
    tSaturatedFatDto,
    tTransFatDto,
    tMonosaturatedFatDto,
    tPolysaturatedFatDto,
    tProteinDto,
    tPlantProteinDto,
    tAnimalProteinDto,
    tCarbohydrateDto,
    tSugarDto
  ];

  final fats = Fats(
      fat: tFat,
      monosaturatedFat: tMonosaturatedFat,
      polysaturatedFat: tPolysaturatedFat,
      saturatedFat: tSaturatedFat,
      transFat: tTransFat);
  final proteins = Proteins(
      animalProtein: tAnimalProtein,
      plantProtein: tPlantProtein,
      protein: tProtein);
  final carbohydrates =
      Carbohydrates(carbohydrate: tCarbohydrate, sugar: tSugar);

  const fatsDto = FatsDto(
    fat: tFatDto,
    monosaturatedFat: tMonosaturatedFatDto,
    polysaturatedFat: tPolysaturatedFatDto,
    saturatedFat: tSaturatedFatDto,
    transFat: tTransFatDto,
  );
  const proteinsDto = ProteinsDto(
    protein: tProteinDto,
    animalProtein: tAnimalProteinDto,
    plantProtein: tPlantProteinDto,
  );
  const carbohydratesDto =
      CarbohydratesDto(carbohydrate: tCarbohydrateDto, sugar: tSugarDto);

  final nutrientFacts = NutrientFacts(proteins, fats, carbohydrates);
  const nutrientFactsDto = NutrientFactsDto(
      fats: fatsDto, proteins: proteinsDto, carbohydrates: carbohydratesDto);

  // Product
  final tProduct = Product.fromPrimitives(
      id: id,
      barcode: barcode,
      weight: weight,
      weightUnit: weightUnit,
      price: price,
      currency: currency,
      category: category,
      name: name,
      brand: brand,
      description: description,
      ingredients: ingredients,
      photosUrls: photosUrls);

  final tProductDto = ProductDto(
      id: id,
      barcode: barcode,
      weight: tWeightDto,
      price: tPriceDto,
      category: category,
      name: name,
      brand: brand,
      description: description,
      ingredients: ingredients,
      photosUrls: photosUrls);

  group('ProductDto', () {
    test(
      'should convert fromDomain',
      () async {
        // act
        final result = ProductDto.fromDomain(tProduct);
        // assert
        expect(result, tProductDto);
      },
    );

    test(
      'should convert toDomain',
      () async {
        // act
        final result = tProductDto.toDomain();
        // assert
        expect(result, tProduct);
      },
    );
  });
  group('WeightDto', () {
    test(
      'should convert fromDomain',
      () async {
        // act
        final result = WeightDto.fromDomain(tWeight);
        // assert
        expect(result, tWeightDto);
      },
    );

    test(
      'should convert toDomain',
      () async {
        // act
        final result = tWeightDto.toDomain();
        // assert
        expect(result, tWeight);
      },
    );
  });

  group('PriceDto', () {
    test(
      'should convert fromDomain',
      () async {
        // act
        final result = PriceDto.fromDomain(tPrice);
        // assert
        expect(result, tPriceDto);
      },
    );

    test(
      'should convert toDomain',
      () async {
        // act
        final result = tPriceDto.toDomain();
        // assert
        expect(result, tPrice);
      },
    );
  });

  group('NutrientDto', () {
    test(
      'should convert fromDomain',
      () async {
        // act
        for (final nutrient in listOfNutrients) {
          final index = listOfNutrients.indexOf(nutrient);
          final result = NutrientDto.fromDomain(nutrient);
          // assert
          expect(result, listOfDtos[index]);
        }
      },
    );

    test(
      'should convert toDomain',
      () async {
        // act
        for (final nutrientDto in listOfDtos) {
          final index = listOfDtos.indexOf(nutrientDto);
          final result = nutrientDto.toDomain();
          // assert
          expect(result, listOfNutrients[index]);
        }
      },
    );
  });
  group('NutrientsGroupDto', () {
    test(
      'should convert fromDomain',
      () async {
        // act
        final fatsResult = FatsDto.fromDomain(fats);
        final proteinsResult = ProteinsDto.fromDomain(proteins);
        final carbohydratesResult = CarbohydratesDto.fromDomain(carbohydrates);
        // assert
        expect(fatsResult, fatsDto);
        expect(proteinsResult, proteinsDto);
        expect(carbohydratesResult, carbohydratesDto);
      },
    );

    test(
      'should convert toDomain',
      () async {
        // act
        final fatsResult = fatsDto.toDomain();
        final proteinsResult = proteinsDto.toDomain();
        final carbohydratesResult = carbohydratesDto.toDomain();
        // assert
        expect(fatsResult, fats);
        expect(proteinsResult, proteins);
        expect(carbohydratesResult, carbohydrates);
      },
    );
  });

  group('NutrientsFactsDto', () {
    test(
      'should convert fromDomain',
      () async {
        // act
        final result = NutrientFactsDto.fromDomain(nutrientFacts);
        // assert
        expect(result, nutrientFactsDto);
      },
    );

    test(
      'should convert toDomain',
      () async {
        // act
        final result = nutrientFactsDto.toDomain();
        // assert
        expect(result, nutrientFacts);
      },
    );
  });
}
