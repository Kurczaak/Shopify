import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';
import 'package:shopify_domain/core/failures.dart';
import 'package:shopify_domain/core/value_objects.dart';
import 'package:shopify_domain/product/nutrient.dart';
import 'package:shopify_domain/product/product_categories.dart';
import 'package:shopify_domain/product/value_objects.dart';
import 'package:shopify_domain/product/weight.dart';

part 'product.freezed.dart';

@freezed
class Product with _$Product {
  const Product._();

  const factory Product({
    required UniqueId id,
    required Barcode barcode,
    required Weight weight,
    required NutrientFacts nutrientFacts,
    required Category category,
    required ProductName name,
    required BrandName brand,
    required ProductDescription description,
    required ProductDescription ingredients,
    required NonEmptyList5<ShopifyUrl> photos,
  }) = _Product;

  factory Product.empty() => Product(
      id: UniqueId(),
      barcode: Barcode(''),
      weight: Weight.zero(),
      nutrientFacts: NutrientFacts.empty(),
      category: Category.empty(),
      name: ProductName(''),
      brand: BrandName(''),
      description: ProductDescription(''),
      ingredients: ProductDescription(''),
      photos: NonEmptyList5<ShopifyUrl>.empty());

  factory Product.fromPrimitives({
    required String id,
    required String barcode,
    required double weight,
    required String weightUnit,
    required double price,
    required String currency,
    required String category,
    required String name,
    required String brand,
    required String description,
    required String ingredients,
    required List<String> photosUrls,
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
      Product(
        id: UniqueId.fromUniqueString(id),
        barcode: Barcode(barcode),
        weight: Weight.fromPrimitives(weight, weightUnit),
        nutrientFacts: NutrientFacts.fromWeightsIngrams(
            fat: fat,
            monosaturatedFat: monosaturatedFat,
            polysaturatedFat: polysaturatedFat,
            saturatedFat: saturatedFat,
            transFat: transFat,
            protein: protein,
            plantProtein: plantProtein,
            animalProtein: animalProtein,
            carbohydrate: carbohydrate,
            sugar: sugar),
        category: Category.fromString(category),
        name: ProductName(name),
        brand: BrandName(brand),
        description: ProductDescription(description),
        ingredients: ProductDescription(ingredients),
        photos: NonEmptyList5(KtList.from(
            photosUrls.map((stringUrl) => ShopifyUrl(stringUrl)).toList())),
      );

  Either<ValueFailure, Unit> get failureOrUnit {
    return barcode.failureOrUnit.andThen(
      weight.failureOrUnit.andThen(
        nutrientFacts.failureOrUnit.andThen(
          category.failureOrUnit.andThen(
            name.failureOrUnit.andThen(
              brand.failureOrUnit.andThen(
                description.failureOrUnit.andThen(
                  ingredients.failureOrUnit.andThen(
                    photos.failureOrUnit,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Option<ValueFailure<dynamic>> get failureOption {
    return barcode.failureOrUnit
        .andThen(
          weight.failureOrUnit.andThen(
            nutrientFacts.failureOrUnit.andThen(
              category.failureOrUnit.andThen(
                name.failureOrUnit.andThen(
                  brand.failureOrUnit.andThen(
                    description.failureOrUnit.andThen(
                      ingredients.failureOrUnit.andThen(
                        photos.failureOrUnit,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        )
        .fold((f) => some(f), (_) => none());
  }
}
