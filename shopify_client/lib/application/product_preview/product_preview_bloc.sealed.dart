// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_preview_bloc.dart';

// **************************************************************************
// Generator: sealed_generators
// **************************************************************************

/// [ProductPreviewEvent] {
///
/// ([ProductPreviewEventInitialized] initialized){[Shop] shop, [UniqueId] productId} with data equality
///
/// ([ProductPreviewEventLikedProduct] likedProduct){} with data equality
///
/// ([ProductPreviewEventAddedProductToCart] addedProductToCart){} with data equality
///
/// }
@SealedManifest(_ProductPreviewEvent)
abstract class ProductPreviewEvent {
  const ProductPreviewEvent._internal();

  const factory ProductPreviewEvent.initialized({
    required Shop shop,
    required UniqueId productId,
  }) = ProductPreviewEventInitialized;

  const factory ProductPreviewEvent.likedProduct() =
      ProductPreviewEventLikedProduct;

  const factory ProductPreviewEvent.addedProductToCart() =
      ProductPreviewEventAddedProductToCart;

  bool get isInitialized => this is ProductPreviewEventInitialized;

  bool get isLikedProduct => this is ProductPreviewEventLikedProduct;

  bool get isAddedProductToCart =>
      this is ProductPreviewEventAddedProductToCart;

  ProductPreviewEventInitialized get asInitialized =>
      this as ProductPreviewEventInitialized;

  ProductPreviewEventLikedProduct get asLikedProduct =>
      this as ProductPreviewEventLikedProduct;

  ProductPreviewEventAddedProductToCart get asAddedProductToCart =>
      this as ProductPreviewEventAddedProductToCart;

  ProductPreviewEventInitialized? get asInitializedOrNull {
    final productPreviewEvent = this;
    return productPreviewEvent is ProductPreviewEventInitialized
        ? productPreviewEvent
        : null;
  }

  ProductPreviewEventLikedProduct? get asLikedProductOrNull {
    final productPreviewEvent = this;
    return productPreviewEvent is ProductPreviewEventLikedProduct
        ? productPreviewEvent
        : null;
  }

  ProductPreviewEventAddedProductToCart? get asAddedProductToCartOrNull {
    final productPreviewEvent = this;
    return productPreviewEvent is ProductPreviewEventAddedProductToCart
        ? productPreviewEvent
        : null;
  }

  R when<R extends Object?>({
    required R Function(Shop shop, UniqueId productId) initialized,
    required R Function() likedProduct,
    required R Function() addedProductToCart,
  }) {
    final productPreviewEvent = this;
    if (productPreviewEvent is ProductPreviewEventInitialized) {
      return initialized(
          productPreviewEvent.shop, productPreviewEvent.productId);
    } else if (productPreviewEvent is ProductPreviewEventLikedProduct) {
      return likedProduct();
    } else if (productPreviewEvent is ProductPreviewEventAddedProductToCart) {
      return addedProductToCart();
    } else {
      throw AssertionError();
    }
  }

  R maybeWhen<R extends Object?>({
    R Function(Shop shop, UniqueId productId)? initialized,
    R Function()? likedProduct,
    R Function()? addedProductToCart,
    required R Function(ProductPreviewEvent productPreviewEvent) orElse,
  }) {
    final productPreviewEvent = this;
    if (productPreviewEvent is ProductPreviewEventInitialized) {
      return initialized != null
          ? initialized(productPreviewEvent.shop, productPreviewEvent.productId)
          : orElse(productPreviewEvent);
    } else if (productPreviewEvent is ProductPreviewEventLikedProduct) {
      return likedProduct != null
          ? likedProduct()
          : orElse(productPreviewEvent);
    } else if (productPreviewEvent is ProductPreviewEventAddedProductToCart) {
      return addedProductToCart != null
          ? addedProductToCart()
          : orElse(productPreviewEvent);
    } else {
      throw AssertionError();
    }
  }

  @Deprecated('Use `whenOrNull` instead. Will be removed by next release.')
  void partialWhen({
    void Function(Shop shop, UniqueId productId)? initialized,
    void Function()? likedProduct,
    void Function()? addedProductToCart,
    void Function(ProductPreviewEvent productPreviewEvent)? orElse,
  }) {
    final productPreviewEvent = this;
    if (productPreviewEvent is ProductPreviewEventInitialized) {
      if (initialized != null) {
        initialized(productPreviewEvent.shop, productPreviewEvent.productId);
      } else if (orElse != null) {
        orElse(productPreviewEvent);
      }
    } else if (productPreviewEvent is ProductPreviewEventLikedProduct) {
      if (likedProduct != null) {
        likedProduct();
      } else if (orElse != null) {
        orElse(productPreviewEvent);
      }
    } else if (productPreviewEvent is ProductPreviewEventAddedProductToCart) {
      if (addedProductToCart != null) {
        addedProductToCart();
      } else if (orElse != null) {
        orElse(productPreviewEvent);
      }
    } else {
      throw AssertionError();
    }
  }

  R? whenOrNull<R extends Object?>({
    R Function(Shop shop, UniqueId productId)? initialized,
    R Function()? likedProduct,
    R Function()? addedProductToCart,
    R Function(ProductPreviewEvent productPreviewEvent)? orElse,
  }) {
    final productPreviewEvent = this;
    if (productPreviewEvent is ProductPreviewEventInitialized) {
      return initialized != null
          ? initialized(productPreviewEvent.shop, productPreviewEvent.productId)
          : orElse?.call(productPreviewEvent);
    } else if (productPreviewEvent is ProductPreviewEventLikedProduct) {
      return likedProduct != null
          ? likedProduct()
          : orElse?.call(productPreviewEvent);
    } else if (productPreviewEvent is ProductPreviewEventAddedProductToCart) {
      return addedProductToCart != null
          ? addedProductToCart()
          : orElse?.call(productPreviewEvent);
    } else {
      throw AssertionError();
    }
  }

  R map<R extends Object?>({
    required R Function(ProductPreviewEventInitialized initialized) initialized,
    required R Function(ProductPreviewEventLikedProduct likedProduct)
        likedProduct,
    required R Function(
            ProductPreviewEventAddedProductToCart addedProductToCart)
        addedProductToCart,
  }) {
    final productPreviewEvent = this;
    if (productPreviewEvent is ProductPreviewEventInitialized) {
      return initialized(productPreviewEvent);
    } else if (productPreviewEvent is ProductPreviewEventLikedProduct) {
      return likedProduct(productPreviewEvent);
    } else if (productPreviewEvent is ProductPreviewEventAddedProductToCart) {
      return addedProductToCart(productPreviewEvent);
    } else {
      throw AssertionError();
    }
  }

  R maybeMap<R extends Object?>({
    R Function(ProductPreviewEventInitialized initialized)? initialized,
    R Function(ProductPreviewEventLikedProduct likedProduct)? likedProduct,
    R Function(ProductPreviewEventAddedProductToCart addedProductToCart)?
        addedProductToCart,
    required R Function(ProductPreviewEvent productPreviewEvent) orElse,
  }) {
    final productPreviewEvent = this;
    if (productPreviewEvent is ProductPreviewEventInitialized) {
      return initialized != null
          ? initialized(productPreviewEvent)
          : orElse(productPreviewEvent);
    } else if (productPreviewEvent is ProductPreviewEventLikedProduct) {
      return likedProduct != null
          ? likedProduct(productPreviewEvent)
          : orElse(productPreviewEvent);
    } else if (productPreviewEvent is ProductPreviewEventAddedProductToCart) {
      return addedProductToCart != null
          ? addedProductToCart(productPreviewEvent)
          : orElse(productPreviewEvent);
    } else {
      throw AssertionError();
    }
  }

  @Deprecated('Use `mapOrNull` instead. Will be removed by next release.')
  void partialMap({
    void Function(ProductPreviewEventInitialized initialized)? initialized,
    void Function(ProductPreviewEventLikedProduct likedProduct)? likedProduct,
    void Function(ProductPreviewEventAddedProductToCart addedProductToCart)?
        addedProductToCart,
    void Function(ProductPreviewEvent productPreviewEvent)? orElse,
  }) {
    final productPreviewEvent = this;
    if (productPreviewEvent is ProductPreviewEventInitialized) {
      if (initialized != null) {
        initialized(productPreviewEvent);
      } else if (orElse != null) {
        orElse(productPreviewEvent);
      }
    } else if (productPreviewEvent is ProductPreviewEventLikedProduct) {
      if (likedProduct != null) {
        likedProduct(productPreviewEvent);
      } else if (orElse != null) {
        orElse(productPreviewEvent);
      }
    } else if (productPreviewEvent is ProductPreviewEventAddedProductToCart) {
      if (addedProductToCart != null) {
        addedProductToCart(productPreviewEvent);
      } else if (orElse != null) {
        orElse(productPreviewEvent);
      }
    } else {
      throw AssertionError();
    }
  }

  R? mapOrNull<R extends Object?>({
    R Function(ProductPreviewEventInitialized initialized)? initialized,
    R Function(ProductPreviewEventLikedProduct likedProduct)? likedProduct,
    R Function(ProductPreviewEventAddedProductToCart addedProductToCart)?
        addedProductToCart,
    R Function(ProductPreviewEvent productPreviewEvent)? orElse,
  }) {
    final productPreviewEvent = this;
    if (productPreviewEvent is ProductPreviewEventInitialized) {
      return initialized != null
          ? initialized(productPreviewEvent)
          : orElse?.call(productPreviewEvent);
    } else if (productPreviewEvent is ProductPreviewEventLikedProduct) {
      return likedProduct != null
          ? likedProduct(productPreviewEvent)
          : orElse?.call(productPreviewEvent);
    } else if (productPreviewEvent is ProductPreviewEventAddedProductToCart) {
      return addedProductToCart != null
          ? addedProductToCart(productPreviewEvent)
          : orElse?.call(productPreviewEvent);
    } else {
      throw AssertionError();
    }
  }
}

/// (([ProductPreviewEventInitialized] : [ProductPreviewEvent]) initialized){[Shop] shop, [UniqueId] productId}
///
/// with data equality
class ProductPreviewEventInitialized extends ProductPreviewEvent
    with EquatableMixin {
  const ProductPreviewEventInitialized({
    required this.shop,
    required this.productId,
  }) : super._internal();

  final Shop shop;
  final UniqueId productId;

  @override
  String toString() =>
      'ProductPreviewEvent.initialized(shop: $shop, productId: $productId)';

  @override
  List<Object?> get props => [
        shop,
        productId,
      ];
}

/// (([ProductPreviewEventLikedProduct] : [ProductPreviewEvent]) likedProduct){}
///
/// with data equality
class ProductPreviewEventLikedProduct extends ProductPreviewEvent
    with EquatableMixin {
  const ProductPreviewEventLikedProduct() : super._internal();

  @override
  String toString() => 'ProductPreviewEvent.likedProduct()';

  @override
  List<Object?> get props => [];
}

/// (([ProductPreviewEventAddedProductToCart] : [ProductPreviewEvent]) addedProductToCart){}
///
/// with data equality
class ProductPreviewEventAddedProductToCart extends ProductPreviewEvent
    with EquatableMixin {
  const ProductPreviewEventAddedProductToCart() : super._internal();

  @override
  String toString() => 'ProductPreviewEvent.addedProductToCart()';

  @override
  List<Object?> get props => [];
}
