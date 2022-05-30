// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductDto _$$_ProductDtoFromJson(Map<String, dynamic> json) =>
    _$_ProductDto(
      barcode: json['barcode'] as String,
      weight: WeightDto.fromJson(json['weight'] as Map<String, dynamic>),
      price: PriceDto.fromJson(json['price'] as Map<String, dynamic>),
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
      'weight': instance.weight,
      'price': instance.price,
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
      'weight': instance.weight,
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
      'fat': instance.fat,
      'saturatedFat': instance.saturatedFat,
      'transFat': instance.transFat,
      'monosaturatedFat': instance.monosaturatedFat,
      'polysaturatedFat': instance.polysaturatedFat,
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
      'protein': instance.protein,
      'animalProtein': instance.animalProtein,
      'plantProtein': instance.plantProtein,
    };

_$_CarbohydratesDto _$$_CarbohydratesDtoFromJson(Map<String, dynamic> json) =>
    _$_CarbohydratesDto(
      carbohydrate:
          NutrientDto.fromJson(json['carbohydrate'] as Map<String, dynamic>),
      sugar: NutrientDto.fromJson(json['sugar'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CarbohydratesDtoToJson(_$_CarbohydratesDto instance) =>
    <String, dynamic>{
      'carbohydrate': instance.carbohydrate,
      'sugar': instance.sugar,
    };
