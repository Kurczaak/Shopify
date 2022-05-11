import 'package:dartz/dartz.dart';
import 'package:shopify_manager/domain/core/value_objects.dart';
import 'package:shopify_manager/domain/product/price.dart';
import 'package:shopify_manager/domain/product/product.dart';
import 'package:shopify_manager/domain/product/product_form.dart';
import 'package:shopify_manager/domain/product/weight.dart';

import '../utils/image_reader.dart';

final String id = UniqueId().getOrCrash();
const String barcode = 'ABC-123-DEF';
const double weight = 10;
const String weightUnit = 'gram';
const double price = 21.37;
const String currency = 'zl';
const String category = 'Bread';
const String name = 'Test Product';
const String brand = 'Test Brand';
const String description = 'This is just a test product';
const String ingredients = 'tests, bugs, overflows';
final List<String> photosUrls = [];

// Weight
final tWeight = Weight.fromPrimitives(weight, weightUnit);

// Price
final tPrice = Price.fromPrimitives(price, currency);

// Product
final fixtureProduct = Product.fromPrimitives(
    id: id,
    barcode: barcode,
    weight: weight,
    weightUnit: weightUnit,
    price: price,
    currency: currency,
    category: category,
    name: name,
    brand: brand,
    description: description,
    ingredients: ingredients,
    photosUrls: photosUrls);

Future<ProductForm> loadProductFormWithPhotos() async {
  final file = await getImageFileFromAssets('test_logo.jpg');

  final photosList = [file, file, file];
  return ProductForm.fromPrimitives(
      id: id,
      barcode: barcode,
      weight: weight,
      weightUnit: weightUnit,
      price: price,
      currency: currency,
      category: category,
      name: name,
      brand: brand,
      description: description,
      ingredients: ingredients,
      photos: right(photosList));
}
