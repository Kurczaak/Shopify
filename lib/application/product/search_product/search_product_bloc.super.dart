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
