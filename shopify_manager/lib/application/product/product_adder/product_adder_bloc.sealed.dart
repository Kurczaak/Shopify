// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_adder_bloc.dart';

// **************************************************************************
// Generator: sealed_generators
// **************************************************************************

/// [ProductAdderEvent] {
///
/// ([ProductAdderEventSelectedShopsChanged] selectedShopsChanged){[List<Shop>] shops} with data equality
///
/// ([ProductAdderEventPriceNumberStringChanged] priceNumberStringChanged){[String] priceNumber} with data equality
///
/// ([ProductAdderEventPriceCurrencyChanged] priceCurrencyChanged){[Currencies] currency} with data equality
///
/// ([ProductAdderEventSaved] saved){} with data equality
///
/// ([ProductAdderEventInitialize] initialize){[Product] product} with data equality
///
/// }
@SealedManifest(_ProductAdderEvent)
abstract class ProductAdderEvent {
  const ProductAdderEvent._internal();

  const factory ProductAdderEvent.selectedShopsChanged({
    required List<Shop> shops,
  }) = ProductAdderEventSelectedShopsChanged;

  const factory ProductAdderEvent.priceNumberStringChanged({
    required String priceNumber,
  }) = ProductAdderEventPriceNumberStringChanged;

  const factory ProductAdderEvent.priceCurrencyChanged({
    required Currencies currency,
  }) = ProductAdderEventPriceCurrencyChanged;

  const factory ProductAdderEvent.saved() = ProductAdderEventSaved;

  const factory ProductAdderEvent.initialize({
    required Product product,
  }) = ProductAdderEventInitialize;

  bool get isSelectedShopsChanged =>
      this is ProductAdderEventSelectedShopsChanged;

  bool get isPriceNumberStringChanged =>
      this is ProductAdderEventPriceNumberStringChanged;

  bool get isPriceCurrencyChanged =>
      this is ProductAdderEventPriceCurrencyChanged;

  bool get isSaved => this is ProductAdderEventSaved;

  bool get isInitialize => this is ProductAdderEventInitialize;

  ProductAdderEventSelectedShopsChanged get asSelectedShopsChanged =>
      this as ProductAdderEventSelectedShopsChanged;

  ProductAdderEventPriceNumberStringChanged get asPriceNumberStringChanged =>
      this as ProductAdderEventPriceNumberStringChanged;

  ProductAdderEventPriceCurrencyChanged get asPriceCurrencyChanged =>
      this as ProductAdderEventPriceCurrencyChanged;

  ProductAdderEventSaved get asSaved => this as ProductAdderEventSaved;

  ProductAdderEventInitialize get asInitialize =>
      this as ProductAdderEventInitialize;

  ProductAdderEventSelectedShopsChanged? get asSelectedShopsChangedOrNull {
    final productAdderEvent = this;
    return productAdderEvent is ProductAdderEventSelectedShopsChanged
        ? productAdderEvent
        : null;
  }

  ProductAdderEventPriceNumberStringChanged?
      get asPriceNumberStringChangedOrNull {
    final productAdderEvent = this;
    return productAdderEvent is ProductAdderEventPriceNumberStringChanged
        ? productAdderEvent
        : null;
  }

  ProductAdderEventPriceCurrencyChanged? get asPriceCurrencyChangedOrNull {
    final productAdderEvent = this;
    return productAdderEvent is ProductAdderEventPriceCurrencyChanged
        ? productAdderEvent
        : null;
  }

  ProductAdderEventSaved? get asSavedOrNull {
    final productAdderEvent = this;
    return productAdderEvent is ProductAdderEventSaved
        ? productAdderEvent
        : null;
  }

  ProductAdderEventInitialize? get asInitializeOrNull {
    final productAdderEvent = this;
    return productAdderEvent is ProductAdderEventInitialize
        ? productAdderEvent
        : null;
  }

  R when<R extends Object?>({
    required R Function(List<Shop> shops) selectedShopsChanged,
    required R Function(String priceNumber) priceNumberStringChanged,
    required R Function(Currencies currency) priceCurrencyChanged,
    required R Function() saved,
    required R Function(Product product) initialize,
  }) {
    final productAdderEvent = this;
    if (productAdderEvent is ProductAdderEventSelectedShopsChanged) {
      return selectedShopsChanged(productAdderEvent.shops);
    } else if (productAdderEvent is ProductAdderEventPriceNumberStringChanged) {
      return priceNumberStringChanged(productAdderEvent.priceNumber);
    } else if (productAdderEvent is ProductAdderEventPriceCurrencyChanged) {
      return priceCurrencyChanged(productAdderEvent.currency);
    } else if (productAdderEvent is ProductAdderEventSaved) {
      return saved();
    } else if (productAdderEvent is ProductAdderEventInitialize) {
      return initialize(productAdderEvent.product);
    } else {
      throw AssertionError();
    }
  }

  R maybeWhen<R extends Object?>({
    R Function(List<Shop> shops)? selectedShopsChanged,
    R Function(String priceNumber)? priceNumberStringChanged,
    R Function(Currencies currency)? priceCurrencyChanged,
    R Function()? saved,
    R Function(Product product)? initialize,
    required R Function(ProductAdderEvent productAdderEvent) orElse,
  }) {
    final productAdderEvent = this;
    if (productAdderEvent is ProductAdderEventSelectedShopsChanged) {
      return selectedShopsChanged != null
          ? selectedShopsChanged(productAdderEvent.shops)
          : orElse(productAdderEvent);
    } else if (productAdderEvent is ProductAdderEventPriceNumberStringChanged) {
      return priceNumberStringChanged != null
          ? priceNumberStringChanged(productAdderEvent.priceNumber)
          : orElse(productAdderEvent);
    } else if (productAdderEvent is ProductAdderEventPriceCurrencyChanged) {
      return priceCurrencyChanged != null
          ? priceCurrencyChanged(productAdderEvent.currency)
          : orElse(productAdderEvent);
    } else if (productAdderEvent is ProductAdderEventSaved) {
      return saved != null ? saved() : orElse(productAdderEvent);
    } else if (productAdderEvent is ProductAdderEventInitialize) {
      return initialize != null
          ? initialize(productAdderEvent.product)
          : orElse(productAdderEvent);
    } else {
      throw AssertionError();
    }
  }

  @Deprecated('Use `whenOrNull` instead. Will be removed by next release.')
  void partialWhen({
    void Function(List<Shop> shops)? selectedShopsChanged,
    void Function(String priceNumber)? priceNumberStringChanged,
    void Function(Currencies currency)? priceCurrencyChanged,
    void Function()? saved,
    void Function(Product product)? initialize,
    void Function(ProductAdderEvent productAdderEvent)? orElse,
  }) {
    final productAdderEvent = this;
    if (productAdderEvent is ProductAdderEventSelectedShopsChanged) {
      if (selectedShopsChanged != null) {
        selectedShopsChanged(productAdderEvent.shops);
      } else if (orElse != null) {
        orElse(productAdderEvent);
      }
    } else if (productAdderEvent is ProductAdderEventPriceNumberStringChanged) {
      if (priceNumberStringChanged != null) {
        priceNumberStringChanged(productAdderEvent.priceNumber);
      } else if (orElse != null) {
        orElse(productAdderEvent);
      }
    } else if (productAdderEvent is ProductAdderEventPriceCurrencyChanged) {
      if (priceCurrencyChanged != null) {
        priceCurrencyChanged(productAdderEvent.currency);
      } else if (orElse != null) {
        orElse(productAdderEvent);
      }
    } else if (productAdderEvent is ProductAdderEventSaved) {
      if (saved != null) {
        saved();
      } else if (orElse != null) {
        orElse(productAdderEvent);
      }
    } else if (productAdderEvent is ProductAdderEventInitialize) {
      if (initialize != null) {
        initialize(productAdderEvent.product);
      } else if (orElse != null) {
        orElse(productAdderEvent);
      }
    } else {
      throw AssertionError();
    }
  }

  R? whenOrNull<R extends Object?>({
    R Function(List<Shop> shops)? selectedShopsChanged,
    R Function(String priceNumber)? priceNumberStringChanged,
    R Function(Currencies currency)? priceCurrencyChanged,
    R Function()? saved,
    R Function(Product product)? initialize,
    R Function(ProductAdderEvent productAdderEvent)? orElse,
  }) {
    final productAdderEvent = this;
    if (productAdderEvent is ProductAdderEventSelectedShopsChanged) {
      return selectedShopsChanged != null
          ? selectedShopsChanged(productAdderEvent.shops)
          : orElse?.call(productAdderEvent);
    } else if (productAdderEvent is ProductAdderEventPriceNumberStringChanged) {
      return priceNumberStringChanged != null
          ? priceNumberStringChanged(productAdderEvent.priceNumber)
          : orElse?.call(productAdderEvent);
    } else if (productAdderEvent is ProductAdderEventPriceCurrencyChanged) {
      return priceCurrencyChanged != null
          ? priceCurrencyChanged(productAdderEvent.currency)
          : orElse?.call(productAdderEvent);
    } else if (productAdderEvent is ProductAdderEventSaved) {
      return saved != null ? saved() : orElse?.call(productAdderEvent);
    } else if (productAdderEvent is ProductAdderEventInitialize) {
      return initialize != null
          ? initialize(productAdderEvent.product)
          : orElse?.call(productAdderEvent);
    } else {
      throw AssertionError();
    }
  }

  R map<R extends Object?>({
    required R Function(
            ProductAdderEventSelectedShopsChanged selectedShopsChanged)
        selectedShopsChanged,
    required R Function(
            ProductAdderEventPriceNumberStringChanged priceNumberStringChanged)
        priceNumberStringChanged,
    required R Function(
            ProductAdderEventPriceCurrencyChanged priceCurrencyChanged)
        priceCurrencyChanged,
    required R Function(ProductAdderEventSaved saved) saved,
    required R Function(ProductAdderEventInitialize initialize) initialize,
  }) {
    final productAdderEvent = this;
    if (productAdderEvent is ProductAdderEventSelectedShopsChanged) {
      return selectedShopsChanged(productAdderEvent);
    } else if (productAdderEvent is ProductAdderEventPriceNumberStringChanged) {
      return priceNumberStringChanged(productAdderEvent);
    } else if (productAdderEvent is ProductAdderEventPriceCurrencyChanged) {
      return priceCurrencyChanged(productAdderEvent);
    } else if (productAdderEvent is ProductAdderEventSaved) {
      return saved(productAdderEvent);
    } else if (productAdderEvent is ProductAdderEventInitialize) {
      return initialize(productAdderEvent);
    } else {
      throw AssertionError();
    }
  }

  R maybeMap<R extends Object?>({
    R Function(ProductAdderEventSelectedShopsChanged selectedShopsChanged)?
        selectedShopsChanged,
    R Function(
            ProductAdderEventPriceNumberStringChanged priceNumberStringChanged)?
        priceNumberStringChanged,
    R Function(ProductAdderEventPriceCurrencyChanged priceCurrencyChanged)?
        priceCurrencyChanged,
    R Function(ProductAdderEventSaved saved)? saved,
    R Function(ProductAdderEventInitialize initialize)? initialize,
    required R Function(ProductAdderEvent productAdderEvent) orElse,
  }) {
    final productAdderEvent = this;
    if (productAdderEvent is ProductAdderEventSelectedShopsChanged) {
      return selectedShopsChanged != null
          ? selectedShopsChanged(productAdderEvent)
          : orElse(productAdderEvent);
    } else if (productAdderEvent is ProductAdderEventPriceNumberStringChanged) {
      return priceNumberStringChanged != null
          ? priceNumberStringChanged(productAdderEvent)
          : orElse(productAdderEvent);
    } else if (productAdderEvent is ProductAdderEventPriceCurrencyChanged) {
      return priceCurrencyChanged != null
          ? priceCurrencyChanged(productAdderEvent)
          : orElse(productAdderEvent);
    } else if (productAdderEvent is ProductAdderEventSaved) {
      return saved != null
          ? saved(productAdderEvent)
          : orElse(productAdderEvent);
    } else if (productAdderEvent is ProductAdderEventInitialize) {
      return initialize != null
          ? initialize(productAdderEvent)
          : orElse(productAdderEvent);
    } else {
      throw AssertionError();
    }
  }

  @Deprecated('Use `mapOrNull` instead. Will be removed by next release.')
  void partialMap({
    void Function(ProductAdderEventSelectedShopsChanged selectedShopsChanged)?
        selectedShopsChanged,
    void Function(
            ProductAdderEventPriceNumberStringChanged priceNumberStringChanged)?
        priceNumberStringChanged,
    void Function(ProductAdderEventPriceCurrencyChanged priceCurrencyChanged)?
        priceCurrencyChanged,
    void Function(ProductAdderEventSaved saved)? saved,
    void Function(ProductAdderEventInitialize initialize)? initialize,
    void Function(ProductAdderEvent productAdderEvent)? orElse,
  }) {
    final productAdderEvent = this;
    if (productAdderEvent is ProductAdderEventSelectedShopsChanged) {
      if (selectedShopsChanged != null) {
        selectedShopsChanged(productAdderEvent);
      } else if (orElse != null) {
        orElse(productAdderEvent);
      }
    } else if (productAdderEvent is ProductAdderEventPriceNumberStringChanged) {
      if (priceNumberStringChanged != null) {
        priceNumberStringChanged(productAdderEvent);
      } else if (orElse != null) {
        orElse(productAdderEvent);
      }
    } else if (productAdderEvent is ProductAdderEventPriceCurrencyChanged) {
      if (priceCurrencyChanged != null) {
        priceCurrencyChanged(productAdderEvent);
      } else if (orElse != null) {
        orElse(productAdderEvent);
      }
    } else if (productAdderEvent is ProductAdderEventSaved) {
      if (saved != null) {
        saved(productAdderEvent);
      } else if (orElse != null) {
        orElse(productAdderEvent);
      }
    } else if (productAdderEvent is ProductAdderEventInitialize) {
      if (initialize != null) {
        initialize(productAdderEvent);
      } else if (orElse != null) {
        orElse(productAdderEvent);
      }
    } else {
      throw AssertionError();
    }
  }

  R? mapOrNull<R extends Object?>({
    R Function(ProductAdderEventSelectedShopsChanged selectedShopsChanged)?
        selectedShopsChanged,
    R Function(
            ProductAdderEventPriceNumberStringChanged priceNumberStringChanged)?
        priceNumberStringChanged,
    R Function(ProductAdderEventPriceCurrencyChanged priceCurrencyChanged)?
        priceCurrencyChanged,
    R Function(ProductAdderEventSaved saved)? saved,
    R Function(ProductAdderEventInitialize initialize)? initialize,
    R Function(ProductAdderEvent productAdderEvent)? orElse,
  }) {
    final productAdderEvent = this;
    if (productAdderEvent is ProductAdderEventSelectedShopsChanged) {
      return selectedShopsChanged != null
          ? selectedShopsChanged(productAdderEvent)
          : orElse?.call(productAdderEvent);
    } else if (productAdderEvent is ProductAdderEventPriceNumberStringChanged) {
      return priceNumberStringChanged != null
          ? priceNumberStringChanged(productAdderEvent)
          : orElse?.call(productAdderEvent);
    } else if (productAdderEvent is ProductAdderEventPriceCurrencyChanged) {
      return priceCurrencyChanged != null
          ? priceCurrencyChanged(productAdderEvent)
          : orElse?.call(productAdderEvent);
    } else if (productAdderEvent is ProductAdderEventSaved) {
      return saved != null
          ? saved(productAdderEvent)
          : orElse?.call(productAdderEvent);
    } else if (productAdderEvent is ProductAdderEventInitialize) {
      return initialize != null
          ? initialize(productAdderEvent)
          : orElse?.call(productAdderEvent);
    } else {
      throw AssertionError();
    }
  }
}

/// (([ProductAdderEventSelectedShopsChanged] : [ProductAdderEvent]) selectedShopsChanged){[List<Shop>] shops}
///
/// with data equality
class ProductAdderEventSelectedShopsChanged extends ProductAdderEvent
    with EquatableMixin {
  const ProductAdderEventSelectedShopsChanged({
    required this.shops,
  }) : super._internal();

  final List<Shop> shops;

  @override
  String toString() => 'ProductAdderEvent.selectedShopsChanged(shops: $shops)';

  @override
  List<Object?> get props => [
        shops,
      ];
}

/// (([ProductAdderEventPriceNumberStringChanged] : [ProductAdderEvent]) priceNumberStringChanged){[String] priceNumber}
///
/// with data equality
class ProductAdderEventPriceNumberStringChanged extends ProductAdderEvent
    with EquatableMixin {
  const ProductAdderEventPriceNumberStringChanged({
    required this.priceNumber,
  }) : super._internal();

  final String priceNumber;

  @override
  String toString() =>
      'ProductAdderEvent.priceNumberStringChanged(priceNumber: $priceNumber)';

  @override
  List<Object?> get props => [
        priceNumber,
      ];
}

/// (([ProductAdderEventPriceCurrencyChanged] : [ProductAdderEvent]) priceCurrencyChanged){[Currencies] currency}
///
/// with data equality
class ProductAdderEventPriceCurrencyChanged extends ProductAdderEvent
    with EquatableMixin {
  const ProductAdderEventPriceCurrencyChanged({
    required this.currency,
  }) : super._internal();

  final Currencies currency;

  @override
  String toString() =>
      'ProductAdderEvent.priceCurrencyChanged(currency: $currency)';

  @override
  List<Object?> get props => [
        currency,
      ];
}

/// (([ProductAdderEventSaved] : [ProductAdderEvent]) saved){}
///
/// with data equality
class ProductAdderEventSaved extends ProductAdderEvent with EquatableMixin {
  const ProductAdderEventSaved() : super._internal();

  @override
  String toString() => 'ProductAdderEvent.saved()';

  @override
  List<Object?> get props => [];
}

/// (([ProductAdderEventInitialize] : [ProductAdderEvent]) initialize){[Product] product}
///
/// with data equality
class ProductAdderEventInitialize extends ProductAdderEvent
    with EquatableMixin {
  const ProductAdderEventInitialize({
    required this.product,
  }) : super._internal();

  final Product product;

  @override
  String toString() => 'ProductAdderEvent.initialize(product: $product)';

  @override
  List<Object?> get props => [
        product,
      ];
}
