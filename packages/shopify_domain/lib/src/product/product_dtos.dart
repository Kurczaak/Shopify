import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';
import 'package:shopify_domain/core.dart';
import 'package:shopify_domain/product.dart';

part 'product_dtos.freezed.dart';
part 'product_dtos.g.dart';

@freezed
class ShopProductDto with _$ShopProductDto {
  const factory ShopProductDto(
      {required String productId, required PriceDto price}) = _ShopProductDto;

  factory ShopProductDto.fromDomain({
    required Product product,
    required Price price,
  }) =>
      ShopProductDto(
          productId: product.id.getOrCrash(),
          price: PriceDto.fromDomain(price));
  factory ShopProductDto.fromJson(Map<String, dynamic> json) =>
      _$ShopProductDtoFromJson(json);
}

@freezed
class ProductDto with _$ProductDto {
  const ProductDto._();

  const factory ProductDto({
    @Default('') @JsonKey(ignore: true) String id,
    required String barcode,
    required WeightDto weight,
    required NutrientFactsDto nutrientFacts,
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
        nutrientFacts: NutrientFactsDto.fromDomain(product.nutrientFacts),
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
      nutrientFacts: nutrientFacts.toDomain(),
    );
  }

  factory ProductDto.fromJson(Map<String, dynamic> json) =>
      _$ProductDtoFromJson(json);

  factory ProductDto.fromFirestore(DocumentSnapshot doc) {
    return ProductDto.fromJson(doc.data() as Map<String, dynamic>)
        .copyWith(id: doc.id);
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

@freezed
class FatsDto with _$FatsDto {
  const FatsDto._();

  const factory FatsDto({
    required NutrientDto fat,
    required NutrientDto saturatedFat,
    required NutrientDto transFat,
    required NutrientDto monosaturatedFat,
    required NutrientDto polysaturatedFat,
  }) = _FatsDto;

  factory FatsDto.fromDomain(Fats fats) {
    return FatsDto(
        fat: NutrientDto.fromDomain(fats.fat),
        saturatedFat: NutrientDto.fromDomain(fats.saturatedFat),
        transFat: NutrientDto.fromDomain(fats.transFat),
        monosaturatedFat: NutrientDto.fromDomain(fats.monosaturatedFat),
        polysaturatedFat: NutrientDto.fromDomain(fats.polysaturatedFat));
  }

  Fats toDomain() {
    return Fats(
      fat: fat.toDomain() as Fat,
      monosaturatedFat: monosaturatedFat.toDomain() as MonosaturatedFat,
      polysaturatedFat: polysaturatedFat.toDomain() as PolysaturatedFat,
      saturatedFat: saturatedFat.toDomain() as SaturatedFat,
      transFat: transFat.toDomain() as TransFat,
    );
  }

  factory FatsDto.fromJson(Map<String, dynamic> json) =>
      _$FatsDtoFromJson(json);
}

@freezed
class ProteinsDto with _$ProteinsDto {
  const ProteinsDto._();

  const factory ProteinsDto({
    required NutrientDto protein,
    required NutrientDto animalProtein,
    required NutrientDto plantProtein,
  }) = _ProteinsDto;

  factory ProteinsDto.fromDomain(Proteins proteins) {
    return ProteinsDto(
        protein: NutrientDto.fromDomain(proteins.protein),
        animalProtein: NutrientDto.fromDomain(proteins.animalProtein),
        plantProtein: NutrientDto.fromDomain(proteins.plantProtein));
  }

  Proteins toDomain() {
    return Proteins(
      animalProtein: animalProtein.toDomain() as AnimalProtein,
      plantProtein: plantProtein.toDomain() as PlantProtein,
      protein: protein.toDomain() as Protein,
    );
  }

  factory ProteinsDto.fromJson(Map<String, dynamic> json) =>
      _$ProteinsDtoFromJson(json);
}

@freezed
class CarbohydratesDto with _$CarbohydratesDto {
  const CarbohydratesDto._();

  const factory CarbohydratesDto({
    required NutrientDto carbohydrate,
    required NutrientDto sugar,
  }) = _CarbohydratesDto;

  factory CarbohydratesDto.fromDomain(Carbohydrates carbohydrates) {
    return CarbohydratesDto(
      carbohydrate: NutrientDto.fromDomain(carbohydrates.carbohydrate),
      sugar: NutrientDto.fromDomain(carbohydrates.sugar),
    );
  }

  Carbohydrates toDomain() {
    return Carbohydrates(
      carbohydrate: carbohydrate.toDomain() as Carbohydrate,
      sugar: sugar.toDomain() as Sugar,
    );
  }

  factory CarbohydratesDto.fromJson(Map<String, dynamic> json) =>
      _$CarbohydratesDtoFromJson(json);
}

@freezed
class NutrientFactsDto with _$NutrientFactsDto {
  const NutrientFactsDto._();
  const factory NutrientFactsDto({
    required FatsDto fats,
    required ProteinsDto proteins,
    required CarbohydratesDto carbohydrates,
  }) = _NutrientFactsDto;

  factory NutrientFactsDto.fromDomain(NutrientFacts nutrientFacts) {
    return NutrientFactsDto(
        fats: FatsDto.fromDomain(nutrientFacts.fats),
        proteins: ProteinsDto.fromDomain(nutrientFacts.proteins),
        carbohydrates: CarbohydratesDto.fromDomain(
          nutrientFacts.carbohydrates,
        ));
  }

  NutrientFacts toDomain() {
    return NutrientFacts(
        proteins.toDomain(), fats.toDomain(), carbohydrates.toDomain());
  }

  factory NutrientFactsDto.fromJson(Map<String, dynamic> json) =>
      _$NutrientFactsDtoFromJson(json);
}
