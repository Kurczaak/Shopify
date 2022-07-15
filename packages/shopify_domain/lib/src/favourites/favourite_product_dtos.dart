import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopify_domain/core.dart';
import 'package:shopify_domain/favourites/favourite_product.dart';
import 'package:shopify_domain/product.dart';

part 'favourite_product_dtos.freezed.dart';
part 'favourite_product_dtos.g.dart';

@freezed
class FavouriteProductDto with _$FavouriteProductDto {
  const FavouriteProductDto._();
  const factory FavouriteProductDto(
      {required String id,
      required String barcode,
      required String productId,
      required String productName,
      required String category,
      required String brand,
      required String photoUrl,
      required String userId}) = _FavouriteProductDto;

  FavouriteProduct toDomain() => FavouriteProduct(
      id: UniqueId.fromUniqueString(id),
      barcode: Barcode(barcode),
      productId: UniqueId.fromUniqueString(productId),
      productName: ProductName(productName),
      category: Category.fromString(category),
      brand: BrandName(brand),
      photoUrl: ShopifyUrl(photoUrl));

  factory FavouriteProductDto.fromJson(Map<String, dynamic> json) =>
      _$FavouriteProductDtoFromJson(json);

  factory FavouriteProductDto.fromFirestore(DocumentSnapshot doc) =>
      FavouriteProductDto.fromJson(doc.data() as Map<String, dynamic>)
          .copyWith(id: doc.id);
}
