// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_watcher_bloc.dart';

// **************************************************************************
// Generator: sealed_generators
// **************************************************************************

/// [ProductWatcherEvent] {
///
/// ([ProductWatcherEventSearchForProduct] searchForProduct){[String] term, [Category]? category} with data equality
///
/// ([ProductWatcherEventShowByCategory] showByCategory){[Category] category} with data equality
///
/// ([ProductWatcherEventGetNextPage] getNextPage){} with data equality
///
/// }
@SealedManifest(_ProductWatcherEvent)
abstract class ProductWatcherEvent {
  const ProductWatcherEvent._internal();

  const factory ProductWatcherEvent.searchForProduct({
    required String term,
    Category? category,
  }) = ProductWatcherEventSearchForProduct;

  const factory ProductWatcherEvent.showByCategory({
    required Category category,
  }) = ProductWatcherEventShowByCategory;

  const factory ProductWatcherEvent.getNextPage() =
      ProductWatcherEventGetNextPage;

  bool get isSearchForProduct => this is ProductWatcherEventSearchForProduct;

  bool get isShowByCategory => this is ProductWatcherEventShowByCategory;

  bool get isGetNextPage => this is ProductWatcherEventGetNextPage;

  ProductWatcherEventSearchForProduct get asSearchForProduct =>
      this as ProductWatcherEventSearchForProduct;

  ProductWatcherEventShowByCategory get asShowByCategory =>
      this as ProductWatcherEventShowByCategory;

  ProductWatcherEventGetNextPage get asGetNextPage =>
      this as ProductWatcherEventGetNextPage;

  ProductWatcherEventSearchForProduct? get asSearchForProductOrNull {
    final productWatcherEvent = this;
    return productWatcherEvent is ProductWatcherEventSearchForProduct
        ? productWatcherEvent
        : null;
  }

  ProductWatcherEventShowByCategory? get asShowByCategoryOrNull {
    final productWatcherEvent = this;
    return productWatcherEvent is ProductWatcherEventShowByCategory
        ? productWatcherEvent
        : null;
  }

  ProductWatcherEventGetNextPage? get asGetNextPageOrNull {
    final productWatcherEvent = this;
    return productWatcherEvent is ProductWatcherEventGetNextPage
        ? productWatcherEvent
        : null;
  }

  R when<R extends Object?>({
    required R Function(String term, Category? category) searchForProduct,
    required R Function(Category category) showByCategory,
    required R Function() getNextPage,
  }) {
    final productWatcherEvent = this;
    if (productWatcherEvent is ProductWatcherEventSearchForProduct) {
      return searchForProduct(
          productWatcherEvent.term, productWatcherEvent.category);
    } else if (productWatcherEvent is ProductWatcherEventShowByCategory) {
      return showByCategory(productWatcherEvent.category);
    } else if (productWatcherEvent is ProductWatcherEventGetNextPage) {
      return getNextPage();
    } else {
      throw AssertionError();
    }
  }

  R maybeWhen<R extends Object?>({
    R Function(String term, Category? category)? searchForProduct,
    R Function(Category category)? showByCategory,
    R Function()? getNextPage,
    required R Function(ProductWatcherEvent productWatcherEvent) orElse,
  }) {
    final productWatcherEvent = this;
    if (productWatcherEvent is ProductWatcherEventSearchForProduct) {
      return searchForProduct != null
          ? searchForProduct(
              productWatcherEvent.term, productWatcherEvent.category)
          : orElse(productWatcherEvent);
    } else if (productWatcherEvent is ProductWatcherEventShowByCategory) {
      return showByCategory != null
          ? showByCategory(productWatcherEvent.category)
          : orElse(productWatcherEvent);
    } else if (productWatcherEvent is ProductWatcherEventGetNextPage) {
      return getNextPage != null ? getNextPage() : orElse(productWatcherEvent);
    } else {
      throw AssertionError();
    }
  }

  @Deprecated('Use `whenOrNull` instead. Will be removed by next release.')
  void partialWhen({
    void Function(String term, Category? category)? searchForProduct,
    void Function(Category category)? showByCategory,
    void Function()? getNextPage,
    void Function(ProductWatcherEvent productWatcherEvent)? orElse,
  }) {
    final productWatcherEvent = this;
    if (productWatcherEvent is ProductWatcherEventSearchForProduct) {
      if (searchForProduct != null) {
        searchForProduct(
            productWatcherEvent.term, productWatcherEvent.category);
      } else if (orElse != null) {
        orElse(productWatcherEvent);
      }
    } else if (productWatcherEvent is ProductWatcherEventShowByCategory) {
      if (showByCategory != null) {
        showByCategory(productWatcherEvent.category);
      } else if (orElse != null) {
        orElse(productWatcherEvent);
      }
    } else if (productWatcherEvent is ProductWatcherEventGetNextPage) {
      if (getNextPage != null) {
        getNextPage();
      } else if (orElse != null) {
        orElse(productWatcherEvent);
      }
    } else {
      throw AssertionError();
    }
  }

  R? whenOrNull<R extends Object?>({
    R Function(String term, Category? category)? searchForProduct,
    R Function(Category category)? showByCategory,
    R Function()? getNextPage,
    R Function(ProductWatcherEvent productWatcherEvent)? orElse,
  }) {
    final productWatcherEvent = this;
    if (productWatcherEvent is ProductWatcherEventSearchForProduct) {
      return searchForProduct != null
          ? searchForProduct(
              productWatcherEvent.term, productWatcherEvent.category)
          : orElse?.call(productWatcherEvent);
    } else if (productWatcherEvent is ProductWatcherEventShowByCategory) {
      return showByCategory != null
          ? showByCategory(productWatcherEvent.category)
          : orElse?.call(productWatcherEvent);
    } else if (productWatcherEvent is ProductWatcherEventGetNextPage) {
      return getNextPage != null
          ? getNextPage()
          : orElse?.call(productWatcherEvent);
    } else {
      throw AssertionError();
    }
  }

  R map<R extends Object?>({
    required R Function(ProductWatcherEventSearchForProduct searchForProduct)
        searchForProduct,
    required R Function(ProductWatcherEventShowByCategory showByCategory)
        showByCategory,
    required R Function(ProductWatcherEventGetNextPage getNextPage) getNextPage,
  }) {
    final productWatcherEvent = this;
    if (productWatcherEvent is ProductWatcherEventSearchForProduct) {
      return searchForProduct(productWatcherEvent);
    } else if (productWatcherEvent is ProductWatcherEventShowByCategory) {
      return showByCategory(productWatcherEvent);
    } else if (productWatcherEvent is ProductWatcherEventGetNextPage) {
      return getNextPage(productWatcherEvent);
    } else {
      throw AssertionError();
    }
  }

  R maybeMap<R extends Object?>({
    R Function(ProductWatcherEventSearchForProduct searchForProduct)?
        searchForProduct,
    R Function(ProductWatcherEventShowByCategory showByCategory)?
        showByCategory,
    R Function(ProductWatcherEventGetNextPage getNextPage)? getNextPage,
    required R Function(ProductWatcherEvent productWatcherEvent) orElse,
  }) {
    final productWatcherEvent = this;
    if (productWatcherEvent is ProductWatcherEventSearchForProduct) {
      return searchForProduct != null
          ? searchForProduct(productWatcherEvent)
          : orElse(productWatcherEvent);
    } else if (productWatcherEvent is ProductWatcherEventShowByCategory) {
      return showByCategory != null
          ? showByCategory(productWatcherEvent)
          : orElse(productWatcherEvent);
    } else if (productWatcherEvent is ProductWatcherEventGetNextPage) {
      return getNextPage != null
          ? getNextPage(productWatcherEvent)
          : orElse(productWatcherEvent);
    } else {
      throw AssertionError();
    }
  }

  @Deprecated('Use `mapOrNull` instead. Will be removed by next release.')
  void partialMap({
    void Function(ProductWatcherEventSearchForProduct searchForProduct)?
        searchForProduct,
    void Function(ProductWatcherEventShowByCategory showByCategory)?
        showByCategory,
    void Function(ProductWatcherEventGetNextPage getNextPage)? getNextPage,
    void Function(ProductWatcherEvent productWatcherEvent)? orElse,
  }) {
    final productWatcherEvent = this;
    if (productWatcherEvent is ProductWatcherEventSearchForProduct) {
      if (searchForProduct != null) {
        searchForProduct(productWatcherEvent);
      } else if (orElse != null) {
        orElse(productWatcherEvent);
      }
    } else if (productWatcherEvent is ProductWatcherEventShowByCategory) {
      if (showByCategory != null) {
        showByCategory(productWatcherEvent);
      } else if (orElse != null) {
        orElse(productWatcherEvent);
      }
    } else if (productWatcherEvent is ProductWatcherEventGetNextPage) {
      if (getNextPage != null) {
        getNextPage(productWatcherEvent);
      } else if (orElse != null) {
        orElse(productWatcherEvent);
      }
    } else {
      throw AssertionError();
    }
  }

  R? mapOrNull<R extends Object?>({
    R Function(ProductWatcherEventSearchForProduct searchForProduct)?
        searchForProduct,
    R Function(ProductWatcherEventShowByCategory showByCategory)?
        showByCategory,
    R Function(ProductWatcherEventGetNextPage getNextPage)? getNextPage,
    R Function(ProductWatcherEvent productWatcherEvent)? orElse,
  }) {
    final productWatcherEvent = this;
    if (productWatcherEvent is ProductWatcherEventSearchForProduct) {
      return searchForProduct != null
          ? searchForProduct(productWatcherEvent)
          : orElse?.call(productWatcherEvent);
    } else if (productWatcherEvent is ProductWatcherEventShowByCategory) {
      return showByCategory != null
          ? showByCategory(productWatcherEvent)
          : orElse?.call(productWatcherEvent);
    } else if (productWatcherEvent is ProductWatcherEventGetNextPage) {
      return getNextPage != null
          ? getNextPage(productWatcherEvent)
          : orElse?.call(productWatcherEvent);
    } else {
      throw AssertionError();
    }
  }
}

/// (([ProductWatcherEventSearchForProduct] : [ProductWatcherEvent]) searchForProduct){[String] term, [Category]? category}
///
/// with data equality
class ProductWatcherEventSearchForProduct extends ProductWatcherEvent
    with EquatableMixin {
  const ProductWatcherEventSearchForProduct({
    required this.term,
    this.category,
  }) : super._internal();

  final String term;
  final Category? category;

  @override
  String toString() =>
      'ProductWatcherEvent.searchForProduct(term: $term, category: $category)';

  @override
  List<Object?> get props => [
        term,
        category,
      ];
}

/// (([ProductWatcherEventShowByCategory] : [ProductWatcherEvent]) showByCategory){[Category] category}
///
/// with data equality
class ProductWatcherEventShowByCategory extends ProductWatcherEvent
    with EquatableMixin {
  const ProductWatcherEventShowByCategory({
    required this.category,
  }) : super._internal();

  final Category category;

  @override
  String toString() =>
      'ProductWatcherEvent.showByCategory(category: $category)';

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

/// [ProductWatcherState] {
///
/// ([ProductWatcherStateInitial] initial){[Shop] shop} with data equality
///
/// ([ProductWatcherStateLoading] loading){} with data equality
///
/// ([ProductWatcherStateLoaded] loaded){[Shop] shop, [Category] category, [KtList<PricedProduct>] products, [int] currentPage} with data equality
///
/// ([ProductWatcherStateError] error){[ProductFailure] failure} with data equality
///
/// }
@SealedManifest(_ProductWatcherState)
abstract class ProductWatcherState {
  const ProductWatcherState._internal();

  const factory ProductWatcherState.initial({
    required Shop shop,
  }) = ProductWatcherStateInitial;

  const factory ProductWatcherState.loading() = ProductWatcherStateLoading;

  const factory ProductWatcherState.loaded({
    required Shop shop,
    required Category category,
    required KtList<PricedProduct> products,
    required int currentPage,
  }) = ProductWatcherStateLoaded;

  const factory ProductWatcherState.error({
    required ProductFailure failure,
  }) = ProductWatcherStateError;

  bool get isInitial => this is ProductWatcherStateInitial;

  bool get isLoading => this is ProductWatcherStateLoading;

  bool get isLoaded => this is ProductWatcherStateLoaded;

  bool get isError => this is ProductWatcherStateError;

  ProductWatcherStateInitial get asInitial =>
      this as ProductWatcherStateInitial;

  ProductWatcherStateLoading get asLoading =>
      this as ProductWatcherStateLoading;

  ProductWatcherStateLoaded get asLoaded => this as ProductWatcherStateLoaded;

  ProductWatcherStateError get asError => this as ProductWatcherStateError;

  ProductWatcherStateInitial? get asInitialOrNull {
    final productWatcherState = this;
    return productWatcherState is ProductWatcherStateInitial
        ? productWatcherState
        : null;
  }

  ProductWatcherStateLoading? get asLoadingOrNull {
    final productWatcherState = this;
    return productWatcherState is ProductWatcherStateLoading
        ? productWatcherState
        : null;
  }

  ProductWatcherStateLoaded? get asLoadedOrNull {
    final productWatcherState = this;
    return productWatcherState is ProductWatcherStateLoaded
        ? productWatcherState
        : null;
  }

  ProductWatcherStateError? get asErrorOrNull {
    final productWatcherState = this;
    return productWatcherState is ProductWatcherStateError
        ? productWatcherState
        : null;
  }

  R when<R extends Object?>({
    required R Function(Shop shop) initial,
    required R Function() loading,
    required R Function(Shop shop, Category category,
            KtList<PricedProduct> products, int currentPage)
        loaded,
    required R Function(ProductFailure failure) error,
  }) {
    final productWatcherState = this;
    if (productWatcherState is ProductWatcherStateInitial) {
      return initial(productWatcherState.shop);
    } else if (productWatcherState is ProductWatcherStateLoading) {
      return loading();
    } else if (productWatcherState is ProductWatcherStateLoaded) {
      return loaded(productWatcherState.shop, productWatcherState.category,
          productWatcherState.products, productWatcherState.currentPage);
    } else if (productWatcherState is ProductWatcherStateError) {
      return error(productWatcherState.failure);
    } else {
      throw AssertionError();
    }
  }

  R maybeWhen<R extends Object?>({
    R Function(Shop shop)? initial,
    R Function()? loading,
    R Function(Shop shop, Category category, KtList<PricedProduct> products,
            int currentPage)?
        loaded,
    R Function(ProductFailure failure)? error,
    required R Function(ProductWatcherState productWatcherState) orElse,
  }) {
    final productWatcherState = this;
    if (productWatcherState is ProductWatcherStateInitial) {
      return initial != null
          ? initial(productWatcherState.shop)
          : orElse(productWatcherState);
    } else if (productWatcherState is ProductWatcherStateLoading) {
      return loading != null ? loading() : orElse(productWatcherState);
    } else if (productWatcherState is ProductWatcherStateLoaded) {
      return loaded != null
          ? loaded(productWatcherState.shop, productWatcherState.category,
              productWatcherState.products, productWatcherState.currentPage)
          : orElse(productWatcherState);
    } else if (productWatcherState is ProductWatcherStateError) {
      return error != null
          ? error(productWatcherState.failure)
          : orElse(productWatcherState);
    } else {
      throw AssertionError();
    }
  }

  @Deprecated('Use `whenOrNull` instead. Will be removed by next release.')
  void partialWhen({
    void Function(Shop shop)? initial,
    void Function()? loading,
    void Function(Shop shop, Category category, KtList<PricedProduct> products,
            int currentPage)?
        loaded,
    void Function(ProductFailure failure)? error,
    void Function(ProductWatcherState productWatcherState)? orElse,
  }) {
    final productWatcherState = this;
    if (productWatcherState is ProductWatcherStateInitial) {
      if (initial != null) {
        initial(productWatcherState.shop);
      } else if (orElse != null) {
        orElse(productWatcherState);
      }
    } else if (productWatcherState is ProductWatcherStateLoading) {
      if (loading != null) {
        loading();
      } else if (orElse != null) {
        orElse(productWatcherState);
      }
    } else if (productWatcherState is ProductWatcherStateLoaded) {
      if (loaded != null) {
        loaded(productWatcherState.shop, productWatcherState.category,
            productWatcherState.products, productWatcherState.currentPage);
      } else if (orElse != null) {
        orElse(productWatcherState);
      }
    } else if (productWatcherState is ProductWatcherStateError) {
      if (error != null) {
        error(productWatcherState.failure);
      } else if (orElse != null) {
        orElse(productWatcherState);
      }
    } else {
      throw AssertionError();
    }
  }

  R? whenOrNull<R extends Object?>({
    R Function(Shop shop)? initial,
    R Function()? loading,
    R Function(Shop shop, Category category, KtList<PricedProduct> products,
            int currentPage)?
        loaded,
    R Function(ProductFailure failure)? error,
    R Function(ProductWatcherState productWatcherState)? orElse,
  }) {
    final productWatcherState = this;
    if (productWatcherState is ProductWatcherStateInitial) {
      return initial != null
          ? initial(productWatcherState.shop)
          : orElse?.call(productWatcherState);
    } else if (productWatcherState is ProductWatcherStateLoading) {
      return loading != null ? loading() : orElse?.call(productWatcherState);
    } else if (productWatcherState is ProductWatcherStateLoaded) {
      return loaded != null
          ? loaded(productWatcherState.shop, productWatcherState.category,
              productWatcherState.products, productWatcherState.currentPage)
          : orElse?.call(productWatcherState);
    } else if (productWatcherState is ProductWatcherStateError) {
      return error != null
          ? error(productWatcherState.failure)
          : orElse?.call(productWatcherState);
    } else {
      throw AssertionError();
    }
  }

  R map<R extends Object?>({
    required R Function(ProductWatcherStateInitial initial) initial,
    required R Function(ProductWatcherStateLoading loading) loading,
    required R Function(ProductWatcherStateLoaded loaded) loaded,
    required R Function(ProductWatcherStateError error) error,
  }) {
    final productWatcherState = this;
    if (productWatcherState is ProductWatcherStateInitial) {
      return initial(productWatcherState);
    } else if (productWatcherState is ProductWatcherStateLoading) {
      return loading(productWatcherState);
    } else if (productWatcherState is ProductWatcherStateLoaded) {
      return loaded(productWatcherState);
    } else if (productWatcherState is ProductWatcherStateError) {
      return error(productWatcherState);
    } else {
      throw AssertionError();
    }
  }

  R maybeMap<R extends Object?>({
    R Function(ProductWatcherStateInitial initial)? initial,
    R Function(ProductWatcherStateLoading loading)? loading,
    R Function(ProductWatcherStateLoaded loaded)? loaded,
    R Function(ProductWatcherStateError error)? error,
    required R Function(ProductWatcherState productWatcherState) orElse,
  }) {
    final productWatcherState = this;
    if (productWatcherState is ProductWatcherStateInitial) {
      return initial != null
          ? initial(productWatcherState)
          : orElse(productWatcherState);
    } else if (productWatcherState is ProductWatcherStateLoading) {
      return loading != null
          ? loading(productWatcherState)
          : orElse(productWatcherState);
    } else if (productWatcherState is ProductWatcherStateLoaded) {
      return loaded != null
          ? loaded(productWatcherState)
          : orElse(productWatcherState);
    } else if (productWatcherState is ProductWatcherStateError) {
      return error != null
          ? error(productWatcherState)
          : orElse(productWatcherState);
    } else {
      throw AssertionError();
    }
  }

  @Deprecated('Use `mapOrNull` instead. Will be removed by next release.')
  void partialMap({
    void Function(ProductWatcherStateInitial initial)? initial,
    void Function(ProductWatcherStateLoading loading)? loading,
    void Function(ProductWatcherStateLoaded loaded)? loaded,
    void Function(ProductWatcherStateError error)? error,
    void Function(ProductWatcherState productWatcherState)? orElse,
  }) {
    final productWatcherState = this;
    if (productWatcherState is ProductWatcherStateInitial) {
      if (initial != null) {
        initial(productWatcherState);
      } else if (orElse != null) {
        orElse(productWatcherState);
      }
    } else if (productWatcherState is ProductWatcherStateLoading) {
      if (loading != null) {
        loading(productWatcherState);
      } else if (orElse != null) {
        orElse(productWatcherState);
      }
    } else if (productWatcherState is ProductWatcherStateLoaded) {
      if (loaded != null) {
        loaded(productWatcherState);
      } else if (orElse != null) {
        orElse(productWatcherState);
      }
    } else if (productWatcherState is ProductWatcherStateError) {
      if (error != null) {
        error(productWatcherState);
      } else if (orElse != null) {
        orElse(productWatcherState);
      }
    } else {
      throw AssertionError();
    }
  }

  R? mapOrNull<R extends Object?>({
    R Function(ProductWatcherStateInitial initial)? initial,
    R Function(ProductWatcherStateLoading loading)? loading,
    R Function(ProductWatcherStateLoaded loaded)? loaded,
    R Function(ProductWatcherStateError error)? error,
    R Function(ProductWatcherState productWatcherState)? orElse,
  }) {
    final productWatcherState = this;
    if (productWatcherState is ProductWatcherStateInitial) {
      return initial != null
          ? initial(productWatcherState)
          : orElse?.call(productWatcherState);
    } else if (productWatcherState is ProductWatcherStateLoading) {
      return loading != null
          ? loading(productWatcherState)
          : orElse?.call(productWatcherState);
    } else if (productWatcherState is ProductWatcherStateLoaded) {
      return loaded != null
          ? loaded(productWatcherState)
          : orElse?.call(productWatcherState);
    } else if (productWatcherState is ProductWatcherStateError) {
      return error != null
          ? error(productWatcherState)
          : orElse?.call(productWatcherState);
    } else {
      throw AssertionError();
    }
  }
}

/// (([ProductWatcherStateInitial] : [ProductWatcherState]) initial){[Shop] shop}
///
/// with data equality
class ProductWatcherStateInitial extends ProductWatcherState
    with EquatableMixin {
  const ProductWatcherStateInitial({
    required this.shop,
  }) : super._internal();

  final Shop shop;

  @override
  String toString() => 'ProductWatcherState.initial(shop: $shop)';

  @override
  List<Object?> get props => [
        shop,
      ];
}

/// (([ProductWatcherStateLoading] : [ProductWatcherState]) loading){}
///
/// with data equality
class ProductWatcherStateLoading extends ProductWatcherState
    with EquatableMixin {
  const ProductWatcherStateLoading() : super._internal();

  @override
  String toString() => 'ProductWatcherState.loading()';

  @override
  List<Object?> get props => [];
}

/// (([ProductWatcherStateLoaded] : [ProductWatcherState]) loaded){[Shop] shop, [Category] category, [KtList<PricedProduct>] products, [int] currentPage}
///
/// with data equality
class ProductWatcherStateLoaded extends ProductWatcherState
    with EquatableMixin {
  const ProductWatcherStateLoaded({
    required this.shop,
    required this.category,
    required this.products,
    required this.currentPage,
  }) : super._internal();

  final Shop shop;
  final Category category;
  final KtList<PricedProduct> products;
  final int currentPage;

  @override
  String toString() =>
      'ProductWatcherState.loaded(shop: $shop, category: $category, products: $products, currentPage: $currentPage)';

  @override
  List<Object?> get props => [
        shop,
        category,
        products,
        currentPage,
      ];
}

/// (([ProductWatcherStateError] : [ProductWatcherState]) error){[ProductFailure] failure}
///
/// with data equality
class ProductWatcherStateError extends ProductWatcherState with EquatableMixin {
  const ProductWatcherStateError({
    required this.failure,
  }) : super._internal();

  final ProductFailure failure;

  @override
  String toString() => 'ProductWatcherState.error(failure: $failure)';

  @override
  List<Object?> get props => [
        failure,
      ];
}
