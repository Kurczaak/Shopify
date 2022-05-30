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
