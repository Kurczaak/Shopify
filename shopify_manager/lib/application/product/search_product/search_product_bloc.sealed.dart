// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_product_bloc.dart';

// **************************************************************************
// Generator: sealed_generators
// **************************************************************************

/// [SearchProductEvent] {
///
/// ([SearchProductEventSearchForProduct] searchForProduct){[String] barcode} with data equality
///
/// }
@SealedManifest(_SearchProductEvent)
abstract class SearchProductEvent {
  const SearchProductEvent._internal();

  const factory SearchProductEvent.searchForProduct({
    required String barcode,
  }) = SearchProductEventSearchForProduct;

  bool get isSearchForProduct => this is SearchProductEventSearchForProduct;

  SearchProductEventSearchForProduct get asSearchForProduct =>
      this as SearchProductEventSearchForProduct;

  SearchProductEventSearchForProduct? get asSearchForProductOrNull {
    final searchProductEvent = this;
    return searchProductEvent is SearchProductEventSearchForProduct
        ? searchProductEvent
        : null;
  }

  R when<R extends Object?>({
    required R Function(String barcode) searchForProduct,
  }) {
    final searchProductEvent = this;
    if (searchProductEvent is SearchProductEventSearchForProduct) {
      return searchForProduct(searchProductEvent.barcode);
    } else {
      throw AssertionError();
    }
  }

  R maybeWhen<R extends Object?>({
    R Function(String barcode)? searchForProduct,
    required R Function(SearchProductEvent searchProductEvent) orElse,
  }) {
    final searchProductEvent = this;
    if (searchProductEvent is SearchProductEventSearchForProduct) {
      return searchForProduct != null
          ? searchForProduct(searchProductEvent.barcode)
          : orElse(searchProductEvent);
    } else {
      throw AssertionError();
    }
  }

  @Deprecated('Use `whenOrNull` instead. Will be removed by next release.')
  void partialWhen({
    void Function(String barcode)? searchForProduct,
    void Function(SearchProductEvent searchProductEvent)? orElse,
  }) {
    final searchProductEvent = this;
    if (searchProductEvent is SearchProductEventSearchForProduct) {
      if (searchForProduct != null) {
        searchForProduct(searchProductEvent.barcode);
      } else if (orElse != null) {
        orElse(searchProductEvent);
      }
    } else {
      throw AssertionError();
    }
  }

  R? whenOrNull<R extends Object?>({
    R Function(String barcode)? searchForProduct,
    R Function(SearchProductEvent searchProductEvent)? orElse,
  }) {
    final searchProductEvent = this;
    if (searchProductEvent is SearchProductEventSearchForProduct) {
      return searchForProduct != null
          ? searchForProduct(searchProductEvent.barcode)
          : orElse?.call(searchProductEvent);
    } else {
      throw AssertionError();
    }
  }

  R map<R extends Object?>({
    required R Function(SearchProductEventSearchForProduct searchForProduct)
        searchForProduct,
  }) {
    final searchProductEvent = this;
    if (searchProductEvent is SearchProductEventSearchForProduct) {
      return searchForProduct(searchProductEvent);
    } else {
      throw AssertionError();
    }
  }

  R maybeMap<R extends Object?>({
    R Function(SearchProductEventSearchForProduct searchForProduct)?
        searchForProduct,
    required R Function(SearchProductEvent searchProductEvent) orElse,
  }) {
    final searchProductEvent = this;
    if (searchProductEvent is SearchProductEventSearchForProduct) {
      return searchForProduct != null
          ? searchForProduct(searchProductEvent)
          : orElse(searchProductEvent);
    } else {
      throw AssertionError();
    }
  }

  @Deprecated('Use `mapOrNull` instead. Will be removed by next release.')
  void partialMap({
    void Function(SearchProductEventSearchForProduct searchForProduct)?
        searchForProduct,
    void Function(SearchProductEvent searchProductEvent)? orElse,
  }) {
    final searchProductEvent = this;
    if (searchProductEvent is SearchProductEventSearchForProduct) {
      if (searchForProduct != null) {
        searchForProduct(searchProductEvent);
      } else if (orElse != null) {
        orElse(searchProductEvent);
      }
    } else {
      throw AssertionError();
    }
  }

  R? mapOrNull<R extends Object?>({
    R Function(SearchProductEventSearchForProduct searchForProduct)?
        searchForProduct,
    R Function(SearchProductEvent searchProductEvent)? orElse,
  }) {
    final searchProductEvent = this;
    if (searchProductEvent is SearchProductEventSearchForProduct) {
      return searchForProduct != null
          ? searchForProduct(searchProductEvent)
          : orElse?.call(searchProductEvent);
    } else {
      throw AssertionError();
    }
  }
}

/// (([SearchProductEventSearchForProduct] : [SearchProductEvent]) searchForProduct){[String] barcode}
///
/// with data equality
class SearchProductEventSearchForProduct extends SearchProductEvent
    with EquatableMixin {
  const SearchProductEventSearchForProduct({
    required this.barcode,
  }) : super._internal();

  final String barcode;

  @override
  String toString() => 'SearchProductEvent.searchForProduct(barcode: $barcode)';

  @override
  List<Object?> get props => [
        barcode,
      ];
}

/// [SearchProductState] {
///
/// ([SearchProductStateInitial] initial){} with data equality
///
/// ([SearchProductStateLoading] loading){} with data equality
///
/// ([SearchProductStateLoaded] loaded){[Option<ProductFailure>] failureOption, [Option<Product>] productOption, [bool] productExists} with data equality
///
/// }
@SealedManifest(_SearchProductState)
abstract class SearchProductState {
  const SearchProductState._internal();

  const factory SearchProductState.initial() = SearchProductStateInitial;

  const factory SearchProductState.loading() = SearchProductStateLoading;

  const factory SearchProductState.loaded({
    required Option<ProductFailure> failureOption,
    required Option<Product> productOption,
    required bool productExists,
  }) = SearchProductStateLoaded;

  bool get isInitial => this is SearchProductStateInitial;

  bool get isLoading => this is SearchProductStateLoading;

  bool get isLoaded => this is SearchProductStateLoaded;

  SearchProductStateInitial get asInitial => this as SearchProductStateInitial;

  SearchProductStateLoading get asLoading => this as SearchProductStateLoading;

  SearchProductStateLoaded get asLoaded => this as SearchProductStateLoaded;

  SearchProductStateInitial? get asInitialOrNull {
    final searchProductState = this;
    return searchProductState is SearchProductStateInitial
        ? searchProductState
        : null;
  }

  SearchProductStateLoading? get asLoadingOrNull {
    final searchProductState = this;
    return searchProductState is SearchProductStateLoading
        ? searchProductState
        : null;
  }

  SearchProductStateLoaded? get asLoadedOrNull {
    final searchProductState = this;
    return searchProductState is SearchProductStateLoaded
        ? searchProductState
        : null;
  }

  R when<R extends Object?>({
    required R Function() initial,
    required R Function() loading,
    required R Function(Option<ProductFailure> failureOption,
            Option<Product> productOption, bool productExists)
        loaded,
  }) {
    final searchProductState = this;
    if (searchProductState is SearchProductStateInitial) {
      return initial();
    } else if (searchProductState is SearchProductStateLoading) {
      return loading();
    } else if (searchProductState is SearchProductStateLoaded) {
      return loaded(searchProductState.failureOption,
          searchProductState.productOption, searchProductState.productExists);
    } else {
      throw AssertionError();
    }
  }

  R maybeWhen<R extends Object?>({
    R Function()? initial,
    R Function()? loading,
    R Function(Option<ProductFailure> failureOption,
            Option<Product> productOption, bool productExists)?
        loaded,
    required R Function(SearchProductState searchProductState) orElse,
  }) {
    final searchProductState = this;
    if (searchProductState is SearchProductStateInitial) {
      return initial != null ? initial() : orElse(searchProductState);
    } else if (searchProductState is SearchProductStateLoading) {
      return loading != null ? loading() : orElse(searchProductState);
    } else if (searchProductState is SearchProductStateLoaded) {
      return loaded != null
          ? loaded(
              searchProductState.failureOption,
              searchProductState.productOption,
              searchProductState.productExists)
          : orElse(searchProductState);
    } else {
      throw AssertionError();
    }
  }

  @Deprecated('Use `whenOrNull` instead. Will be removed by next release.')
  void partialWhen({
    void Function()? initial,
    void Function()? loading,
    void Function(Option<ProductFailure> failureOption,
            Option<Product> productOption, bool productExists)?
        loaded,
    void Function(SearchProductState searchProductState)? orElse,
  }) {
    final searchProductState = this;
    if (searchProductState is SearchProductStateInitial) {
      if (initial != null) {
        initial();
      } else if (orElse != null) {
        orElse(searchProductState);
      }
    } else if (searchProductState is SearchProductStateLoading) {
      if (loading != null) {
        loading();
      } else if (orElse != null) {
        orElse(searchProductState);
      }
    } else if (searchProductState is SearchProductStateLoaded) {
      if (loaded != null) {
        loaded(searchProductState.failureOption,
            searchProductState.productOption, searchProductState.productExists);
      } else if (orElse != null) {
        orElse(searchProductState);
      }
    } else {
      throw AssertionError();
    }
  }

  R? whenOrNull<R extends Object?>({
    R Function()? initial,
    R Function()? loading,
    R Function(Option<ProductFailure> failureOption,
            Option<Product> productOption, bool productExists)?
        loaded,
    R Function(SearchProductState searchProductState)? orElse,
  }) {
    final searchProductState = this;
    if (searchProductState is SearchProductStateInitial) {
      return initial != null ? initial() : orElse?.call(searchProductState);
    } else if (searchProductState is SearchProductStateLoading) {
      return loading != null ? loading() : orElse?.call(searchProductState);
    } else if (searchProductState is SearchProductStateLoaded) {
      return loaded != null
          ? loaded(
              searchProductState.failureOption,
              searchProductState.productOption,
              searchProductState.productExists)
          : orElse?.call(searchProductState);
    } else {
      throw AssertionError();
    }
  }

  R map<R extends Object?>({
    required R Function(SearchProductStateInitial initial) initial,
    required R Function(SearchProductStateLoading loading) loading,
    required R Function(SearchProductStateLoaded loaded) loaded,
  }) {
    final searchProductState = this;
    if (searchProductState is SearchProductStateInitial) {
      return initial(searchProductState);
    } else if (searchProductState is SearchProductStateLoading) {
      return loading(searchProductState);
    } else if (searchProductState is SearchProductStateLoaded) {
      return loaded(searchProductState);
    } else {
      throw AssertionError();
    }
  }

  R maybeMap<R extends Object?>({
    R Function(SearchProductStateInitial initial)? initial,
    R Function(SearchProductStateLoading loading)? loading,
    R Function(SearchProductStateLoaded loaded)? loaded,
    required R Function(SearchProductState searchProductState) orElse,
  }) {
    final searchProductState = this;
    if (searchProductState is SearchProductStateInitial) {
      return initial != null
          ? initial(searchProductState)
          : orElse(searchProductState);
    } else if (searchProductState is SearchProductStateLoading) {
      return loading != null
          ? loading(searchProductState)
          : orElse(searchProductState);
    } else if (searchProductState is SearchProductStateLoaded) {
      return loaded != null
          ? loaded(searchProductState)
          : orElse(searchProductState);
    } else {
      throw AssertionError();
    }
  }

  @Deprecated('Use `mapOrNull` instead. Will be removed by next release.')
  void partialMap({
    void Function(SearchProductStateInitial initial)? initial,
    void Function(SearchProductStateLoading loading)? loading,
    void Function(SearchProductStateLoaded loaded)? loaded,
    void Function(SearchProductState searchProductState)? orElse,
  }) {
    final searchProductState = this;
    if (searchProductState is SearchProductStateInitial) {
      if (initial != null) {
        initial(searchProductState);
      } else if (orElse != null) {
        orElse(searchProductState);
      }
    } else if (searchProductState is SearchProductStateLoading) {
      if (loading != null) {
        loading(searchProductState);
      } else if (orElse != null) {
        orElse(searchProductState);
      }
    } else if (searchProductState is SearchProductStateLoaded) {
      if (loaded != null) {
        loaded(searchProductState);
      } else if (orElse != null) {
        orElse(searchProductState);
      }
    } else {
      throw AssertionError();
    }
  }

  R? mapOrNull<R extends Object?>({
    R Function(SearchProductStateInitial initial)? initial,
    R Function(SearchProductStateLoading loading)? loading,
    R Function(SearchProductStateLoaded loaded)? loaded,
    R Function(SearchProductState searchProductState)? orElse,
  }) {
    final searchProductState = this;
    if (searchProductState is SearchProductStateInitial) {
      return initial != null
          ? initial(searchProductState)
          : orElse?.call(searchProductState);
    } else if (searchProductState is SearchProductStateLoading) {
      return loading != null
          ? loading(searchProductState)
          : orElse?.call(searchProductState);
    } else if (searchProductState is SearchProductStateLoaded) {
      return loaded != null
          ? loaded(searchProductState)
          : orElse?.call(searchProductState);
    } else {
      throw AssertionError();
    }
  }
}

/// (([SearchProductStateInitial] : [SearchProductState]) initial){}
///
/// with data equality
class SearchProductStateInitial extends SearchProductState with EquatableMixin {
  const SearchProductStateInitial() : super._internal();

  @override
  String toString() => 'SearchProductState.initial()';

  @override
  List<Object?> get props => [];
}

/// (([SearchProductStateLoading] : [SearchProductState]) loading){}
///
/// with data equality
class SearchProductStateLoading extends SearchProductState with EquatableMixin {
  const SearchProductStateLoading() : super._internal();

  @override
  String toString() => 'SearchProductState.loading()';

  @override
  List<Object?> get props => [];
}

/// (([SearchProductStateLoaded] : [SearchProductState]) loaded){[Option<ProductFailure>] failureOption, [Option<Product>] productOption, [bool] productExists}
///
/// with data equality
class SearchProductStateLoaded extends SearchProductState with EquatableMixin {
  const SearchProductStateLoaded({
    required this.failureOption,
    required this.productOption,
    required this.productExists,
  }) : super._internal();

  final Option<ProductFailure> failureOption;
  final Option<Product> productOption;
  final bool productExists;

  @override
  String toString() =>
      'SearchProductState.loaded(failureOption: $failureOption, productOption: $productOption, productExists: $productExists)';

  @override
  List<Object?> get props => [
        failureOption,
        productOption,
        productExists,
      ];
}
