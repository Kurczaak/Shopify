import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';
import 'package:shopify_manager/domain/core/failures.dart';
import 'package:shopify_manager/domain/core/images/photo.dart';
import 'package:shopify_manager/domain/core/value_objects.dart';
import 'package:shopify_manager/domain/product/price.dart';
import 'package:shopify_manager/domain/product/product_categories.dart';
import 'package:shopify_manager/domain/product/value_objects.dart';
import 'package:shopify_manager/domain/product/weight.dart';

part 'product_form.freezed.dart';

@freezed
abstract class ProductForm with _$ProductForm {
  const ProductForm._();

  const factory ProductForm({
    required UniqueId id,
    required Barcode barcode,
    required Weight weight,
    //required Fats fats,
    required Price price,
    required Category category,
    required ProductName name,
    required BrandName brand,
    required ProductDescription description,
    required ProductDescription ingredients,
    required NonEmptyList5<ProductPhoto> photos,
  }) = _Product;

  factory ProductForm.empty() => ProductForm(
      id: UniqueId(),
      barcode: Barcode(''),
      weight: Weight.empty(),
      price: Price.empty(),
      category: Category(Categories.unknown),
      name: ProductName(''),
      brand: BrandName(''),
      description: ProductDescription(''),
      ingredients: ProductDescription(''),
      photos: NonEmptyList5<ProductPhoto>.empty());

  factory ProductForm.fromPrimitives({
    required String id,
    required String barcode,
    required double weight,
    required String weightUnit,
    required double price,
    required String currency,
    required String category,
    required String name,
    required String brand,
    required String description,
    required String ingredients,
    required List<File> photosFiles,
  }) =>
      ProductForm(
        id: UniqueId.fromUniqueString(id),
        barcode: Barcode(barcode),
        weight: Weight.fromPrimitives(weight, weightUnit),
        price: Price.fromPrimitives(price, currency),
        category: Category.fromString(category),
        name: ProductName(name),
        brand: BrandName(brand),
        description: ProductDescription(description),
        ingredients: ProductDescription(ingredients),
        photos: NonEmptyList5(KtList.from(
            photosFiles.map((file) => ProductPhoto(file)).toList())),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return barcode.failureOrUnit
        .andThen(
          weight.failureOrUnit.andThen(
            price.failureOrUnit.andThen(
              category.failureOrUnit.andThen(
                name.failureOrUnit.andThen(
                  brand.failureOrUnit.andThen(
                    description.failureOrUnit.andThen(
                      ingredients.failureOrUnit.andThen(
                        photos.failureOrUnit,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        )
        .fold((f) => some(f), (_) => none());
  }
}
