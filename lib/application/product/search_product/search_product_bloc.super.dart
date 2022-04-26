// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_product_bloc.dart';

// **************************************************************************
// Generator: super_enum_sealed_generators
// **************************************************************************

// ignore_for_file: unused_element, unused_field

// Migration guide for SearchProductEvent:
// For migration to dart_sealed, uncomment
// following generated manifest code, then
// replace it with your super_enum manifest
// then add dependencies to sealed_annotations
// and sealed_generators, then import
// sealed_annotations instead of
// super_enum_sealed_annotations, then change
// part file name from *.super.dart to
// *.sealed.dart, then rerun the build_runner.
// When you are done with migrating all sealed
// classes to dart_sealed, you can remove
// super_enum_sealed_annotations and
// super_enum_sealed_generators dependencies.
//
// @Sealed()
// abstract class _SearchProductEvent
// {
// @WithEquality(Equality.data)
// @WithName('SearchForProduct')
// void searchForProduct(String barcode);
// }

/// [SearchProductEvent] {
///
/// ([SearchForProduct] searchForProduct){[String] barcode} with data equality
///
/// }
@immutable
abstract class SearchProductEvent {
  const SearchProductEvent._internal();

  const factory SearchProductEvent.searchForProduct({
    required String barcode,
  }) = SearchForProduct;

  bool isSearchForProduct() => this is SearchForProduct;

  SearchForProduct asSearchForProduct() => this as SearchForProduct;

  SearchForProduct? asSearchForProductOrNull() {
    final searchProductEvent = this;
    return searchProductEvent is SearchForProduct ? searchProductEvent : null;
  }

  R when<R extends Object?>({
    required R Function(SearchForProduct searchForProduct) searchForProduct,
  }) {
    final searchProductEvent = this;
    if (searchProductEvent is SearchForProduct) {
      return searchForProduct(searchProductEvent);
    } else {
      throw AssertionError();
    }
  }

  R whenOrElse<R extends Object?>({
    R Function(SearchForProduct searchForProduct)? searchForProduct,
    required R Function(SearchProductEvent searchProductEvent) orElse,
  }) {
    final searchProductEvent = this;
    if (searchProductEvent is SearchForProduct) {
      return searchForProduct != null
          ? searchForProduct(searchProductEvent)
          : orElse(searchProductEvent);
    } else {
      throw AssertionError();
    }
  }

  R whenOrDefault<R extends Object?>({
    R Function(SearchForProduct searchForProduct)? searchForProduct,
    required R orDefault,
  }) {
    final searchProductEvent = this;
    if (searchProductEvent is SearchForProduct) {
      return searchForProduct != null
          ? searchForProduct(searchProductEvent)
          : orDefault;
    } else {
      throw AssertionError();
    }
  }

  R? whenOrNull<R extends Object?>({
    R Function(SearchForProduct searchForProduct)? searchForProduct,
  }) {
    final searchProductEvent = this;
    if (searchProductEvent is SearchForProduct) {
      return searchForProduct?.call(searchProductEvent);
    } else {
      throw AssertionError();
    }
  }

  R whenOrThrow<R extends Object?>({
    R Function(SearchForProduct searchForProduct)? searchForProduct,
  }) {
    final searchProductEvent = this;
    if (searchProductEvent is SearchForProduct && searchForProduct != null) {
      return searchForProduct(searchProductEvent);
    } else {
      throw AssertionError();
    }
  }

  void whenPartial({
    void Function(SearchForProduct searchForProduct)? searchForProduct,
  }) {
    final searchProductEvent = this;
    if (searchProductEvent is SearchForProduct) {
      searchForProduct?.call(searchProductEvent);
    } else {
      throw AssertionError();
    }
  }
}

/// (([SearchForProduct] : [SearchProductEvent]) searchForProduct){[String] barcode}
///
/// with data equality
@immutable
class SearchForProduct extends SearchProductEvent with EquatableMixin {
  const SearchForProduct({
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

// ignore_for_file: unused_element, unused_field

// Migration guide for SearchProductState:
// For migration to dart_sealed, uncomment
// following generated manifest code, then
// replace it with your super_enum manifest
// then add dependencies to sealed_annotations
// and sealed_generators, then import
// sealed_annotations instead of
// super_enum_sealed_annotations, then change
// part file name from *.super.dart to
// *.sealed.dart, then rerun the build_runner.
// When you are done with migrating all sealed
// classes to dart_sealed, you can remove
// super_enum_sealed_annotations and
// super_enum_sealed_generators dependencies.
//
// @Sealed()
// abstract class _SearchProductState
// {
// @WithWrap()
// @WithEquality(Equality.data)
// @WithName('Initial')
// void initial();
//
// @WithWrap()
// @WithEquality(Equality.data)
// @WithName('Loading')
// void loading();
//
// @WithEquality(Equality.data)
// @WithName('Loaded')
// void loaded(Option<ProductFailure> failureOption, Option<Product> productOption, bool productExists);
// }

/// [SearchProductState] {
///
/// ([Initial] initial){} with data equality with wrap
///
/// ([Loading] loading){} with data equality with wrap
///
/// ([Loaded] loaded){[Option<ProductFailure>] failureOption, [Option<Product>] productOption, [bool] productExists} with data equality
///
/// }
@immutable
abstract class SearchProductState {
  const SearchProductState._internal();

  const factory SearchProductState.initial() = Initial;

  const factory SearchProductState.loading() = Loading;

  const factory SearchProductState.loaded({
    required Option<ProductFailure> failureOption,
    required Option<Product> productOption,
    required bool productExists,
  }) = Loaded;

  bool isInitial() => this is Initial;

  bool isLoading() => this is Loading;

  bool isLoaded() => this is Loaded;

  Initial asInitial() => this as Initial;

  Loading asLoading() => this as Loading;

  Loaded asLoaded() => this as Loaded;

  Initial? asInitialOrNull() {
    final searchProductState = this;
    return searchProductState is Initial ? searchProductState : null;
  }

  Loading? asLoadingOrNull() {
    final searchProductState = this;
    return searchProductState is Loading ? searchProductState : null;
  }

  Loaded? asLoadedOrNull() {
    final searchProductState = this;
    return searchProductState is Loaded ? searchProductState : null;
  }

  R when<R extends Object?>({
    required R Function() initial,
    required R Function() loading,
    required R Function(Loaded loaded) loaded,
  }) {
    final searchProductState = this;
    if (searchProductState is Initial) {
      return initial();
    } else if (searchProductState is Loading) {
      return loading();
    } else if (searchProductState is Loaded) {
      return loaded(searchProductState);
    } else {
      throw AssertionError();
    }
  }

  R whenOrElse<R extends Object?>({
    R Function()? initial,
    R Function()? loading,
    R Function(Loaded loaded)? loaded,
    required R Function(SearchProductState searchProductState) orElse,
  }) {
    final searchProductState = this;
    if (searchProductState is Initial) {
      return initial != null ? initial() : orElse(searchProductState);
    } else if (searchProductState is Loading) {
      return loading != null ? loading() : orElse(searchProductState);
    } else if (searchProductState is Loaded) {
      return loaded != null
          ? loaded(searchProductState)
          : orElse(searchProductState);
    } else {
      throw AssertionError();
    }
  }

  R whenOrDefault<R extends Object?>({
    R Function()? initial,
    R Function()? loading,
    R Function(Loaded loaded)? loaded,
    required R orDefault,
  }) {
    final searchProductState = this;
    if (searchProductState is Initial) {
      return initial != null ? initial() : orDefault;
    } else if (searchProductState is Loading) {
      return loading != null ? loading() : orDefault;
    } else if (searchProductState is Loaded) {
      return loaded != null ? loaded(searchProductState) : orDefault;
    } else {
      throw AssertionError();
    }
  }

  R? whenOrNull<R extends Object?>({
    R Function()? initial,
    R Function()? loading,
    R Function(Loaded loaded)? loaded,
  }) {
    final searchProductState = this;
    if (searchProductState is Initial) {
      return initial?.call();
    } else if (searchProductState is Loading) {
      return loading?.call();
    } else if (searchProductState is Loaded) {
      return loaded?.call(searchProductState);
    } else {
      throw AssertionError();
    }
  }

  R whenOrThrow<R extends Object?>({
    R Function()? initial,
    R Function()? loading,
    R Function(Loaded loaded)? loaded,
  }) {
    final searchProductState = this;
    if (searchProductState is Initial && initial != null) {
      return initial();
    } else if (searchProductState is Loading && loading != null) {
      return loading();
    } else if (searchProductState is Loaded && loaded != null) {
      return loaded(searchProductState);
    } else {
      throw AssertionError();
    }
  }

  void whenPartial({
    void Function()? initial,
    void Function()? loading,
    void Function(Loaded loaded)? loaded,
  }) {
    final searchProductState = this;
    if (searchProductState is Initial) {
      initial?.call();
    } else if (searchProductState is Loading) {
      loading?.call();
    } else if (searchProductState is Loaded) {
      loaded?.call(searchProductState);
    } else {
      throw AssertionError();
    }
  }
}

/// (([Initial] : [SearchProductState]) initial){}
///
/// with data equality
///
/// with wrap
@immutable
class Initial extends SearchProductState with EquatableMixin {
  const Initial() : super._internal();

  @override
  String toString() => 'SearchProductState.initial()';

  @override
  List<Object?> get props => [];
}

/// (([Loading] : [SearchProductState]) loading){}
///
/// with data equality
///
/// with wrap
@immutable
class Loading extends SearchProductState with EquatableMixin {
  const Loading() : super._internal();

  @override
  String toString() => 'SearchProductState.loading()';

  @override
  List<Object?> get props => [];
}

/// (([Loaded] : [SearchProductState]) loaded){[Option<ProductFailure>] failureOption, [Option<Product>] productOption, [bool] productExists}
///
/// with data equality
@immutable
class Loaded extends SearchProductState with EquatableMixin {
  const Loaded({
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
