// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AlgoliaProductDto _$$_AlgoliaProductDtoFromJson(Map<String, dynamic> json) =>
    _$_AlgoliaProductDto(
      productId: json['productId'] as String,
      barcode: json['barcode'] as String,
      category: json['category'] as String,
      name: json['name'] as String,
      brand: json['brand'] as String,
      photos:
          (json['photos'] as List<dynamic>).map((e) => e as String).toList(),
      weight: WeightDto.fromJson(json['weight'] as Map<String, dynamic>),
      price: PriceDto.fromJson(json['price'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AlgoliaProductDtoToJson(
        _$_AlgoliaProductDto instance) =>
    <String, dynamic>{
      'productId': instance.productId,
      'barcode': instance.barcode,
      'category': instance.category,
      'name': instance.name,
      'brand': instance.brand,
      'photos': instance.photos,
      'weight': instance.weight.toJson(),
      'price': instance.price.toJson(),
    };

_$_PricedProductDto _$$_PricedProductDtoFromJson(Map<String, dynamic> json) =>
    _$_PricedProductDto(
      productId: json['productId'] as String,
      barcode: json['barcode'] as String,
      name: json['name'] as String,
      brand: json['brand'] as String,
      photo: json['photo'] as String,
      category: json['category'] as String,
      shopId: json['shopId'] as String,
      weight: WeightDto.fromJson(json['weight'] as Map<String, dynamic>),
      price: PriceDto.fromJson(json['price'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PricedProductDtoToJson(_$_PricedProductDto instance) =>
    <String, dynamic>{
      'productId': instance.productId,
      'barcode': instance.barcode,
      'name': instance.name,
      'brand': instance.brand,
      'photo': instance.photo,
      'category': instance.category,
      'shopId': instance.shopId,
      'weight': instance.weight.toJson(),
      'price': instance.price.toJson(),
    };

_$_ShopProductDto _$$_ShopProductDtoFromJson(Map<String, dynamic> json) =>
    _$_ShopProductDto(
      price: PriceDto.fromJson(json['price'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ShopProductDtoToJson(_$_ShopProductDto instance) =>
    <String, dynamic>{
      'price': instance.price.toJson(),
    };

_$_ProductDto _$$_ProductDtoFromJson(Map<String, dynamic> json) =>
    _$_ProductDto(
      barcode: json['barcode'] as String,
      weight: WeightDto.fromJson(json['weight'] as Map<String, dynamic>),
      nutrientFacts: NutrientFactsDto.fromJson(
          json['nutrientFacts'] as Map<String, dynamic>),
      category: json['category'] as String,
      name: json['name'] as String,
      brand: json['brand'] as String,
      description: json['description'] as String,
      ingredients: json['ingredients'] as String,
      photosUrls: (json['photosUrls'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_ProductDtoToJson(_$_ProductDto instance) =>
    <String, dynamic>{
      'barcode': instance.barcode,
      'weight': instance.weight.toJson(),
      'nutrientFacts': instance.nutrientFacts.toJson(),
      'category': instance.category,
      'name': instance.name,
      'brand': instance.brand,
      'description': instance.description,
      'ingredients': instance.ingredients,
      'photosUrls': instance.photosUrls,
    };

_$_WeightDto _$$_WeightDtoFromJson(Map<String, dynamic> json) => _$_WeightDto(
      weight: (json['weight'] as num).toDouble(),
      weightUnit: json['weightUnit'] as String,
    );

Map<String, dynamic> _$$_WeightDtoToJson(_$_WeightDto instance) =>
    <String, dynamic>{
      'weight': instance.weight,
      'weightUnit': instance.weightUnit,
    };

_$_PriceDto _$$_PriceDtoFromJson(Map<String, dynamic> json) => _$_PriceDto(
      price: (json['price'] as num).toDouble(),
      currency: json['currency'] as String,
    );

Map<String, dynamic> _$$_PriceDtoToJson(_$_PriceDto instance) =>
    <String, dynamic>{
      'price': instance.price,
      'currency': instance.currency,
    };

_$_NutrientDto _$$_NutrientDtoFromJson(Map<String, dynamic> json) =>
    _$_NutrientDto(
      weight: WeightDto.fromJson(json['weight'] as Map<String, dynamic>),
      name: json['name'] as String,
    );

Map<String, dynamic> _$$_NutrientDtoToJson(_$_NutrientDto instance) =>
    <String, dynamic>{
      'weight': instance.weight.toJson(),
      'name': instance.name,
    };

_$_FatsDto _$$_FatsDtoFromJson(Map<String, dynamic> json) => _$_FatsDto(
      fat: NutrientDto.fromJson(json['fat'] as Map<String, dynamic>),
      saturatedFat:
          NutrientDto.fromJson(json['saturatedFat'] as Map<String, dynamic>),
      transFat: NutrientDto.fromJson(json['transFat'] as Map<String, dynamic>),
      monosaturatedFat: NutrientDto.fromJson(
          json['monosaturatedFat'] as Map<String, dynamic>),
      polysaturatedFat: NutrientDto.fromJson(
          json['polysaturatedFat'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_FatsDtoToJson(_$_FatsDto instance) =>
    <String, dynamic>{
      'fat': instance.fat.toJson(),
      'saturatedFat': instance.saturatedFat.toJson(),
      'transFat': instance.transFat.toJson(),
      'monosaturatedFat': instance.monosaturatedFat.toJson(),
      'polysaturatedFat': instance.polysaturatedFat.toJson(),
    };

_$_ProteinsDto _$$_ProteinsDtoFromJson(Map<String, dynamic> json) =>
    _$_ProteinsDto(
      protein: NutrientDto.fromJson(json['protein'] as Map<String, dynamic>),
      animalProtein:
          NutrientDto.fromJson(json['animalProtein'] as Map<String, dynamic>),
      plantProtein:
          NutrientDto.fromJson(json['plantProtein'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ProteinsDtoToJson(_$_ProteinsDto instance) =>
    <String, dynamic>{
      'protein': instance.protein.toJson(),
      'animalProtein': instance.animalProtein.toJson(),
      'plantProtein': instance.plantProtein.toJson(),
    };

_$_CarbohydratesDto _$$_CarbohydratesDtoFromJson(Map<String, dynamic> json) =>
    _$_CarbohydratesDto(
      carbohydrate:
          NutrientDto.fromJson(json['carbohydrate'] as Map<String, dynamic>),
      sugar: NutrientDto.fromJson(json['sugar'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CarbohydratesDtoToJson(_$_CarbohydratesDto instance) =>
    <String, dynamic>{
      'carbohydrate': instance.carbohydrate.toJson(),
      'sugar': instance.sugar.toJson(),
    };

_$_NutrientFactsDto _$$_NutrientFactsDtoFromJson(Map<String, dynamic> json) =>
    _$_NutrientFactsDto(
      fats: FatsDto.fromJson(json['fats'] as Map<String, dynamic>),
      proteins: ProteinsDto.fromJson(json['proteins'] as Map<String, dynamic>),
      carbohydrates: CarbohydratesDto.fromJson(
          json['carbohydrates'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_NutrientFactsDtoToJson(_$_NutrientFactsDto instance) =>
    <String, dynamic>{
      'fats': instance.fats.toJson(),
      'proteins': instance.proteins.toJson(),
      'carbohydrates': instance.carbohydrates.toJson(),
    };
