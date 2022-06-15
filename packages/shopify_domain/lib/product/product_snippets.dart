import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopify_domain/core.dart';
import 'package:shopify_domain/product.dart';

part 'product_snippets.freezed.dart';

@freezed
class ProductSnippet with _$ProductSnippet {
  const factory ProductSnippet({
    required UniqueId id,
    required Barcode barcode,
    required ProductName name,
    required BrandName brand,
    required ShopifyUrl photo,
    required Category category,
    required Weight weight,
    required Price price,
  }) = _ProductSnippet;
}

@freezed
class PricedProduct with _$PricedProduct {
  const PricedProduct._();

  const factory PricedProduct({
    required UniqueId id,
    required Barcode barcode,
    required ProductName name,
    required BrandName brand,
    required ShopifyUrl photo,
    required Category category,
    required UniqueId shopId,
    required Weight weight,
    required Price price,
  }) = _PricedProduct;

  Either<ValueFailure, Unit> get failureOrUnit {
    return this.id.failureOrUnit.andThen(
          barcode.failureOrUnit.andThen(
            category.failureOrUnit.andThen(
              name.failureOrUnit.andThen(
                brand.failureOrUnit.andThen(
                  photo.failureOrUnit.andThen(
                    weight.failureOrUnit.andThen(
                      price.failureOrUnit.andThen(
                        shopId.failureOrUnit,
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
