import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopify_domain/core/value_objects.dart';
import 'package:shopify_domain/product.dart';
part 'favourite_product.freezed.dart';

@freezed
class FavouriteProduct with _$FavouriteProduct {
  const factory FavouriteProduct({
    required UniqueId id,
    required Barcode barcode,
    required UniqueId productId,
    required ProductName productName,
    required Category category,
    required BrandName brand,
    required ShopifyUrl photoUrl,
    required Weight weight,
  }) = _FavouriteProduct;
}
