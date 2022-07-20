// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favourite_product_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FavouriteProductDto _$$_FavouriteProductDtoFromJson(
        Map<String, dynamic> json) =>
    _$_FavouriteProductDto(
      barcode: json['barcode'] as String,
      productId: json['productId'] as String,
      productName: json['name'] as String,
      category: json['category'] as String,
      brand: json['brand'] as String,
      weight: WeightDto.fromJson(json['weight'] as Map<String, dynamic>),
      photoUrl: json['photo'] as String,
      userId: json['userId'] as String,
    );

Map<String, dynamic> _$$_FavouriteProductDtoToJson(
        _$_FavouriteProductDto instance) =>
    <String, dynamic>{
      'barcode': instance.barcode,
      'productId': instance.productId,
      'name': instance.productName,
      'category': instance.category,
      'brand': instance.brand,
      'weight': instance.weight.toJson(),
      'photo': instance.photoUrl,
      'userId': instance.userId,
    };
