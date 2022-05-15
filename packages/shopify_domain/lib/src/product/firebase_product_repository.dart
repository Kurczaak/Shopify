import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:shopify_domain/core.dart';
import 'package:kt_dart/kt.dart';
import 'package:dartz/dartz.dart';
import 'package:shopify_domain/product.dart';
import 'package:shopify_domain/shop.dart';
import 'package:shopify_domain/src/core/firestore_helpers.dart';
import 'package:shopify_domain/src/core/network/network_info.dart';
import 'package:shopify_domain/src/product/product_dtos.dart';

@LazySingleton(as: ShopifyProductRepository)
class FirebaseProductRepositoryImpl implements ShopifyProductRepository {
  final FirebaseFirestore _firestore;
  final FirebaseStorage _storage;
  final NetworkInfo _networkInfo;

  FirebaseProductRepositoryImpl(
      this._firestore, this._storage, this._networkInfo);

  @override
  Future<Either<ProductFailure, Unit>> create(ProductForm productForm) async {
    final isConnected = await _networkInfo.isConnected;

    return await productForm.photos.fold(
        (urls) async => left(const ProductFailure.unexpected()), (files) async {
      if (isConnected) {
        final uploadedPhotosReferencesOrFailure =
            await _addPhotosToTheStorage(files, productForm.id);
        return await uploadedPhotosReferencesOrFailure
            .fold((f) async => left(f), (uploadedPhotosReferences) async {
          return await _addProductFormToTheFirestore(
              productForm, uploadedPhotosReferences);
        });
        // Firestore

      }
      return left(const ProductFailure.noInternetConnection());
    });
  }

  @override
  Future<Either<ProductFailure, Unit>> createForShop(
      ProductForm product, Shop shop) {
    // TODO: implement createForShop
    throw UnimplementedError();
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
  Future<Either<ProductFailure, Product>> getByBarcode(Barcode barcode) {
    // TODO: implement getByBarcode
    throw UnimplementedError();
  }

  @override
  Future<Either<ProductFailure, Product>> getFromShopByBarcode(
      Shop shop, Barcode barcode) {
    // TODO: implement getFromShopByBarcode
    throw UnimplementedError();
  }

  // auxilary methods
  Future<void> _deletePhotos(List<Reference> photosReferencesList) async {
    try {
      for (final photoRef in photosReferencesList) {
        await photoRef.delete();
      }
    } catch (e) {
      //TODO: log this error
    }
  }

  Future<Either<ProductFailure, List<Reference>>> _addPhotosToTheStorage(
      NonEmptyList5<ProductPhoto> photos, UniqueId id) async {
    final List<Reference> uploadedFilesReferences = [];
    try {
      final allProductsPhotosRef = _storage.productPhotosReference;
      final thisProductPhotosRef = allProductsPhotosRef.child(id.getOrCrash());
      int i = 0;
      for (final photo in photos.getOrCrash().iter) {
        final fileReference = thisProductPhotosRef.child(i.toString());

        final snapshot = await fileReference
            .putFile(photo.getOrCrash())
            .timeout(timeoutDuration, onTimeout: () {
          throw TimeoutException('Connection timeout ', timeoutDuration);
        });

        uploadedFilesReferences.add(snapshot.ref);
        i++;
      }
    } on FirebaseException catch (e) {
      //TODO log those errors
      await _deletePhotos(uploadedFilesReferences);
      if (e.code.contains('unauthenticated') ||
          e.code.contains('unauthorized')) {
        return left(const ProductFailure.insufficientPermission());
      } else {
        return left(const ProductFailure.unexpected());
      }
    } on TimeoutException catch (_) {
      await _deletePhotos(uploadedFilesReferences);
      return left(const ProductFailure.timeout(timeoutDuration));
    } catch (_) {
      await _deletePhotos(uploadedFilesReferences);
      rethrow;
    }
    return right(uploadedFilesReferences);
  }

  Future<Either<ProductFailure, Unit>> _addProductToTheFirestore(
      Product product) async {
    try {
      product.failureOption.fold(() {
        final productsCollection = _firestore.productsCollection;
        productsCollection
            .doc(product.id.getOrCrash())
            .set(ProductDto.fromDomain(product).toJson());
      }, (failure) => left(failure));
      return right(unit);
    } on FirebaseException catch (e) {
      if (e.code.contains('permission-denied')) {
        return left(const ProductFailure.insufficientPermission());
      } else {
        return left(const ProductFailure.unexpected());
      }
    } on TimeoutException catch (_) {
      return left(const ProductFailure.timeout(timeoutDuration));
    } catch (_) {
      for (final url in product.photos.getOrCrash().asList()) {
        await _storage.refFromURL(url.getOrCrash()).delete();
      }

      rethrow;
    }
  }

  Future<Either<ProductFailure, Unit>> _addProductFormToTheFirestore(
    ProductForm productForm,
    List<Reference> uploadedPhotosReferences,
  ) async {
    final photosUrls = [];

    for (final uploadedPhotoRef in uploadedPhotosReferences) {
      final url = await uploadedPhotoRef.getDownloadURL();
      photosUrls.add(url);
    }

    final productWithPhotos = Product(
        id: productForm.id,
        barcode: productForm.barcode,
        weight: productForm.weight,
        price: productForm.price,
        category: productForm.category,
        name: productForm.name,
        brand: productForm.brand,
        description: productForm.description,
        ingredients: productForm.ingredients,
        photos: NonEmptyList5(KtList.from(
            photosUrls.map((stringUrl) => ShopifyUrl(stringUrl)).toList())));

    final failureOrUnit = await _addProductToTheFirestore(productWithPhotos);
    final Either<ProductFailure, Unit> result =
        await failureOrUnit.fold((failure) async {
      await _deletePhotos(uploadedPhotosReferences);
      return left(failure);
    }, (r) async => right(r));
    return result;
  }
}
