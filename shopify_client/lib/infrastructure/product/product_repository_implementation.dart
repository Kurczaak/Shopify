import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:geoflutterfire/geoflutterfire.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:dartz/dartz.dart';
import 'package:shopify_client/domain/product/i_product_repository.dart';
import 'package:shopify_domain/core.dart';
import 'package:shopify_domain/core/network/network_info.dart';
import 'package:shopify_domain/product.dart';
import 'package:shopify_domain/shop/shop.dart';
import 'package:rxdart/rxdart.dart';

@LazySingleton(as: IProductRepository)
class ProductRepositoryImpl implements IProductRepository {
  final NetworkInfo networkInfo;
  final FirebaseFirestore firestore;
  final Geoflutterfire geoflutterfire;

  ProductRepositoryImpl({
    required this.networkInfo,
    required this.firestore,
    required this.geoflutterfire,
  });

  Either<ProductFailure, Stream<List<DocumentSnapshot>>>
      getStreamOfProductsWithinRange(Location location, double radius) {
    try {
      final productsCollection = firestore.collection('addedProducts');

      String field = 'position';
      final center = geoflutterfire.point(
          latitude: location.latitude, longitude: location.longitude);
      Stream<List<DocumentSnapshot>> stream =
          geoflutterfire.collection(collectionRef: productsCollection).within(
                center: center,
                radius: radius,
                field: field,
                strictMode: true,
              );
      return right(stream);
    } on FirebaseException catch (e) {
      if (e.code.contains('permission-denied')) {
        return left(const ProductFailure.insufficientPermission());
      }

      return left(const ProductFailure.unexpected());
    }
  }

  @override
  Stream<Either<ProductFailure, KtList<ProductSnippet>>> watchAllFromShop(
      Shop shop) async* {
    if (await networkInfo.isConnected) {
      final query = await firestore
          .collection('addedProducts')
          .where('shopId', isEqualTo: shop.id.getOrCrash())
          .where('productCategory', isEqualTo: 'fish')
          .get();

      yield right(query.docs
          .map(
            (snapshot) => AddedProductDto.fromFirestore(snapshot).toSnippet(),
          )
          .toImmutableList());
    } else {
      yield left(const ProductFailure.noInternetConnection());
    }
  }

  @override
  Stream<Either<ProductFailure, KtList<AddedProduct>>>
      watchAllFromShopByCategory(Shop shop, Category category) {
    // TODO: implement watchAllFromShopByCategory
    throw UnimplementedError();
  }

  @override
  Stream<Either<ProductFailure, KtList<AddedProduct>>> watchAllNearby(
      Location location, double radius) async* {
    if (await networkInfo.isConnected) {
      yield* getStreamOfProductsWithinRange(location, radius).fold(
          (failure) async* {
        yield left(failure);
      }, (stream) async* {
        yield* stream.map((documents) {
          return right<ProductFailure, KtList<AddedProduct>>(
            documents
                .map(
                  (snapshot) =>
                      AddedProductDto.fromFirestore(snapshot).toDomain(),
                )
                .toImmutableList()
                .sortedBy<double>((p0) => p0.price.price.getOrCrash()),
          );
        }).onErrorReturnWith(
          (e, _) {
            if (e is FirebaseException &&
                e.code.contains('permission-denied')) {
              return left(const ProductFailure.insufficientPermission());
            } else {
              //TODO log this error
              // log.error(e.toString());

              return left(const ProductFailure.unexpected());
            }
          },
        );
      });
    } else {
      yield left(const ProductFailure.noInternetConnection());
    }
  }

  @override
  Stream<Either<ProductFailure, KtList<AddedProduct>>> watchAllNearbyByCategory(
      double radius, Category category) {
    // TODO: implement watchAllNearbyByCategory
    throw UnimplementedError();
  }
}
