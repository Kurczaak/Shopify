import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';
import 'package:shopify_manager/domain/core/value_objects.dart';
import 'package:shopify_manager/domain/product/nutrient.dart';
import 'package:shopify_manager/domain/product/price.dart';
import 'package:shopify_manager/domain/product/product.dart';
import 'package:shopify_manager/domain/product/value_objects.dart';
import 'package:shopify_manager/domain/product/weight.dart';

part 'product_dtos.freezed.dart';

@freezed
class ProductDto with _$ProductDto {
  const ProductDto._();

  const factory ProductDto({
    @Default('') @JsonKey(ignore: true) String id,
    required String barcode,
    required WeightDto weight,
    //required NutrientsGroupDto fats,
    required PriceDto price,
    required String category,
    required String name,
    required String brand,
    required String description,
    required String ingredients,
    required List<String> photosUrls,
  }) = _ProductDto;

  factory ProductDto.fromDomain(Product product) => ProductDto(
        id: product.id.getOrCrash(),
        barcode: product.barcode.getOrCrash(),
        weight: WeightDto.fromDomain(product.weight),
        price: PriceDto.fromDomain(product.price),
        category: product.category.getOrCrash().name,
        name: product.name.getOrCrash(),
        brand: product.brand.getOrCrash(),
        description: product.description.getOrCrash(),
        ingredients: product.ingredients.getOrCrash(),
        photosUrls: product.photos.getOrCrash().asList(),
      );

  Product toDomain() {
    return Product(
      barcode: Barcode(barcode),
      brand: BrandName(brand),
      category: Category.fromString(category),
      description: ProductDescription(description),
      id: UniqueId.fromUniqueString(id),
      ingredients: ProductDescription(ingredients),
      name: ProductName(name),
      photos: NonEmptyList5(KtList<String>.from(photosUrls)),
      weight: weight.toDomain(),
      price: price.toDomain(),
    );
  }
}

@freezed
class WeightDto with _$WeightDto {
  const WeightDto._();

  const factory WeightDto({
    required double weight,
    required String weightUnit,
  }) = _WeightDto;

  factory WeightDto.fromDomain(Weight weight) => WeightDto(
      weight: weight.weight.getOrCrash(),
      weightUnit: weight.weightUnit.getOrCrash().name);

  Weight toDomain() {
    return Weight(
        weight: PositiveNumber(weight),
        weightUnit: WeightUnit.fromString(weightUnit));
  }
}

@freezed
abstract class PriceDto with _$PriceDto {
  const PriceDto._();

  const factory PriceDto({required double price, required String currency}) =
      _PriceDto;

  factory PriceDto.fromDomain(Price price) => PriceDto(
      price: price.price.getOrCrash(),
      currency: price.currency.getOrCrash().name);

  Price toDomain() {
    return Price(
        price: PositiveNumber(price), currency: Currency.fromString(currency));
  }
}


// @freezed
// class NutrientDto with _$NutrientDto {
//   const NutrientDto._();

//   const factory NutrientDto({
//     required WeightDto weight,
//     required String name,
//   }) = _NutrientDto;
// }

// @freezed
// class NutrientsGroupDto with _$NutrientsGroupDto {
//   const NutrientsGroupDto._();
//   const factory NutrientsGroupDto({
//     required NutrientDto mainNutrient,
//     required List<NutrientDto> subNutrients,
//   }) = _NutrientsGroupDto;
// }
