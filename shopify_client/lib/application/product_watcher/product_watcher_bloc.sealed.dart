// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_watcher_bloc.dart';

// **************************************************************************
// Generator: sealed_generators
// **************************************************************************

/// [ProductWatcherEvent] {
///
/// ([ProductWatcherEventSearchedForProduct] searchedForProduct){[String] term} with data equality
///
/// ([ProductWatcherEventCategoryChosen] categoryChosen){[Category] category} with data equality
///
/// ([ProductWatcherEventGetNextPage] getNextPage){} with data equality
///
/// ([ProductWatcherEventInitialize] initialize){[Shop] shop} with data equality
///
/// ([ProductWatcherEventClearCategoryAndProducts] clearCategoryAndProducts){} with data equality
///
/// ([ProductWatcherEventWatchAllProductsSelected] watchAllProductsSelected){} with data equality
///
/// }
@SealedManifest(_ProductWatcherEvent)
abstract class ProductWatcherEvent {
  const ProductWatcherEvent._internal();

  const factory ProductWatcherEvent.searchedForProduct({
    required String term,
  }) = ProductWatcherEventSearchedForProduct;

  const factory ProductWatcherEvent.categoryChosen({
    required Category category,
  }) = ProductWatcherEventCategoryChosen;

  const factory ProductWatcherEvent.getNextPage() =
      ProductWatcherEventGetNextPage;

  const factory ProductWatcherEvent.initialize({
    required Shop shop,
  }) = ProductWatcherEventInitialize;

  const factory ProductWatcherEvent.clearCategoryAndProducts() =
      ProductWatcherEventClearCategoryAndProducts;

  const factory ProductWatcherEvent.watchAllProductsSelected() =
      ProductWatcherEventWatchAllProductsSelected;

  bool get isSearchedForProduct =>
      this is ProductWatcherEventSearchedForProduct;

  bool get isCategoryChosen => this is ProductWatcherEventCategoryChosen;

  bool get isGetNextPage => this is ProductWatcherEventGetNextPage;

  bool get isInitialize => this is ProductWatcherEventInitialize;

  bool get isClearCategoryAndProducts =>
      this is ProductWatcherEventClearCategoryAndProducts;

  bool get isWatchAllProductsSelected =>
      this is ProductWatcherEventWatchAllProductsSelected;

  ProductWatcherEventSearchedForProduct get asSearchedForProduct =>
      this as ProductWatcherEventSearchedForProduct;

  ProductWatcherEventCategoryChosen get asCategoryChosen =>
      this as ProductWatcherEventCategoryChosen;

  ProductWatcherEventGetNextPage get asGetNextPage =>
      this as ProductWatcherEventGetNextPage;

  ProductWatcherEventInitialize get asInitialize =>
      this as ProductWatcherEventInitialize;

  ProductWatcherEventClearCategoryAndProducts get asClearCategoryAndProducts =>
      this as ProductWatcherEventClearCategoryAndProducts;

  ProductWatcherEventWatchAllProductsSelected get asWatchAllProductsSelected =>
      this as ProductWatcherEventWatchAllProductsSelected;

  ProductWatcherEventSearchedForProduct? get asSearchedForProductOrNull {
    final productWatcherEvent = this;
    return productWatcherEvent is ProductWatcherEventSearchedForProduct
        ? productWatcherEvent
        : null;
  }

  ProductWatcherEventCategoryChosen? get asCategoryChosenOrNull {
    final productWatcherEvent = this;
    return productWatcherEvent is ProductWatcherEventCategoryChosen
        ? productWatcherEvent
        : null;
  }

  ProductWatcherEventGetNextPage? get asGetNextPageOrNull {
    final productWatcherEvent = this;
    return productWatcherEvent is ProductWatcherEventGetNextPage
        ? productWatcherEvent
        : null;
  }

  ProductWatcherEventInitialize? get asInitializeOrNull {
    final productWatcherEvent = this;
    return productWatcherEvent is ProductWatcherEventInitialize
        ? productWatcherEvent
        : null;
  }

  ProductWatcherEventClearCategoryAndProducts?
      get asClearCategoryAndProductsOrNull {
    final productWatcherEvent = this;
    return productWatcherEvent is ProductWatcherEventClearCategoryAndProducts
        ? productWatcherEvent
        : null;
  }

  ProductWatcherEventWatchAllProductsSelected?
      get asWatchAllProductsSelectedOrNull {
    final productWatcherEvent = this;
    return productWatcherEvent is ProductWatcherEventWatchAllProductsSelected
        ? productWatcherEvent
        : null;
  }

  R when<R extends Object?>({
    required R Function(String term) searchedForProduct,
    required R Function(Category category) categoryChosen,
    required R Function() getNextPage,
    required R Function(Shop shop) initialize,
    required R Function() clearCategoryAndProducts,
    required R Function() watchAllProductsSelected,
  }) {
    final productWatcherEvent = this;
    if (productWatcherEvent is ProductWatcherEventSearchedForProduct) {
      return searchedForProduct(productWatcherEvent.term);
    } else if (productWatcherEvent is ProductWatcherEventCategoryChosen) {
      return categoryChosen(productWatcherEvent.category);
    } else if (productWatcherEvent is ProductWatcherEventGetNextPage) {
      return getNextPage();
    } else if (productWatcherEvent is ProductWatcherEventInitialize) {
      return initialize(productWatcherEvent.shop);
    } else if (productWatcherEvent
        is ProductWatcherEventClearCategoryAndProducts) {
      return clearCategoryAndProducts();
    } else if (productWatcherEvent
        is ProductWatcherEventWatchAllProductsSelected) {
      return watchAllProductsSelected();
    } else {
      throw AssertionError();
    }
  }

  R maybeWhen<R extends Object?>({
    R Function(String term)? searchedForProduct,
    R Function(Category category)? categoryChosen,
    R Function()? getNextPage,
    R Function(Shop shop)? initialize,
    R Function()? clearCategoryAndProducts,
    R Function()? watchAllProductsSelected,
    required R Function(ProductWatcherEvent productWatcherEvent) orElse,
  }) {
    final productWatcherEvent = this;
    if (productWatcherEvent is ProductWatcherEventSearchedForProduct) {
      return searchedForProduct != null
          ? searchedForProduct(productWatcherEvent.term)
          : orElse(productWatcherEvent);
    } else if (productWatcherEvent is ProductWatcherEventCategoryChosen) {
      return categoryChosen != null
          ? categoryChosen(productWatcherEvent.category)
          : orElse(productWatcherEvent);
    } else if (productWatcherEvent is ProductWatcherEventGetNextPage) {
      return getNextPage != null ? getNextPage() : orElse(productWatcherEvent);
    } else if (productWatcherEvent is ProductWatcherEventInitialize) {
      return initialize != null
          ? initialize(productWatcherEvent.shop)
          : orElse(productWatcherEvent);
    } else if (productWatcherEvent
        is ProductWatcherEventClearCategoryAndProducts) {
      return clearCategoryAndProducts != null
          ? clearCategoryAndProducts()
          : orElse(productWatcherEvent);
    } else if (productWatcherEvent
        is ProductWatcherEventWatchAllProductsSelected) {
      return watchAllProductsSelected != null
          ? watchAllProductsSelected()
          : orElse(productWatcherEvent);
    } else {
      throw AssertionError();
    }
  }

  @Deprecated('Use `whenOrNull` instead. Will be removed by next release.')
  void partialWhen({
    void Function(String term)? searchedForProduct,
    void Function(Category category)? categoryChosen,
    void Function()? getNextPage,
    void Function(Shop shop)? initialize,
    void Function()? clearCategoryAndProducts,
    void Function()? watchAllProductsSelected,
    void Function(ProductWatcherEvent productWatcherEvent)? orElse,
  }) {
    final productWatcherEvent = this;
    if (productWatcherEvent is ProductWatcherEventSearchedForProduct) {
      if (searchedForProduct != null) {
        searchedForProduct(productWatcherEvent.term);
      } else if (orElse != null) {
        orElse(productWatcherEvent);
      }
    } else if (productWatcherEvent is ProductWatcherEventCategoryChosen) {
      if (categoryChosen != null) {
        categoryChosen(productWatcherEvent.category);
      } else if (orElse != null) {
        orElse(productWatcherEvent);
      }
    } else if (productWatcherEvent is ProductWatcherEventGetNextPage) {
      if (getNextPage != null) {
        getNextPage();
      } else if (orElse != null) {
        orElse(productWatcherEvent);
      }
    } else if (productWatcherEvent is ProductWatcherEventInitialize) {
      if (initialize != null) {
        initialize(productWatcherEvent.shop);
      } else if (orElse != null) {
        orElse(productWatcherEvent);
      }
    } else if (productWatcherEvent
        is ProductWatcherEventClearCategoryAndProducts) {
      if (clearCategoryAndProducts != null) {
        clearCategoryAndProducts();
      } else if (orElse != null) {
        orElse(productWatcherEvent);
      }
    } else if (productWatcherEvent
        is ProductWatcherEventWatchAllProductsSelected) {
      if (watchAllProductsSelected != null) {
        watchAllProductsSelected();
      } else if (orElse != null) {
        orElse(productWatcherEvent);
      }
    } else {
      throw AssertionError();
    }
  }

  R? whenOrNull<R extends Object?>({
    R Function(String term)? searchedForProduct,
    R Function(Category category)? categoryChosen,
    R Function()? getNextPage,
    R Function(Shop shop)? initialize,
    R Function()? clearCategoryAndProducts,
    R Function()? watchAllProductsSelected,
    R Function(ProductWatcherEvent productWatcherEvent)? orElse,
  }) {
    final productWatcherEvent = this;
    if (productWatcherEvent is ProductWatcherEventSearchedForProduct) {
      return searchedForProduct != null
          ? searchedForProduct(productWatcherEvent.term)
          : orElse?.call(productWatcherEvent);
    } else if (productWatcherEvent is ProductWatcherEventCategoryChosen) {
      return categoryChosen != null
          ? categoryChosen(productWatcherEvent.category)
          : orElse?.call(productWatcherEvent);
    } else if (productWatcherEvent is ProductWatcherEventGetNextPage) {
      return getNextPage != null
          ? getNextPage()
          : orElse?.call(productWatcherEvent);
    } else if (productWatcherEvent is ProductWatcherEventInitialize) {
      return initialize != null
          ? initialize(productWatcherEvent.shop)
          : orElse?.call(productWatcherEvent);
    } else if (productWatcherEvent
        is ProductWatcherEventClearCategoryAndProducts) {
      return clearCategoryAndProducts != null
          ? clearCategoryAndProducts()
          : orElse?.call(productWatcherEvent);
    } else if (productWatcherEvent
        is ProductWatcherEventWatchAllProductsSelected) {
      return watchAllProductsSelected != null
          ? watchAllProductsSelected()
          : orElse?.call(productWatcherEvent);
    } else {
      throw AssertionError();
    }
  }

  R map<R extends Object?>({
    required R Function(
            ProductWatcherEventSearchedForProduct searchedForProduct)
        searchedForProduct,
    required R Function(ProductWatcherEventCategoryChosen categoryChosen)
        categoryChosen,
    required R Function(ProductWatcherEventGetNextPage getNextPage) getNextPage,
    required R Function(ProductWatcherEventInitialize initialize) initialize,
    required R Function(
            ProductWatcherEventClearCategoryAndProducts
                clearCategoryAndProducts)
        clearCategoryAndProducts,
    required R Function(
            ProductWatcherEventWatchAllProductsSelected
                watchAllProductsSelected)
        watchAllProductsSelected,
  }) {
    final productWatcherEvent = this;
    if (productWatcherEvent is ProductWatcherEventSearchedForProduct) {
      return searchedForProduct(productWatcherEvent);
    } else if (productWatcherEvent is ProductWatcherEventCategoryChosen) {
      return categoryChosen(productWatcherEvent);
    } else if (productWatcherEvent is ProductWatcherEventGetNextPage) {
      return getNextPage(productWatcherEvent);
    } else if (productWatcherEvent is ProductWatcherEventInitialize) {
      return initialize(productWatcherEvent);
    } else if (productWatcherEvent
        is ProductWatcherEventClearCategoryAndProducts) {
      return clearCategoryAndProducts(productWatcherEvent);
    } else if (productWatcherEvent
        is ProductWatcherEventWatchAllProductsSelected) {
      return watchAllProductsSelected(productWatcherEvent);
    } else {
      throw AssertionError();
    }
  }

  R maybeMap<R extends Object?>({
    R Function(ProductWatcherEventSearchedForProduct searchedForProduct)?
        searchedForProduct,
    R Function(ProductWatcherEventCategoryChosen categoryChosen)?
        categoryChosen,
    R Function(ProductWatcherEventGetNextPage getNextPage)? getNextPage,
    R Function(ProductWatcherEventInitialize initialize)? initialize,
    R Function(
            ProductWatcherEventClearCategoryAndProducts
                clearCategoryAndProducts)?
        clearCategoryAndProducts,
    R Function(
            ProductWatcherEventWatchAllProductsSelected
                watchAllProductsSelected)?
        watchAllProductsSelected,
    required R Function(ProductWatcherEvent productWatcherEvent) orElse,
  }) {
    final productWatcherEvent = this;
    if (productWatcherEvent is ProductWatcherEventSearchedForProduct) {
      return searchedForProduct != null
          ? searchedForProduct(productWatcherEvent)
          : orElse(productWatcherEvent);
    } else if (productWatcherEvent is ProductWatcherEventCategoryChosen) {
      return categoryChosen != null
          ? categoryChosen(productWatcherEvent)
          : orElse(productWatcherEvent);
    } else if (productWatcherEvent is ProductWatcherEventGetNextPage) {
      return getNextPage != null
          ? getNextPage(productWatcherEvent)
          : orElse(productWatcherEvent);
    } else if (productWatcherEvent is ProductWatcherEventInitialize) {
      return initialize != null
          ? initialize(productWatcherEvent)
          : orElse(productWatcherEvent);
    } else if (productWatcherEvent
        is ProductWatcherEventClearCategoryAndProducts) {
      return clearCategoryAndProducts != null
          ? clearCategoryAndProducts(productWatcherEvent)
          : orElse(productWatcherEvent);
    } else if (productWatcherEvent
        is ProductWatcherEventWatchAllProductsSelected) {
      return watchAllProductsSelected != null
          ? watchAllProductsSelected(productWatcherEvent)
          : orElse(productWatcherEvent);
    } else {
      throw AssertionError();
    }
  }

  @Deprecated('Use `mapOrNull` instead. Will be removed by next release.')
  void partialMap({
    void Function(ProductWatcherEventSearchedForProduct searchedForProduct)?
        searchedForProduct,
    void Function(ProductWatcherEventCategoryChosen categoryChosen)?
        categoryChosen,
    void Function(ProductWatcherEventGetNextPage getNextPage)? getNextPage,
    void Function(ProductWatcherEventInitialize initialize)? initialize,
    void Function(
            ProductWatcherEventClearCategoryAndProducts
                clearCategoryAndProducts)?
        clearCategoryAndProducts,
    void Function(
            ProductWatcherEventWatchAllProductsSelected
                watchAllProductsSelected)?
        watchAllProductsSelected,
    void Function(ProductWatcherEvent productWatcherEvent)? orElse,
  }) {
    final productWatcherEvent = this;
    if (productWatcherEvent is ProductWatcherEventSearchedForProduct) {
      if (searchedForProduct != null) {
        searchedForProduct(productWatcherEvent);
      } else if (orElse != null) {
        orElse(productWatcherEvent);
      }
    } else if (productWatcherEvent is ProductWatcherEventCategoryChosen) {
      if (categoryChosen != null) {
        categoryChosen(productWatcherEvent);
      } else if (orElse != null) {
        orElse(productWatcherEvent);
      }
    } else if (productWatcherEvent is ProductWatcherEventGetNextPage) {
      if (getNextPage != null) {
        getNextPage(productWatcherEvent);
      } else if (orElse != null) {
        orElse(productWatcherEvent);
      }
    } else if (productWatcherEvent is ProductWatcherEventInitialize) {
      if (initialize != null) {
        initialize(productWatcherEvent);
      } else if (orElse != null) {
        orElse(productWatcherEvent);
      }
    } else if (productWatcherEvent
        is ProductWatcherEventClearCategoryAndProducts) {
      if (clearCategoryAndProducts != null) {
        clearCategoryAndProducts(productWatcherEvent);
      } else if (orElse != null) {
        orElse(productWatcherEvent);
      }
    } else if (productWatcherEvent
        is ProductWatcherEventWatchAllProductsSelected) {
      if (watchAllProductsSelected != null) {
        watchAllProductsSelected(productWatcherEvent);
      } else if (orElse != null) {
        orElse(productWatcherEvent);
      }
    } else {
      throw AssertionError();
    }
  }

  R? mapOrNull<R extends Object?>({
    R Function(ProductWatcherEventSearchedForProduct searchedForProduct)?
        searchedForProduct,
    R Function(ProductWatcherEventCategoryChosen categoryChosen)?
        categoryChosen,
    R Function(ProductWatcherEventGetNextPage getNextPage)? getNextPage,
    R Function(ProductWatcherEventInitialize initialize)? initialize,
    R Function(
            ProductWatcherEventClearCategoryAndProducts
                clearCategoryAndProducts)?
        clearCategoryAndProducts,
    R Function(
            ProductWatcherEventWatchAllProductsSelected
                watchAllProductsSelected)?
        watchAllProductsSelected,
    R Function(ProductWatcherEvent productWatcherEvent)? orElse,
  }) {
    final productWatcherEvent = this;
    if (productWatcherEvent is ProductWatcherEventSearchedForProduct) {
      return searchedForProduct != null
          ? searchedForProduct(productWatcherEvent)
          : orElse?.call(productWatcherEvent);
    } else if (productWatcherEvent is ProductWatcherEventCategoryChosen) {
      return categoryChosen != null
          ? categoryChosen(productWatcherEvent)
          : orElse?.call(productWatcherEvent);
    } else if (productWatcherEvent is ProductWatcherEventGetNextPage) {
      return getNextPage != null
          ? getNextPage(productWatcherEvent)
          : orElse?.call(productWatcherEvent);
    } else if (productWatcherEvent is ProductWatcherEventInitialize) {
      return initialize != null
          ? initialize(productWatcherEvent)
          : orElse?.call(productWatcherEvent);
    } else if (productWatcherEvent
        is ProductWatcherEventClearCategoryAndProducts) {
      return clearCategoryAndProducts != null
          ? clearCategoryAndProducts(productWatcherEvent)
          : orElse?.call(productWatcherEvent);
    } else if (productWatcherEvent
        is ProductWatcherEventWatchAllProductsSelected) {
      return watchAllProductsSelected != null
          ? watchAllProductsSelected(productWatcherEvent)
          : orElse?.call(productWatcherEvent);
    } else {
      throw AssertionError();
    }
  }
}

/// (([ProductWatcherEventSearchedForProduct] : [ProductWatcherEvent]) searchedForProduct){[String] term}
///
/// with data equality
class ProductWatcherEventSearchedForProduct extends ProductWatcherEvent
    with EquatableMixin {
  const ProductWatcherEventSearchedForProduct({
    required this.term,
  }) : super._internal();

  final String term;

  @override
  String toString() => 'ProductWatcherEvent.searchedForProduct(term: $term)';

  @override
  List<Object?> get props => [
        term,
      ];
}

/// (([ProductWatcherEventCategoryChosen] : [ProductWatcherEvent]) categoryChosen){[Category] category}
///
/// with data equality
class ProductWatcherEventCategoryChosen extends ProductWatcherEvent
    with EquatableMixin {
  const ProductWatcherEventCategoryChosen({
    required this.category,
  }) : super._internal();

  final Category category;

  @override
  String toString() =>
      'ProductWatcherEvent.categoryChosen(category: $category)';

  @override
  List<Object?> get props => [
        category,
      ];
}

/// (([ProductWatcherEventGetNextPage] : [ProductWatcherEvent]) getNextPage){}
///
/// with data equality
class ProductWatcherEventGetNextPage extends ProductWatcherEvent
    with EquatableMixin {
  const ProductWatcherEventGetNextPage() : super._internal();

  @override
  String toString() => 'ProductWatcherEvent.getNextPage()';

  @override
  List<Object?> get props => [];
}

/// (([ProductWatcherEventInitialize] : [ProductWatcherEvent]) initialize){[Shop] shop}
///
/// with data equality
class ProductWatcherEventInitialize extends ProductWatcherEvent
    with EquatableMixin {
  const ProductWatcherEventInitialize({
    required this.shop,
  }) : super._internal();

  final Shop shop;

  @override
  String toString() => 'ProductWatcherEvent.initialize(shop: $shop)';

  @override
  List<Object?> get props => [
        shop,
      ];
}

/// (([ProductWatcherEventClearCategoryAndProducts] : [ProductWatcherEvent]) clearCategoryAndProducts){}
///
/// with data equality
class ProductWatcherEventClearCategoryAndProducts extends ProductWatcherEvent
    with EquatableMixin {
  const ProductWatcherEventClearCategoryAndProducts() : super._internal();

  @override
  String toString() => 'ProductWatcherEvent.clearCategoryAndProducts()';

  @override
  List<Object?> get props => [];
}

/// (([ProductWatcherEventWatchAllProductsSelected] : [ProductWatcherEvent]) watchAllProductsSelected){}
///
/// with data equality
class ProductWatcherEventWatchAllProductsSelected extends ProductWatcherEvent
    with EquatableMixin {
  const ProductWatcherEventWatchAllProductsSelected() : super._internal();

  @override
  String toString() => 'ProductWatcherEvent.watchAllProductsSelected()';

  @override
  List<Object?> get props => [];
}
