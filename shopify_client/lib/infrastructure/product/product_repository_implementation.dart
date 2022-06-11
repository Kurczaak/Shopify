import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/src/collection/kt_list.dart';
import 'package:dartz/dartz.dart';
import 'package:shopify_client/domain/product/i_product_repository.dart';
import 'package:shopify_domain/core/network/network_info.dart';
import 'package:shopify_domain/shop/shop.dart';
import 'package:shopify_domain/product/value_objects.dart';
import 'package:shopify_domain/product/product_failure.dart';
import 'package:shopify_domain/product/product.dart';

@injectable
class ProductRepositoryImpl implements IProductRepository {
  final NetworkInfo networkInfo;
  final FirebaseFirestore firestore;

  ProductRepositoryImpl({required this.networkInfo, required this.firestore});
  @override
  Stream<Either<ProductFailure, KtList<Product>>> watchAllFromShop(Shop shop) {
    // TODO: implement watchAllFromShop
    throw UnimplementedError();
  }

  @override
  Stream<Either<ProductFailure, KtList<Product>>> watchAllFromShopByCategory(
      Shop shop, Category category) {
    // TODO: implement watchAllFromShopByCategory
    throw UnimplementedError();
  }

  @override
  Stream<Either<ProductFailure, KtList<Product>>> watchAllNearby(
      double radius) {
    // TODO: implement watchAllNearby
    throw UnimplementedError();
  }

  @override
  Stream<Either<ProductFailure, KtList<Product>>> watchAllNearbyByCategory(
      double radius, Category category) {
    // TODO: implement watchAllNearbyByCategory
    throw UnimplementedError();
  }
}
