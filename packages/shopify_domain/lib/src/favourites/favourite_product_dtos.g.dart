// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favourite_product_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FavouriteProductDto _$$_FavouriteProductDtoFromJson(
        Map<String, dynamic> json) =>
    _$_FavouriteProductDto(
      id: json['id'] as String,
      barcode: json['barcode'] as String,
      productId: json['productId'] as String,
      productName: json['productName'] as String,
      category: json['category'] as String,
      brand: json['brand'] as String,
      photoUrl: json['photoUrl'] as String,
      userId: json['userId'] as String,
    );

Map<String, dynamic> _$$_FavouriteProductDtoToJson(
        _$_FavouriteProductDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'barcode': instance.barcode,
      'productId': instance.productId,
      'productName': instance.productName,
      'category': instance.category,
      'brand': instance.brand,
      'photoUrl': instance.photoUrl,
      'userId': instance.userId,
    };
