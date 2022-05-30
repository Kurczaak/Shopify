import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';
import 'package:shopify_domain/core.dart';
import 'package:shopify_domain/product.dart';

part 'product_dtos.freezed.dart';
part 'product_dtos.g.dart';

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
        photosUrls: product.photos
            .getOrCrash()
            .map((shopifyUrl) => shopifyUrl.getOrCrash())
            .asList(),
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
      photos: NonEmptyList5(KtList.from(
          photosUrls.map((stringUrl) => ShopifyUrl(stringUrl)).toList())),
      weight: weight.toDomain(),
      price: price.toDomain(),
    );
  }

  factory ProductDto.fromJson(Map<String, dynamic> json) =>
      _$ProductDtoFromJson(json);
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
        weight: NonnegativeNumber(weight),
        weightUnit: WeightUnit.fromString(weightUnit));
  }

  factory WeightDto.fromJson(Map<String, dynamic> json) =>
      _$WeightDtoFromJson(json);
}

@freezed
class PriceDto with _$PriceDto {
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

  factory PriceDto.fromJson(Map<String, dynamic> json) =>
      _$PriceDtoFromJson(json);
}

@freezed
class NutrientDto with _$NutrientDto {
  const NutrientDto._();

  const factory NutrientDto({
    required WeightDto weight,
    required String name,
  }) = _NutrientDto;

  factory NutrientDto.fromDomain(Nutrient nutrient) => NutrientDto(
      weight: WeightDto.fromDomain(nutrient.weight),
      name: nutrient.name.getOrCrash());

  Nutrient toDomain() {
    switch (name) {
      case 'Fat':
        return Fat(weight.toDomain());
      case 'Saturated Fat':
        return SaturatedFat(weight.toDomain());
      case 'Trans Fat':
        return TransFat(weight.toDomain());
      case 'Monosaturated Fat':
        return MonosaturatedFat(weight.toDomain());
      case 'Polysaturated Fat':
        return PolysaturatedFat(weight.toDomain());
      case 'Protein':
        return Protein(weight.toDomain());
      case 'Plant Protein':
        return PlantProtein(weight.toDomain());
      case 'Animal Protein':
        return AnimalProtein(weight.toDomain());
      case 'Carbohydrate':
        return Carbohydrate(weight.toDomain());
      case 'Sugar':
        return Sugar(weight.toDomain());
      default:
        throw UnimplementedError('Unexpected nutrient name: $name');
    }
  }

  factory NutrientDto.fromJson(Map<String, dynamic> json) =>
      _$NutrientDtoFromJson(json);
}
