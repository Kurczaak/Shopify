import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:shopify_manager/domain/core/value_objects.dart';
import 'package:shopify_manager/domain/core/images/photo.dart';
import 'package:kt_dart/src/collection/kt_list.dart';
import 'package:dartz/dartz.dart';
import 'package:shopify_manager/domain/product/i_product_repository.dart';
import 'package:shopify_manager/domain/product/product_failure.dart';
import 'package:shopify_manager/domain/product/product.dart';
import 'package:shopify_manager/domain/shop/shop.dart';
import 'package:shopify_manager/infrastructure/core/config.dart';
import 'package:shopify_manager/infrastructure/core/firestore_helpers.dart';
import 'package:shopify_manager/infrastructure/core/network/network_info.dart';
import 'package:shopify_manager/infrastructure/product/product_dtos.dart';

@LazySingleton(as: IProductRepository)
class FirebaseProductRepositoryImpl implements IProductRepository {
  final FirebaseFirestore _firestore;
  final FirebaseStorage _storage;
  final NetworkInfo _networkInfo;

  FirebaseProductRepositoryImpl(
      this._firestore, this._storage, this._networkInfo);

  Future<void> deletePhotos(List<Reference> photosReferencesList) async {
    try {
      for (final photoRef in photosReferencesList) {
        await photoRef.delete();
      }
    } catch (e) {
      print('Error while deleting a photo $e');
    }
  }

  @override
  Future<Either<ProductFailure, Unit>> create(
      Product product, NonEmptyList5<ProductPhoto> photos) async {
    final isConnected = await _networkInfo.isConnected;
    final List<Reference> uploadedFilesReferences = [];
    final List<String> photosUrls = [];

    if (isConnected) {
      try {
        final allProductsPhotosRef = _storage.productPhotosReference;
        final thisProductPhotosRef =
            allProductsPhotosRef.child(product.id.getOrCrash());
        int i = 0;
        for (final photo in photos.getOrCrash().iter) {
          final fileReference = thisProductPhotosRef.child(i.toString());

          final snapshot = await fileReference
              .putFile(photo.getOrCrash())
              .timeout(timeoutDuration, onTimeout: () {
            throw TimeoutException('Connection timeout ', timeoutDuration);
          });
          final photoUrl = await snapshot.ref.getDownloadURL();
          photosUrls.add(photoUrl);
          uploadedFilesReferences.add(fileReference);
          i++;
        }
      } on FirebaseException catch (e) {
        //TODO log those errors
        await deletePhotos(uploadedFilesReferences);
        if (e.code.contains('unauthenticated') ||
            e.code.contains('unauthorized')) {
          return left(const ProductFailure.insufficientPermission());
        } else {
          return left(const ProductFailure.unexpected());
        }
      } on TimeoutException catch (_) {
        await deletePhotos(uploadedFilesReferences);
        return left(const ProductFailure.timeout(timeoutDuration));
      } catch (_) {
        await deletePhotos(uploadedFilesReferences);
        rethrow;
      }
      // Firestore
      try {
        final productWithPhotos = product.copyWith(
            photos: NonEmptyList5(KtList.from(photosUrls
                .map((stringUrl) => ShopifyUrl(stringUrl))
                .toList())));

        productWithPhotos.failureOption.fold(() {
          final productsCollection = _firestore.productsCollection;
          productsCollection
              .doc(product.id.getOrCrash())
              .set(ProductDto.fromDomain(productWithPhotos).toJson());
        }, (failure) => left(failure));
      } on FirebaseException catch (e) {
        //TODO log this error
        if (e.code.contains('permission-denied')) {
          return left(const ProductFailure.insufficientPermission());
        } else {
          return left(const ProductFailure.unexpected());
        }
      } on TimeoutException catch (_) {
        return left(const ProductFailure.timeout(timeoutDuration));
      }
    }

    return left(const ProductFailure.noInternetConnection());
  }

  @override
  Future<Either<ProductFailure, Unit>> delete(Product product) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<Either<ProductFailure, Unit>> update(Product product) {
    // TODO: implement update
    throw UnimplementedError();
  }

  @override
  Stream<Either<ProductFailure, KtList<Product>>> watchAll() {
    // TODO: implement watchAll
    throw UnimplementedError();
  }

  @override
  Stream<Either<ProductFailure, KtList<Product>>> watchNearby() {
    // TODO: implement watchNearby
    throw UnimplementedError();
  }

  @override
  Future<Either<ProductFailure, Unit>> createForShop(
      Product product, NonEmptyList5<ProductPhoto> photos, Shop shop) {
    // TODO: implement createForShop
    throw UnimplementedError();
  }
}
