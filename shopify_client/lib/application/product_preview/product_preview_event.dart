part of 'product_preview_bloc.dart';

@Sealed()
abstract class _ProductPreviewEvent {
  void initialized(Shop shop, UniqueId productId);
  void likedProduct();
  void addedProductToCart();
}
