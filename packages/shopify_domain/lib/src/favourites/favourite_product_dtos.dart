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
  const factory FavouriteProductDto({
    @Default('') @JsonKey(ignore: true) String id,
    required String barcode,
    required String productId,
    @JsonKey(name: 'name') required String productName,
    required String category,
    required String brand,
    required WeightDto weight,
    @JsonKey(name: 'photo') required String photoUrl,
    required String userId,
  }) = _FavouriteProductDto;

  factory FavouriteProductDto.fromDomain(
          FavouriteProduct product, UniqueId userId) =>
      FavouriteProductDto(
          weight: WeightDto.fromDomain(product.weight),
          barcode: product.barcode.getOrCrash(),
          brand: product.brand.getOrCrash(),
          category: product.category.getOrCrash().name,
          id: product.id.getOrCrash(),
          photoUrl: product.photoUrl.getOrCrash(),
          productId: product.productId.getOrCrash(),
          productName: product.productName.getOrCrash(),
          userId: userId.getOrCrash());

  FavouriteProduct toDomain() => FavouriteProduct(
      weight: weight.toDomain(),
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
