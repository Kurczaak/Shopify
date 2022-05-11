// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_form_bloc.dart';

// **************************************************************************
// Generator: super_enum_sealed_generators
// **************************************************************************

// ignore_for_file: unused_element, unused_field

// Migration guide for ProductFormEvent:
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
// abstract class _ProductFormEvent
// {
// @WithEquality(Equality.data)
// @WithName('CategoryChanged')
// void categoryChanged(Categories category);
//
// @WithEquality(Equality.data)
// @WithName('ProductNameChanged')
// void productNameChanged(String productName);
//
// @WithEquality(Equality.data)
// @WithName('BrandNameChanged')
// void brandNameChanged(String brandName);
//
// @WithEquality(Equality.data)
// @WithName('WeightNumberChanged')
// void weightNumberChanged(String weightNumber);
//
// @WithEquality(Equality.data)
// @WithName('WeightUnitChanged')
// void weightUnitChanged(WeightUnits weightUnit);
//
// @WithEquality(Equality.data)
// @WithName('PriceChanged')
// void priceChanged(String price);
//
// @WithEquality(Equality.data)
// @WithName('CurrencyChanged')
// void currencyChanged(Currencies currency);
//
// @WithEquality(Equality.data)
// @WithName('ProductDescriptionChanged')
// void productDescriptionChanged(String productDescription);
//
// @WithEquality(Equality.data)
// @WithName('IngredientsChanged')
// void ingredientsChanged(String ingredients);
//
// @WithWrap()
// @WithEquality(Equality.data)
// @WithName('PhotosFilesChanged')
// void photosFilesChanged();
//
// @WithEquality(Equality.data)
// @WithName('ProductFound')
// void productFound(Product product);
//
// @WithWrap()
// @WithEquality(Equality.data)
// @WithName('Saved')
// void saved();
// }

/// [ProductFormEvent] {
///
/// ([CategoryChanged] categoryChanged){[Categories] category} with data equality
///
/// ([ProductNameChanged] productNameChanged){[String] productName} with data equality
///
/// ([BrandNameChanged] brandNameChanged){[String] brandName} with data equality
///
/// ([WeightNumberChanged] weightNumberChanged){[String] weightNumber} with data equality
///
/// ([WeightUnitChanged] weightUnitChanged){[WeightUnits] weightUnit} with data equality
///
/// ([PriceChanged] priceChanged){[String] price} with data equality
///
/// ([CurrencyChanged] currencyChanged){[Currencies] currency} with data equality
///
/// ([ProductDescriptionChanged] productDescriptionChanged){[String] productDescription} with data equality
///
/// ([IngredientsChanged] ingredientsChanged){[String] ingredients} with data equality
///
/// ([PhotosFilesChanged] photosFilesChanged){} with data equality with wrap
///
/// ([ProductFound] productFound){[Product] product} with data equality
///
/// ([Saved] saved){} with data equality with wrap
///
/// }
@immutable
abstract class ProductFormEvent {
  const ProductFormEvent._internal();

  const factory ProductFormEvent.categoryChanged({
    required Categories category,
  }) = CategoryChanged;

  const factory ProductFormEvent.productNameChanged({
    required String productName,
  }) = ProductNameChanged;

  const factory ProductFormEvent.brandNameChanged({
    required String brandName,
  }) = BrandNameChanged;

  const factory ProductFormEvent.weightNumberChanged({
    required String weightNumber,
  }) = WeightNumberChanged;

  const factory ProductFormEvent.weightUnitChanged({
    required WeightUnits weightUnit,
  }) = WeightUnitChanged;

  const factory ProductFormEvent.priceChanged({
    required String price,
  }) = PriceChanged;

  const factory ProductFormEvent.currencyChanged({
    required Currencies currency,
  }) = CurrencyChanged;

  const factory ProductFormEvent.productDescriptionChanged({
    required String productDescription,
  }) = ProductDescriptionChanged;

  const factory ProductFormEvent.ingredientsChanged({
    required String ingredients,
  }) = IngredientsChanged;

  const factory ProductFormEvent.photosFilesChanged() = PhotosFilesChanged;

  const factory ProductFormEvent.productFound({
    required Product product,
  }) = ProductFound;

  const factory ProductFormEvent.saved() = Saved;

  bool isCategoryChanged() => this is CategoryChanged;

  bool isProductNameChanged() => this is ProductNameChanged;

  bool isBrandNameChanged() => this is BrandNameChanged;

  bool isWeightNumberChanged() => this is WeightNumberChanged;

  bool isWeightUnitChanged() => this is WeightUnitChanged;

  bool isPriceChanged() => this is PriceChanged;

  bool isCurrencyChanged() => this is CurrencyChanged;

  bool isProductDescriptionChanged() => this is ProductDescriptionChanged;

  bool isIngredientsChanged() => this is IngredientsChanged;

  bool isPhotosFilesChanged() => this is PhotosFilesChanged;

  bool isProductFound() => this is ProductFound;

  bool isSaved() => this is Saved;

  CategoryChanged asCategoryChanged() => this as CategoryChanged;

  ProductNameChanged asProductNameChanged() => this as ProductNameChanged;

  BrandNameChanged asBrandNameChanged() => this as BrandNameChanged;

  WeightNumberChanged asWeightNumberChanged() => this as WeightNumberChanged;

  WeightUnitChanged asWeightUnitChanged() => this as WeightUnitChanged;

  PriceChanged asPriceChanged() => this as PriceChanged;

  CurrencyChanged asCurrencyChanged() => this as CurrencyChanged;

  ProductDescriptionChanged asProductDescriptionChanged() =>
      this as ProductDescriptionChanged;

  IngredientsChanged asIngredientsChanged() => this as IngredientsChanged;

  PhotosFilesChanged asPhotosFilesChanged() => this as PhotosFilesChanged;

  ProductFound asProductFound() => this as ProductFound;

  Saved asSaved() => this as Saved;

  CategoryChanged? asCategoryChangedOrNull() {
    final productFormEvent = this;
    return productFormEvent is CategoryChanged ? productFormEvent : null;
  }

  ProductNameChanged? asProductNameChangedOrNull() {
    final productFormEvent = this;
    return productFormEvent is ProductNameChanged ? productFormEvent : null;
  }

  BrandNameChanged? asBrandNameChangedOrNull() {
    final productFormEvent = this;
    return productFormEvent is BrandNameChanged ? productFormEvent : null;
  }

  WeightNumberChanged? asWeightNumberChangedOrNull() {
    final productFormEvent = this;
    return productFormEvent is WeightNumberChanged ? productFormEvent : null;
  }

  WeightUnitChanged? asWeightUnitChangedOrNull() {
    final productFormEvent = this;
    return productFormEvent is WeightUnitChanged ? productFormEvent : null;
  }

  PriceChanged? asPriceChangedOrNull() {
    final productFormEvent = this;
    return productFormEvent is PriceChanged ? productFormEvent : null;
  }

  CurrencyChanged? asCurrencyChangedOrNull() {
    final productFormEvent = this;
    return productFormEvent is CurrencyChanged ? productFormEvent : null;
  }

  ProductDescriptionChanged? asProductDescriptionChangedOrNull() {
    final productFormEvent = this;
    return productFormEvent is ProductDescriptionChanged
        ? productFormEvent
        : null;
  }

  IngredientsChanged? asIngredientsChangedOrNull() {
    final productFormEvent = this;
    return productFormEvent is IngredientsChanged ? productFormEvent : null;
  }

  PhotosFilesChanged? asPhotosFilesChangedOrNull() {
    final productFormEvent = this;
    return productFormEvent is PhotosFilesChanged ? productFormEvent : null;
  }

  ProductFound? asProductFoundOrNull() {
    final productFormEvent = this;
    return productFormEvent is ProductFound ? productFormEvent : null;
  }

  Saved? asSavedOrNull() {
    final productFormEvent = this;
    return productFormEvent is Saved ? productFormEvent : null;
  }

  R when<R extends Object?>({
    required R Function(CategoryChanged categoryChanged) categoryChanged,
    required R Function(ProductNameChanged productNameChanged)
        productNameChanged,
    required R Function(BrandNameChanged brandNameChanged) brandNameChanged,
    required R Function(WeightNumberChanged weightNumberChanged)
        weightNumberChanged,
    required R Function(WeightUnitChanged weightUnitChanged) weightUnitChanged,
    required R Function(PriceChanged priceChanged) priceChanged,
    required R Function(CurrencyChanged currencyChanged) currencyChanged,
    required R Function(ProductDescriptionChanged productDescriptionChanged)
        productDescriptionChanged,
    required R Function(IngredientsChanged ingredientsChanged)
        ingredientsChanged,
    required R Function() photosFilesChanged,
    required R Function(ProductFound productFound) productFound,
    required R Function() saved,
  }) {
    final productFormEvent = this;
    if (productFormEvent is CategoryChanged) {
      return categoryChanged(productFormEvent);
    } else if (productFormEvent is ProductNameChanged) {
      return productNameChanged(productFormEvent);
    } else if (productFormEvent is BrandNameChanged) {
      return brandNameChanged(productFormEvent);
    } else if (productFormEvent is WeightNumberChanged) {
      return weightNumberChanged(productFormEvent);
    } else if (productFormEvent is WeightUnitChanged) {
      return weightUnitChanged(productFormEvent);
    } else if (productFormEvent is PriceChanged) {
      return priceChanged(productFormEvent);
    } else if (productFormEvent is CurrencyChanged) {
      return currencyChanged(productFormEvent);
    } else if (productFormEvent is ProductDescriptionChanged) {
      return productDescriptionChanged(productFormEvent);
    } else if (productFormEvent is IngredientsChanged) {
      return ingredientsChanged(productFormEvent);
    } else if (productFormEvent is PhotosFilesChanged) {
      return photosFilesChanged();
    } else if (productFormEvent is ProductFound) {
      return productFound(productFormEvent);
    } else if (productFormEvent is Saved) {
      return saved();
    } else {
      throw AssertionError();
    }
  }

  R whenOrElse<R extends Object?>({
    R Function(CategoryChanged categoryChanged)? categoryChanged,
    R Function(ProductNameChanged productNameChanged)? productNameChanged,
    R Function(BrandNameChanged brandNameChanged)? brandNameChanged,
    R Function(WeightNumberChanged weightNumberChanged)? weightNumberChanged,
    R Function(WeightUnitChanged weightUnitChanged)? weightUnitChanged,
    R Function(PriceChanged priceChanged)? priceChanged,
    R Function(CurrencyChanged currencyChanged)? currencyChanged,
    R Function(ProductDescriptionChanged productDescriptionChanged)?
        productDescriptionChanged,
    R Function(IngredientsChanged ingredientsChanged)? ingredientsChanged,
    R Function()? photosFilesChanged,
    R Function(ProductFound productFound)? productFound,
    R Function()? saved,
    required R Function(ProductFormEvent productFormEvent) orElse,
  }) {
    final productFormEvent = this;
    if (productFormEvent is CategoryChanged) {
      return categoryChanged != null
          ? categoryChanged(productFormEvent)
          : orElse(productFormEvent);
    } else if (productFormEvent is ProductNameChanged) {
      return productNameChanged != null
          ? productNameChanged(productFormEvent)
          : orElse(productFormEvent);
    } else if (productFormEvent is BrandNameChanged) {
      return brandNameChanged != null
          ? brandNameChanged(productFormEvent)
          : orElse(productFormEvent);
    } else if (productFormEvent is WeightNumberChanged) {
      return weightNumberChanged != null
          ? weightNumberChanged(productFormEvent)
          : orElse(productFormEvent);
    } else if (productFormEvent is WeightUnitChanged) {
      return weightUnitChanged != null
          ? weightUnitChanged(productFormEvent)
          : orElse(productFormEvent);
    } else if (productFormEvent is PriceChanged) {
      return priceChanged != null
          ? priceChanged(productFormEvent)
          : orElse(productFormEvent);
    } else if (productFormEvent is CurrencyChanged) {
      return currencyChanged != null
          ? currencyChanged(productFormEvent)
          : orElse(productFormEvent);
    } else if (productFormEvent is ProductDescriptionChanged) {
      return productDescriptionChanged != null
          ? productDescriptionChanged(productFormEvent)
          : orElse(productFormEvent);
    } else if (productFormEvent is IngredientsChanged) {
      return ingredientsChanged != null
          ? ingredientsChanged(productFormEvent)
          : orElse(productFormEvent);
    } else if (productFormEvent is PhotosFilesChanged) {
      return photosFilesChanged != null
          ? photosFilesChanged()
          : orElse(productFormEvent);
    } else if (productFormEvent is ProductFound) {
      return productFound != null
          ? productFound(productFormEvent)
          : orElse(productFormEvent);
    } else if (productFormEvent is Saved) {
      return saved != null ? saved() : orElse(productFormEvent);
    } else {
      throw AssertionError();
    }
  }

  R whenOrDefault<R extends Object?>({
    R Function(CategoryChanged categoryChanged)? categoryChanged,
    R Function(ProductNameChanged productNameChanged)? productNameChanged,
    R Function(BrandNameChanged brandNameChanged)? brandNameChanged,
    R Function(WeightNumberChanged weightNumberChanged)? weightNumberChanged,
    R Function(WeightUnitChanged weightUnitChanged)? weightUnitChanged,
    R Function(PriceChanged priceChanged)? priceChanged,
    R Function(CurrencyChanged currencyChanged)? currencyChanged,
    R Function(ProductDescriptionChanged productDescriptionChanged)?
        productDescriptionChanged,
    R Function(IngredientsChanged ingredientsChanged)? ingredientsChanged,
    R Function()? photosFilesChanged,
    R Function(ProductFound productFound)? productFound,
    R Function()? saved,
    required R orDefault,
  }) {
    final productFormEvent = this;
    if (productFormEvent is CategoryChanged) {
      return categoryChanged != null
          ? categoryChanged(productFormEvent)
          : orDefault;
    } else if (productFormEvent is ProductNameChanged) {
      return productNameChanged != null
          ? productNameChanged(productFormEvent)
          : orDefault;
    } else if (productFormEvent is BrandNameChanged) {
      return brandNameChanged != null
          ? brandNameChanged(productFormEvent)
          : orDefault;
    } else if (productFormEvent is WeightNumberChanged) {
      return weightNumberChanged != null
          ? weightNumberChanged(productFormEvent)
          : orDefault;
    } else if (productFormEvent is WeightUnitChanged) {
      return weightUnitChanged != null
          ? weightUnitChanged(productFormEvent)
          : orDefault;
    } else if (productFormEvent is PriceChanged) {
      return priceChanged != null ? priceChanged(productFormEvent) : orDefault;
    } else if (productFormEvent is CurrencyChanged) {
      return currencyChanged != null
          ? currencyChanged(productFormEvent)
          : orDefault;
    } else if (productFormEvent is ProductDescriptionChanged) {
      return productDescriptionChanged != null
          ? productDescriptionChanged(productFormEvent)
          : orDefault;
    } else if (productFormEvent is IngredientsChanged) {
      return ingredientsChanged != null
          ? ingredientsChanged(productFormEvent)
          : orDefault;
    } else if (productFormEvent is PhotosFilesChanged) {
      return photosFilesChanged != null ? photosFilesChanged() : orDefault;
    } else if (productFormEvent is ProductFound) {
      return productFound != null ? productFound(productFormEvent) : orDefault;
    } else if (productFormEvent is Saved) {
      return saved != null ? saved() : orDefault;
    } else {
      throw AssertionError();
    }
  }

  R? whenOrNull<R extends Object?>({
    R Function(CategoryChanged categoryChanged)? categoryChanged,
    R Function(ProductNameChanged productNameChanged)? productNameChanged,
    R Function(BrandNameChanged brandNameChanged)? brandNameChanged,
    R Function(WeightNumberChanged weightNumberChanged)? weightNumberChanged,
    R Function(WeightUnitChanged weightUnitChanged)? weightUnitChanged,
    R Function(PriceChanged priceChanged)? priceChanged,
    R Function(CurrencyChanged currencyChanged)? currencyChanged,
    R Function(ProductDescriptionChanged productDescriptionChanged)?
        productDescriptionChanged,
    R Function(IngredientsChanged ingredientsChanged)? ingredientsChanged,
    R Function()? photosFilesChanged,
    R Function(ProductFound productFound)? productFound,
    R Function()? saved,
  }) {
    final productFormEvent = this;
    if (productFormEvent is CategoryChanged) {
      return categoryChanged?.call(productFormEvent);
    } else if (productFormEvent is ProductNameChanged) {
      return productNameChanged?.call(productFormEvent);
    } else if (productFormEvent is BrandNameChanged) {
      return brandNameChanged?.call(productFormEvent);
    } else if (productFormEvent is WeightNumberChanged) {
      return weightNumberChanged?.call(productFormEvent);
    } else if (productFormEvent is WeightUnitChanged) {
      return weightUnitChanged?.call(productFormEvent);
    } else if (productFormEvent is PriceChanged) {
      return priceChanged?.call(productFormEvent);
    } else if (productFormEvent is CurrencyChanged) {
      return currencyChanged?.call(productFormEvent);
    } else if (productFormEvent is ProductDescriptionChanged) {
      return productDescriptionChanged?.call(productFormEvent);
    } else if (productFormEvent is IngredientsChanged) {
      return ingredientsChanged?.call(productFormEvent);
    } else if (productFormEvent is PhotosFilesChanged) {
      return photosFilesChanged?.call();
    } else if (productFormEvent is ProductFound) {
      return productFound?.call(productFormEvent);
    } else if (productFormEvent is Saved) {
      return saved?.call();
    } else {
      throw AssertionError();
    }
  }

  R whenOrThrow<R extends Object?>({
    R Function(CategoryChanged categoryChanged)? categoryChanged,
    R Function(ProductNameChanged productNameChanged)? productNameChanged,
    R Function(BrandNameChanged brandNameChanged)? brandNameChanged,
    R Function(WeightNumberChanged weightNumberChanged)? weightNumberChanged,
    R Function(WeightUnitChanged weightUnitChanged)? weightUnitChanged,
    R Function(PriceChanged priceChanged)? priceChanged,
    R Function(CurrencyChanged currencyChanged)? currencyChanged,
    R Function(ProductDescriptionChanged productDescriptionChanged)?
        productDescriptionChanged,
    R Function(IngredientsChanged ingredientsChanged)? ingredientsChanged,
    R Function()? photosFilesChanged,
    R Function(ProductFound productFound)? productFound,
    R Function()? saved,
  }) {
    final productFormEvent = this;
    if (productFormEvent is CategoryChanged && categoryChanged != null) {
      return categoryChanged(productFormEvent);
    } else if (productFormEvent is ProductNameChanged &&
        productNameChanged != null) {
      return productNameChanged(productFormEvent);
    } else if (productFormEvent is BrandNameChanged &&
        brandNameChanged != null) {
      return brandNameChanged(productFormEvent);
    } else if (productFormEvent is WeightNumberChanged &&
        weightNumberChanged != null) {
      return weightNumberChanged(productFormEvent);
    } else if (productFormEvent is WeightUnitChanged &&
        weightUnitChanged != null) {
      return weightUnitChanged(productFormEvent);
    } else if (productFormEvent is PriceChanged && priceChanged != null) {
      return priceChanged(productFormEvent);
    } else if (productFormEvent is CurrencyChanged && currencyChanged != null) {
      return currencyChanged(productFormEvent);
    } else if (productFormEvent is ProductDescriptionChanged &&
        productDescriptionChanged != null) {
      return productDescriptionChanged(productFormEvent);
    } else if (productFormEvent is IngredientsChanged &&
        ingredientsChanged != null) {
      return ingredientsChanged(productFormEvent);
    } else if (productFormEvent is PhotosFilesChanged &&
        photosFilesChanged != null) {
      return photosFilesChanged();
    } else if (productFormEvent is ProductFound && productFound != null) {
      return productFound(productFormEvent);
    } else if (productFormEvent is Saved && saved != null) {
      return saved();
    } else {
      throw AssertionError();
    }
  }

  void whenPartial({
    void Function(CategoryChanged categoryChanged)? categoryChanged,
    void Function(ProductNameChanged productNameChanged)? productNameChanged,
    void Function(BrandNameChanged brandNameChanged)? brandNameChanged,
    void Function(WeightNumberChanged weightNumberChanged)? weightNumberChanged,
    void Function(WeightUnitChanged weightUnitChanged)? weightUnitChanged,
    void Function(PriceChanged priceChanged)? priceChanged,
    void Function(CurrencyChanged currencyChanged)? currencyChanged,
    void Function(ProductDescriptionChanged productDescriptionChanged)?
        productDescriptionChanged,
    void Function(IngredientsChanged ingredientsChanged)? ingredientsChanged,
    void Function()? photosFilesChanged,
    void Function(ProductFound productFound)? productFound,
    void Function()? saved,
  }) {
    final productFormEvent = this;
    if (productFormEvent is CategoryChanged) {
      categoryChanged?.call(productFormEvent);
    } else if (productFormEvent is ProductNameChanged) {
      productNameChanged?.call(productFormEvent);
    } else if (productFormEvent is BrandNameChanged) {
      brandNameChanged?.call(productFormEvent);
    } else if (productFormEvent is WeightNumberChanged) {
      weightNumberChanged?.call(productFormEvent);
    } else if (productFormEvent is WeightUnitChanged) {
      weightUnitChanged?.call(productFormEvent);
    } else if (productFormEvent is PriceChanged) {
      priceChanged?.call(productFormEvent);
    } else if (productFormEvent is CurrencyChanged) {
      currencyChanged?.call(productFormEvent);
    } else if (productFormEvent is ProductDescriptionChanged) {
      productDescriptionChanged?.call(productFormEvent);
    } else if (productFormEvent is IngredientsChanged) {
      ingredientsChanged?.call(productFormEvent);
    } else if (productFormEvent is PhotosFilesChanged) {
      photosFilesChanged?.call();
    } else if (productFormEvent is ProductFound) {
      productFound?.call(productFormEvent);
    } else if (productFormEvent is Saved) {
      saved?.call();
    } else {
      throw AssertionError();
    }
  }
}

/// (([CategoryChanged] : [ProductFormEvent]) categoryChanged){[Categories] category}
///
/// with data equality
@immutable
class CategoryChanged extends ProductFormEvent with EquatableMixin {
  const CategoryChanged({
    required this.category,
  }) : super._internal();

  final Categories category;

  @override
  String toString() => 'ProductFormEvent.categoryChanged(category: $category)';

  @override
  List<Object?> get props => [
        category,
      ];
}

/// (([ProductNameChanged] : [ProductFormEvent]) productNameChanged){[String] productName}
///
/// with data equality
@immutable
class ProductNameChanged extends ProductFormEvent with EquatableMixin {
  const ProductNameChanged({
    required this.productName,
  }) : super._internal();

  final String productName;

  @override
  String toString() =>
      'ProductFormEvent.productNameChanged(productName: $productName)';

  @override
  List<Object?> get props => [
        productName,
      ];
}

/// (([BrandNameChanged] : [ProductFormEvent]) brandNameChanged){[String] brandName}
///
/// with data equality
@immutable
class BrandNameChanged extends ProductFormEvent with EquatableMixin {
  const BrandNameChanged({
    required this.brandName,
  }) : super._internal();

  final String brandName;

  @override
  String toString() =>
      'ProductFormEvent.brandNameChanged(brandName: $brandName)';

  @override
  List<Object?> get props => [
        brandName,
      ];
}

/// (([WeightNumberChanged] : [ProductFormEvent]) weightNumberChanged){[String] weightNumber}
///
/// with data equality
@immutable
class WeightNumberChanged extends ProductFormEvent with EquatableMixin {
  const WeightNumberChanged({
    required this.weightNumber,
  }) : super._internal();

  final String weightNumber;

  @override
  String toString() =>
      'ProductFormEvent.weightNumberChanged(weightNumber: $weightNumber)';

  @override
  List<Object?> get props => [
        weightNumber,
      ];
}

/// (([WeightUnitChanged] : [ProductFormEvent]) weightUnitChanged){[WeightUnits] weightUnit}
///
/// with data equality
@immutable
class WeightUnitChanged extends ProductFormEvent with EquatableMixin {
  const WeightUnitChanged({
    required this.weightUnit,
  }) : super._internal();

  final WeightUnits weightUnit;

  @override
  String toString() =>
      'ProductFormEvent.weightUnitChanged(weightUnit: $weightUnit)';

  @override
  List<Object?> get props => [
        weightUnit,
      ];
}

/// (([PriceChanged] : [ProductFormEvent]) priceChanged){[String] price}
///
/// with data equality
@immutable
class PriceChanged extends ProductFormEvent with EquatableMixin {
  const PriceChanged({
    required this.price,
  }) : super._internal();

  final String price;

  @override
  String toString() => 'ProductFormEvent.priceChanged(price: $price)';

  @override
  List<Object?> get props => [
        price,
      ];
}

/// (([CurrencyChanged] : [ProductFormEvent]) currencyChanged){[Currencies] currency}
///
/// with data equality
@immutable
class CurrencyChanged extends ProductFormEvent with EquatableMixin {
  const CurrencyChanged({
    required this.currency,
  }) : super._internal();

  final Currencies currency;

  @override
  String toString() => 'ProductFormEvent.currencyChanged(currency: $currency)';

  @override
  List<Object?> get props => [
        currency,
      ];
}

/// (([ProductDescriptionChanged] : [ProductFormEvent]) productDescriptionChanged){[String] productDescription}
///
/// with data equality
@immutable
class ProductDescriptionChanged extends ProductFormEvent with EquatableMixin {
  const ProductDescriptionChanged({
    required this.productDescription,
  }) : super._internal();

  final String productDescription;

  @override
  String toString() =>
      'ProductFormEvent.productDescriptionChanged(productDescription: $productDescription)';

  @override
  List<Object?> get props => [
        productDescription,
      ];
}

/// (([IngredientsChanged] : [ProductFormEvent]) ingredientsChanged){[String] ingredients}
///
/// with data equality
@immutable
class IngredientsChanged extends ProductFormEvent with EquatableMixin {
  const IngredientsChanged({
    required this.ingredients,
  }) : super._internal();

  final String ingredients;

  @override
  String toString() =>
      'ProductFormEvent.ingredientsChanged(ingredients: $ingredients)';

  @override
  List<Object?> get props => [
        ingredients,
      ];
}

/// (([PhotosFilesChanged] : [ProductFormEvent]) photosFilesChanged){}
///
/// with data equality
///
/// with wrap
@immutable
class PhotosFilesChanged extends ProductFormEvent with EquatableMixin {
  const PhotosFilesChanged() : super._internal();

  @override
  String toString() => 'ProductFormEvent.photosFilesChanged()';

  @override
  List<Object?> get props => [];
}

/// (([ProductFound] : [ProductFormEvent]) productFound){[Product] product}
///
/// with data equality
@immutable
class ProductFound extends ProductFormEvent with EquatableMixin {
  const ProductFound({
    required this.product,
  }) : super._internal();

  final Product product;

  @override
  String toString() => 'ProductFormEvent.productFound(product: $product)';

  @override
  List<Object?> get props => [
        product,
      ];
}

/// (([Saved] : [ProductFormEvent]) saved){}
///
/// with data equality
///
/// with wrap
@immutable
class Saved extends ProductFormEvent with EquatableMixin {
  const Saved() : super._internal();

  @override
  String toString() => 'ProductFormEvent.saved()';

  @override
  List<Object?> get props => [];
}
