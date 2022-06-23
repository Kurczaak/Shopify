import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
import 'package:shopify_domain/core/images/photo.dart';
import 'package:shopify_domain/core/value_objects.dart';
import 'package:shopify_domain/product.dart';
import 'package:shopify_domain/src/injection.dart';
import 'package:shopify_domain/shop/shop.dart';

abstract class ShopifyProductRepository {
  // Create
  Future<Either<ProductFailure, Unit>> create(Product product);
  Future<Either<ProductFailure, Unit>> addPhotosAndCreate(
      Product product, NonEmptyList5<ProductPhoto> photos);
  // Read
  Stream<Either<ProductFailure, KtList<PricedProduct>>> watchAllFromShop(
      Shop shop);
  Stream<Either<ProductFailure, KtList<PricedProduct>>>
      watchAllFromShopByCategory(Shop shop, Category category);
  Future<Either<ProductFailure, Product>> getByBarcode(Barcode barcode);
  Future<Either<ProductFailure, Product>> getById(UniqueId id);
  Future<Either<ProductFailure, PricedProduct>> getFromShopByBarcode(
      Barcode barcode, Shop shop);
  // Update
  Future<Either<ProductFailure, Unit>> update(Product product);
  Future<Either<ProductFailure, Unit>> addToShop(
      Product product, Price price, Shop shop);
  // Delete
  Future<Either<ProductFailure, Unit>> delete(Product product);

  static ShopifyProductRepository get instance =>
      getIt<ShopifyProductRepository>();
}
