import 'package:injectable/injectable.dart';
import 'package:shopify_domain/shop.dart';

@module
abstract class ShopRepositoryInjectableModule {
  @LazySingleton()
  ShopifyShopRepository get shopifyShopRepository =>
      ShopifyShopRepository.instance;
}
