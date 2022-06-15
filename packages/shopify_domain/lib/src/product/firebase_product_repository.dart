import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:shopify_domain/core.dart';
import 'package:dartz/dartz.dart';
import 'package:shopify_domain/core/network/network_info.dart';
import 'package:shopify_domain/product.dart';
import 'package:shopify_domain/shop.dart';
import 'package:shopify_domain/src/core/firestore_helpers.dart';

@LazySingleton(as: ShopifyProductRepository)
class FirebaseProductRepositoryImpl implements ShopifyProductRepository {
  final FirebaseFirestore firestore;
  final FirebaseStorage storage;
  final NetworkInfo networkInfo;

  FirebaseProductRepositoryImpl(
      {required this.firestore,
      required this.storage,
      required this.networkInfo});

  Future<Either<ProductFailure, Unit>> _uploadProductToFirestore(
      Product product) async {
    try {
      final productDocument =
          firestore.productsCollection.doc(product.id.getOrCrash());

      await productDocument
          .set(ProductDto.fromDomain(product).toJson())
          .timeout(timeoutDuration,
              onTimeout: () => throw TimeoutException('connection timed out'));
    } on FirebaseException catch (e) {
      if (e.code.contains('permission-denied')) {
        return left(const ProductFailure.insufficientPermission());
      } else {
        return left(const ProductFailure.unexpected());
      }
    } on TimeoutException catch (_) {
      return left(const ProductFailure.timeout(timeoutDuration));
    } on PlatformException catch (_) {
      return left(const ProductFailure.unexpected());
    }

    return right(unit);
  }

  Future<Either<ProductFailure, KtList<ShopifyUrl>>> _uploadPhotosToStorage(
      KtList<ProductPhoto> photos, UniqueId id) async {
    for (final photo in photos.iter) {
      if (photo.failureOrUnit.isLeft()) {
        return left(ProductFailure.valueFailure(photo.getFailureOrCrash()));
      }
    }
    // Photos are valid - contiune
    final allProductsPhotosReference = storage.productPhotosReference;
    // The product's photos folder
    final productPhotosReference =
        allProductsPhotosReference.child(id.getOrCrash());
    int i = 0;
    final List<ShopifyUrl> shopifyUrls = [];
    try {
      for (final photo in photos.iter) {
        final photoReference = productPhotosReference.child(i.toString());
        final taskSnapshot = await photoReference.putFile(photo.getOrCrash());

        final photoUrl = await taskSnapshot.ref.getDownloadURL();
        final shopifyUrl = ShopifyUrl(photoUrl);
        if (shopifyUrl.failureOrUnit.isLeft()) {
          return left(
              ProductFailure.valueFailure(shopifyUrl.getFailureOrCrash()));
        } else {
          shopifyUrls.add(shopifyUrl);
        }
        i++;
      }
      return right(KtList.from(shopifyUrls));
    } on FirebaseException catch (e) {
      if (e.code.contains('permission-denied')) {
        await productPhotosReference.delete();
        return left(const ProductFailure.insufficientPermission());
      } else {
        return left(const ProductFailure.unexpected());
      }
    } on TimeoutException catch (_) {
      await productPhotosReference.delete();
      return left(const ProductFailure.timeout(timeoutDuration));
    } on PlatformException catch (_) {
      await productPhotosReference.delete();
      return left(const ProductFailure.unexpected());
    }
  }

  @override
  Stream<Either<ProductFailure, KtList<ProductSnippet>>> watchAllFromShop(
      Shop shop) async* {
    if (await networkInfo.isConnected) {
      final query = await firestore
          .collection('pricedProducts')
          .where('shopId', isEqualTo: shop.id.getOrCrash())
          .get();

      yield right(query.docs
          .map(
            (snapshot) => PricedProductDto.fromFirestore(snapshot).toSnippet(),
          )
          .toImmutableList());
    } else {
      yield left(const ProductFailure.noInternetConnection());
    }
  }

  @override
  Stream<Either<ProductFailure, KtList<ProductSnippet>>>
      watchAllFromShopByCategory(Shop shop, Category category) async* {
    if (await networkInfo.isConnected) {
      final query = await firestore
          .collection('pricedProducts')
          .where('shopId', isEqualTo: shop.id.getOrCrash())
          .where('category', isEqualTo: category.getOrCrash().stringify)
          .get();

      yield right(query.docs
          .map(
            (snapshot) => PricedProductDto.fromFirestore(snapshot).toSnippet(),
          )
          .toImmutableList());
    } else {
      yield left(const ProductFailure.noInternetConnection());
    }
  }

  @override
  Future<Either<ProductFailure, Unit>> addPhotosAndCreate(
      Product product, NonEmptyList5<ProductPhoto> photos) async {
    if (await networkInfo.isConnected) {
      // Check photos
      final failureOrPhotosUrls =
          await _uploadPhotosToStorage(photos.getOrCrash(), product.id);

      return await failureOrPhotosUrls.fold(
        (failure) async => left(failure),
        (urls) async {
          final productWithUploadedPhotos =
              product.copyWith(photos: NonEmptyList5(urls));
          final failureOrUnit =
              await _uploadProductToFirestore(productWithUploadedPhotos);
          return await failureOrUnit.fold((failure) async {
            await storage.productPhotosReference
                .child(product.id.getOrCrash())
                .delete();
            return left(failure);
          }, (_) => right(unit));
        },
      );
    } else {
      return left(const ProductFailure.noInternetConnection());
    }
  }

  @override
  Future<Either<ProductFailure, Unit>> addToShop(
      Product product, Price price, Shop shop) async {
    final argumentsFailureOrUnit = shop.failureOrUnit
        .andThen(price.failureOrUnit.andThen(product.failureOrUnit));

    if (argumentsFailureOrUnit.isLeft()) {
      return argumentsFailureOrUnit.fold(
          (failure) => left(ProductFailure.valueFailure(failure)),
          (_) => throw UnimplementedError(
              'An error occured when adding the product to the shop'));
    }

    if (await networkInfo.isConnected) {
      try {
        // Check if the shop exists in the DB
        final shopDocument =
            await firestore.shopsCollection.doc(shop.id.getOrCrash()).get();
        if (!shopDocument.exists) {
          return left(const ProductFailure.shopNotFound());
        }

        // Check if the product exists in the DB
        final productDocument = await firestore.productsCollection
            .doc(product.id.getOrCrash())
            .get();
        if (!productDocument.exists) {
          return left(const ProductFailure.productNotFound());
        }

        // Both the shop and the product exist in the DB
        final shopProductsCollection = firestore.shopsCollection
            .doc(shop.id.getOrCrash())
            .collection('products');
        final shopProductDto =
            ShopProductDto(price: PriceDto.fromDomain(price));

        await shopProductsCollection
            .doc(product.id.getOrCrash())
            .set(shopProductDto.toJson())
            .timeout(timeoutDuration, onTimeout: () {
          throw TimeoutException('Connection timeout ', timeoutDuration);
        });
      } on FirebaseException catch (e) {
        if (e.code.contains('permission-denied')) {
          return left(const ProductFailure.insufficientPermission());
        } else {
          print(e);
          return left(const ProductFailure.unexpected());
        }
      } on TimeoutException catch (_) {
        return left(const ProductFailure.timeout(timeoutDuration));
      }

      return right(unit);
    } else {
      return left(const ProductFailure.noInternetConnection());
    }
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
  Future<Either<ProductFailure, Product>> getByBarcode(Barcode barcode) async {
    if (await networkInfo.isConnected) {
      final query = firestore.productsCollection
          .where('barcode', isEqualTo: barcode.getOrCrash());
      final querySnapshot = await query.get();

      if (querySnapshot.size < 1) {
        return left(const ProductFailure.productNotFound());
      } else {
        return right(
            ProductDto.fromFirestore(querySnapshot.docs.first).toDomain());
      }
    } else {
      return left(const ProductFailure.noInternetConnection());
    }
  }

  @override
  Future<Either<ProductFailure, Unit>> create(Product product) async {
    return await _uploadProductToFirestore(product);
  }
}
