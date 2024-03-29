import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';
import 'package:shopify_domain/core/failures.dart';
import 'package:shopify_domain/core/images/photo.dart';
import 'package:shopify_domain/core/value_objects.dart';
import 'package:shopify_domain/product/nutrient.dart';
import 'package:shopify_domain/product/product.dart';
import 'package:shopify_domain/product/product_categories.dart';
import 'package:shopify_domain/product/value_objects.dart';
import 'package:shopify_domain/product/weight.dart';

part 'product_form.freezed.dart';

@freezed
class ProductForm with _$ProductForm {
  const ProductForm._();

  const factory ProductForm({
    required UniqueId id,
    required Barcode barcode,
    required Weight weight,
    required NutrientFacts nutrientFacts,
    required Category category,
    required ProductName name,
    required BrandName brand,
    required ProductDescription description,
    required ProductDescription ingredients,
    required Either<NonEmptyList5<ShopifyUrl>, NonEmptyList5<ProductPhoto>>
        photos,
  }) = _Product;

  factory ProductForm.empty() => ProductForm(
      id: UniqueId(),
      barcode: Barcode(''),
      weight: Weight.zero(),
      nutrientFacts: NutrientFacts.empty(),
      category: Category(Categories.bio),
      name: ProductName(''),
      brand: BrandName(''),
      description: ProductDescription(''),
      ingredients: ProductDescription(''),
      photos: right(NonEmptyList5<ProductPhoto>.empty()));

  factory ProductForm.fromProduct(Product product) {
    return ProductForm(
      id: product.id,
      barcode: product.barcode,
      weight: product.weight,
      nutrientFacts: product.nutrientFacts,
      category: product.category,
      name: product.name,
      brand: product.brand,
      description: product.description,
      ingredients: product.ingredients,
      photos: left(product.photos),
    );
  }

  factory ProductForm.fromPrimitives({
    required String id,
    required String barcode,
    required double weight,
    required String weightUnit,
    required String currency,
    required String category,
    required String name,
    required String brand,
    required String description,
    required String ingredients,
    required Either<List<String>, List<File>> photos,
  }) =>
      ProductForm(
        id: UniqueId.fromUniqueString(id),
        barcode: Barcode(barcode),
        weight: Weight.fromPrimitives(weight, weightUnit),
        nutrientFacts: NutrientFacts.empty(), // TODO!!
        category: Category.fromString(category),
        name: ProductName(name),
        brand: BrandName(brand),
        description: ProductDescription(description),
        ingredients: ProductDescription(ingredients),
        photos: photos.fold((strings) {
          final shopifyUrlList = strings.map((url) => ShopifyUrl(url)).toList();
          return left(NonEmptyList5(KtList.from(shopifyUrlList)));
        }, (files) {
          final photosList = files.map((file) => ProductPhoto(file)).toList();
          return right(NonEmptyList5(KtList.from(photosList)));
        }),
      );

  Product get product => Product(
        barcode: barcode,
        brand: brand,
        category: category,
        description: description,
        id: this.id,
        ingredients: ingredients,
        name: name,
        nutrientFacts: nutrientFacts,
        photos: photos.fold(id, (_) => NonEmptyList5<ShopifyUrl>.empty()),
        weight: weight,
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return barcode.failureOrUnit
        .andThen(
          weight.failureOrUnit.andThen(
            nutrientFacts.failureOrUnit.andThen(
              category.failureOrUnit.andThen(
                name.failureOrUnit.andThen(
                  brand.failureOrUnit.andThen(
                    description.failureOrUnit.andThen(
                      ingredients.failureOrUnit.andThen(
                        photos.fold(
                            (l) => l.failureOrUnit, (r) => r.failureOrUnit),
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
