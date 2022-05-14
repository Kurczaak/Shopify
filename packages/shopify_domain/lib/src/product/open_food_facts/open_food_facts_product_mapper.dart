import 'package:openfoodfacts/openfoodfacts.dart' as off;
import 'package:shopify_domain/core.dart';
import 'package:shopify_domain/product.dart';

extension OpenFoodFactsProductDomainX on off.Product {
  Product toDomain() {
    return Product.fromPrimitives(
        id: UniqueId().getOrCrash(),
        barcode: barcode ?? '',
        weight: packagingQuantity ?? 0,
        weightUnit: 'gram',
        price: 0,
        currency: 'zł',
        category: '',
        name: productName ?? '',
        brand: brands ?? '',
        description: '',
        ingredients: ingredientsText ?? '',
        photosUrls: getProductPhotots(imageFrontUrl, imagePackagingSmallUrl));
  }
}

List<String> getProductPhotots(String? imageFront, String? imagePackaging) {
  final List<String> urls = [];
  if (imageFront != null) urls.add(imageFront);
  if (imagePackaging != null) urls.add(imagePackaging);
  return urls;
}
