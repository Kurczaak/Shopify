import 'package:injectable/injectable.dart';
import 'package:shopify_domain/product/shopify_product_repository.dart';
import 'package:shopify_domain/shop/shop.dart';
import 'package:shopify_domain/product/value_objects.dart';
import 'package:shopify_domain/product/product_form.dart';
import 'package:shopify_domain/product/product_failure.dart';
import 'package:shopify_domain/product/product.dart';
import 'package:dartz/dartz.dart';
import 'package:shopify_manager/domain/product/i_product_repository.dart';

@LazySingleton(as: IProductRepository)
class ProductRepostioryImpl implements IProductRepository {
  final ShopifyProductRepository _productRepository;

  ProductRepostioryImpl(this._productRepository);
  @override
  Future<Either<ProductFailure, Unit>> create(ProductForm productForm) {
    final productPhotos = productForm.photos.fold((l) => null, id);
    return _productRepository.create(productForm.product, productPhotos);
  }

  @override
  Future<Either<ProductFailure, Unit>> createForShop(
      ProductForm productForm, Shop shop) {
    // TODO: implement createForShop
    throw UnimplementedError();
  }

  @override
  Future<Either<ProductFailure, Unit>> delete(Product product) {
    // TODO: implement delete
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

  @override
  Future<Either<ProductFailure, Unit>> update(Product product) {
    // TODO: implement update
    throw UnimplementedError();
  }
}
