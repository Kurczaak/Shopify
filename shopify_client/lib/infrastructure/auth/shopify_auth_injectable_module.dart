import 'package:injectable/injectable.dart';
import 'package:shopify_domain/auth.dart';

@module
abstract class ShopifyInjectableModule {
  @LazySingleton()
  ShopifyAuth get shopifyAuth => ShopifyAuth.instance;
}
