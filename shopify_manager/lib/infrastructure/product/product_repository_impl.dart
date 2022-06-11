import 'package:injectable/injectable.dart';
import 'package:shopify_domain/product.dart';
import 'package:shopify_domain/shop/shop.dart';
import 'package:dartz/dartz.dart';
import 'package:shopify_manager/domain/product/i_product_repository.dart';

@LazySingleton(as: IProductRepository)
class ProductRepostioryImpl implements IProductRepository {
  final ShopifyProductRepository _productRepository;

  ProductRepostioryImpl(this._productRepository);
  @override
  Future<Either<ProductFailure, Unit>> create(ProductForm productForm) async {
    return await productForm.photos.fold(
        (urls) async => _productRepository.create(productForm.product),
        (files) async =>
            _productRepository.addPhotosAndCreate(productForm.product, files));
  }

  @override
  Future<Either<ProductFailure, Unit>> addToShop(
      Product product, Shop shop, Price price) async {
    return await _productRepository.addToShop(product, price, shop);
  }

  @override
  Future<Either<ProductFailure, Unit>> delete(Product product) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<Either<ProductFailure, Product>> getByBarcode(Barcode barcode) async {
    return await _productRepository.getByBarcode(barcode);
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
