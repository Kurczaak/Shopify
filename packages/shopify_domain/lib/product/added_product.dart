import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopify_domain/core.dart';
import 'package:shopify_domain/product.dart';
import 'package:shopify_domain/shop/value_objects.dart';

part 'added_product.freezed.dart';

@freezed
class AddedProduct with _$AddedProduct {
  const AddedProduct._();

  const factory AddedProduct({
    required UniqueId productId,
    required Barcode barcode,
    required Category category,
    required ProductName name,
    required NonEmptyList5<ShopifyUrl> productPhotos,
    required Weight weight,
    required Price price,
    required UniqueId shopId,
    required Location shopLocation,
    required Address shopAddress,
    required ShopifyUrl shopLogo,
    required ShopName shopName,
  }) = _AddedProduct;

  Either<ValueFailure, Unit> get failureOrUnit {
    return productId.failureOrUnit.andThen(
      barcode.failureOrUnit.andThen(
        category.failureOrUnit.andThen(
          name.failureOrUnit.andThen(
            productPhotos.failureOrUnit.andThen(
              weight.failureOrUnit.andThen(
                price.failureOrUnit.andThen(
                  shopId.failureOrUnit.andThen(
                    shopAddress.failureOrUnit.andThen(
                      shopLogo.failureOrUnit.andThen(shopName.failureOrUnit),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
