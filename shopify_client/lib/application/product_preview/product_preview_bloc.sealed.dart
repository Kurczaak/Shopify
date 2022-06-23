// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_preview_bloc.dart';

// **************************************************************************
// Generator: sealed_generators
// **************************************************************************

/// [ProductPreviewEvent] {
///
/// ([ProductPreviewEventInitialized] initialized){[Shop] shop, [UniqueId] productId} with data equality
///
/// }
@SealedManifest(_ProductPreviewEvent)
abstract class ProductPreviewEvent {
  const ProductPreviewEvent._internal();

  const factory ProductPreviewEvent.initialized({
    required Shop shop,
    required UniqueId productId,
  }) = ProductPreviewEventInitialized;

  bool get isInitialized => this is ProductPreviewEventInitialized;

  ProductPreviewEventInitialized get asInitialized =>
      this as ProductPreviewEventInitialized;

  ProductPreviewEventInitialized? get asInitializedOrNull {
    final productPreviewEvent = this;
    return productPreviewEvent is ProductPreviewEventInitialized
        ? productPreviewEvent
        : null;
  }

  R when<R extends Object?>({
    required R Function(Shop shop, UniqueId productId) initialized,
  }) {
    final productPreviewEvent = this;
    if (productPreviewEvent is ProductPreviewEventInitialized) {
      return initialized(
          productPreviewEvent.shop, productPreviewEvent.productId);
    } else {
      throw AssertionError();
    }
  }

  R maybeWhen<R extends Object?>({
    R Function(Shop shop, UniqueId productId)? initialized,
    required R Function(ProductPreviewEvent productPreviewEvent) orElse,
  }) {
    final productPreviewEvent = this;
    if (productPreviewEvent is ProductPreviewEventInitialized) {
      return initialized != null
          ? initialized(productPreviewEvent.shop, productPreviewEvent.productId)
          : orElse(productPreviewEvent);
    } else {
      throw AssertionError();
    }
  }

  @Deprecated('Use `whenOrNull` instead. Will be removed by next release.')
  void partialWhen({
    void Function(Shop shop, UniqueId productId)? initialized,
    void Function(ProductPreviewEvent productPreviewEvent)? orElse,
  }) {
    final productPreviewEvent = this;
    if (productPreviewEvent is ProductPreviewEventInitialized) {
      if (initialized != null) {
        initialized(productPreviewEvent.shop, productPreviewEvent.productId);
      } else if (orElse != null) {
        orElse(productPreviewEvent);
      }
    } else {
      throw AssertionError();
    }
  }

  R? whenOrNull<R extends Object?>({
    R Function(Shop shop, UniqueId productId)? initialized,
    R Function(ProductPreviewEvent productPreviewEvent)? orElse,
  }) {
    final productPreviewEvent = this;
    if (productPreviewEvent is ProductPreviewEventInitialized) {
      return initialized != null
          ? initialized(productPreviewEvent.shop, productPreviewEvent.productId)
          : orElse?.call(productPreviewEvent);
    } else {
      throw AssertionError();
    }
  }

  R map<R extends Object?>({
    required R Function(ProductPreviewEventInitialized initialized) initialized,
  }) {
    final productPreviewEvent = this;
    if (productPreviewEvent is ProductPreviewEventInitialized) {
      return initialized(productPreviewEvent);
    } else {
      throw AssertionError();
    }
  }

  R maybeMap<R extends Object?>({
    R Function(ProductPreviewEventInitialized initialized)? initialized,
    required R Function(ProductPreviewEvent productPreviewEvent) orElse,
  }) {
    final productPreviewEvent = this;
    if (productPreviewEvent is ProductPreviewEventInitialized) {
      return initialized != null
          ? initialized(productPreviewEvent)
          : orElse(productPreviewEvent);
    } else {
      throw AssertionError();
    }
  }

  @Deprecated('Use `mapOrNull` instead. Will be removed by next release.')
  void partialMap({
    void Function(ProductPreviewEventInitialized initialized)? initialized,
    void Function(ProductPreviewEvent productPreviewEvent)? orElse,
  }) {
    final productPreviewEvent = this;
    if (productPreviewEvent is ProductPreviewEventInitialized) {
      if (initialized != null) {
        initialized(productPreviewEvent);
      } else if (orElse != null) {
        orElse(productPreviewEvent);
      }
    } else {
      throw AssertionError();
    }
  }

  R? mapOrNull<R extends Object?>({
    R Function(ProductPreviewEventInitialized initialized)? initialized,
    R Function(ProductPreviewEvent productPreviewEvent)? orElse,
  }) {
    final productPreviewEvent = this;
    if (productPreviewEvent is ProductPreviewEventInitialized) {
      return initialized != null
          ? initialized(productPreviewEvent)
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
