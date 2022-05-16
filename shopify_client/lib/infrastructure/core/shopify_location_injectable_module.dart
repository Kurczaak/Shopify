import 'package:injectable/injectable.dart';
import 'package:shopify_domain/core.dart';

@module
abstract class ShopifyLocationInjectableModule {
  @LazySingleton()
  ShopifyLocationFacade get shopifyLocation => ShopifyLocationFacade.instance;
}
