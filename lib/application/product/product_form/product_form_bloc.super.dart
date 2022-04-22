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
// void categoryChanged(Category category);
//
// @WithEquality(Equality.data)
// @WithName('ProductNameChanged')
// void productNameChanged(ProductName productName);
//
// @WithEquality(Equality.data)
// @WithName('BrandNameChanged')
// void brandNameChanged(BrandName brandName);
//
// @WithEquality(Equality.data)
// @WithName('WeightChanged')
// void weightChanged(Weight weight);
//
// @WithEquality(Equality.data)
// @WithName('PriceChanged')
// void priceChanged(Price price);
//
// @WithEquality(Equality.data)
// @WithName('ProductDescriptionChanged')
// void productDescriptionChanged(ProductDescription productDescription);
//
// @WithEquality(Equality.data)
// @WithName('IngredientsChanged')
// void ingredientsChanged(ProductDescription ingredients);
//
// @WithWrap()
// @WithEquality(Equality.data)
// @WithName('PhotosFilesChanged')
// void photosFilesChanged();
//
// @WithEquality(Equality.data)
// @WithName('PhotosUrlsChanged')
// void photosUrlsChanged(NonEmptyList5<ShopifyUrl> photosUrls);
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
/// ([CategoryChanged] categoryChanged){[Category] category} with data equality
///
/// ([ProductNameChanged] productNameChanged){[ProductName] productName} with data equality
///
/// ([BrandNameChanged] brandNameChanged){[BrandName] brandName} with data equality
///
/// ([WeightChanged] weightChanged){[Weight] weight} with data equality
///
/// ([PriceChanged] priceChanged){[Price] price} with data equality
///
/// ([ProductDescriptionChanged] productDescriptionChanged){[ProductDescription] productDescription} with data equality
///
/// ([IngredientsChanged] ingredientsChanged){[ProductDescription] ingredients} with data equality
///
/// ([PhotosFilesChanged] photosFilesChanged){} with data equality with wrap
///
/// ([PhotosUrlsChanged] photosUrlsChanged){[NonEmptyList5<ShopifyUrl>] photosUrls} with data equality
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
    required Category category,
  }) = CategoryChanged;

  const factory ProductFormEvent.productNameChanged({
    required ProductName productName,
  }) = ProductNameChanged;

  const factory ProductFormEvent.brandNameChanged({
    required BrandName brandName,
  }) = BrandNameChanged;

  const factory ProductFormEvent.weightChanged({
    required Weight weight,
  }) = WeightChanged;

  const factory ProductFormEvent.priceChanged({
    required Price price,
  }) = PriceChanged;

  const factory ProductFormEvent.productDescriptionChanged({
    required ProductDescription productDescription,
  }) = ProductDescriptionChanged;

  const factory ProductFormEvent.ingredientsChanged({
    required ProductDescription ingredients,
  }) = IngredientsChanged;

  const factory ProductFormEvent.photosFilesChanged() = PhotosFilesChanged;

  const factory ProductFormEvent.photosUrlsChanged({
    required NonEmptyList5<ShopifyUrl> photosUrls,
  }) = PhotosUrlsChanged;

  const factory ProductFormEvent.productFound({
    required Product product,
  }) = ProductFound;

  const factory ProductFormEvent.saved() = Saved;

  bool isCategoryChanged() => this is CategoryChanged;

  bool isProductNameChanged() => this is ProductNameChanged;

  bool isBrandNameChanged() => this is BrandNameChanged;

  bool isWeightChanged() => this is WeightChanged;

  bool isPriceChanged() => this is PriceChanged;

  bool isProductDescriptionChanged() => this is ProductDescriptionChanged;

  bool isIngredientsChanged() => this is IngredientsChanged;

  bool isPhotosFilesChanged() => this is PhotosFilesChanged;

  bool isPhotosUrlsChanged() => this is PhotosUrlsChanged;

  bool isProductFound() => this is ProductFound;

  bool isSaved() => this is Saved;

  CategoryChanged asCategoryChanged() => this as CategoryChanged;

  ProductNameChanged asProductNameChanged() => this as ProductNameChanged;

  BrandNameChanged asBrandNameChanged() => this as BrandNameChanged;

  WeightChanged asWeightChanged() => this as WeightChanged;

  PriceChanged asPriceChanged() => this as PriceChanged;

  ProductDescriptionChanged asProductDescriptionChanged() =>
      this as ProductDescriptionChanged;

  IngredientsChanged asIngredientsChanged() => this as IngredientsChanged;

  PhotosFilesChanged asPhotosFilesChanged() => this as PhotosFilesChanged;

  PhotosUrlsChanged asPhotosUrlsChanged() => this as PhotosUrlsChanged;

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

  WeightChanged? asWeightChangedOrNull() {
    final productFormEvent = this;
    return productFormEvent is WeightChanged ? productFormEvent : null;
  }

  PriceChanged? asPriceChangedOrNull() {
    final productFormEvent = this;
    return productFormEvent is PriceChanged ? productFormEvent : null;
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

  PhotosUrlsChanged? asPhotosUrlsChangedOrNull() {
    final productFormEvent = this;
    return productFormEvent is PhotosUrlsChanged ? productFormEvent : null;
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
    required R Function(WeightChanged weightChanged) weightChanged,
    required R Function(PriceChanged priceChanged) priceChanged,
    required R Function(ProductDescriptionChanged productDescriptionChanged)
        productDescriptionChanged,
    required R Function(IngredientsChanged ingredientsChanged)
        ingredientsChanged,
    required R Function() photosFilesChanged,
    required R Function(PhotosUrlsChanged photosUrlsChanged) photosUrlsChanged,
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
    } else if (productFormEvent is WeightChanged) {
      return weightChanged(productFormEvent);
    } else if (productFormEvent is PriceChanged) {
      return priceChanged(productFormEvent);
    } else if (productFormEvent is ProductDescriptionChanged) {
      return productDescriptionChanged(productFormEvent);
    } else if (productFormEvent is IngredientsChanged) {
      return ingredientsChanged(productFormEvent);
    } else if (productFormEvent is PhotosFilesChanged) {
      return photosFilesChanged();
    } else if (productFormEvent is PhotosUrlsChanged) {
      return photosUrlsChanged(productFormEvent);
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
    R Function(WeightChanged weightChanged)? weightChanged,
    R Function(PriceChanged priceChanged)? priceChanged,
    R Function(ProductDescriptionChanged productDescriptionChanged)?
        productDescriptionChanged,
    R Function(IngredientsChanged ingredientsChanged)? ingredientsChanged,
    R Function()? photosFilesChanged,
    R Function(PhotosUrlsChanged photosUrlsChanged)? photosUrlsChanged,
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
    } else if (productFormEvent is WeightChanged) {
      return weightChanged != null
          ? weightChanged(productFormEvent)
          : orElse(productFormEvent);
    } else if (productFormEvent is PriceChanged) {
      return priceChanged != null
          ? priceChanged(productFormEvent)
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
    } else if (productFormEvent is PhotosUrlsChanged) {
      return photosUrlsChanged != null
          ? photosUrlsChanged(productFormEvent)
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
    R Function(WeightChanged weightChanged)? weightChanged,
    R Function(PriceChanged priceChanged)? priceChanged,
    R Function(ProductDescriptionChanged productDescriptionChanged)?
        productDescriptionChanged,
    R Function(IngredientsChanged ingredientsChanged)? ingredientsChanged,
    R Function()? photosFilesChanged,
    R Function(PhotosUrlsChanged photosUrlsChanged)? photosUrlsChanged,
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
    } else if (productFormEvent is WeightChanged) {
      return weightChanged != null
          ? weightChanged(productFormEvent)
          : orDefault;
    } else if (productFormEvent is PriceChanged) {
      return priceChanged != null ? priceChanged(productFormEvent) : orDefault;
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
    } else if (productFormEvent is PhotosUrlsChanged) {
      return photosUrlsChanged != null
          ? photosUrlsChanged(productFormEvent)
          : orDefault;
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
    R Function(WeightChanged weightChanged)? weightChanged,
    R Function(PriceChanged priceChanged)? priceChanged,
    R Function(ProductDescriptionChanged productDescriptionChanged)?
        productDescriptionChanged,
    R Function(IngredientsChanged ingredientsChanged)? ingredientsChanged,
    R Function()? photosFilesChanged,
    R Function(PhotosUrlsChanged photosUrlsChanged)? photosUrlsChanged,
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
    } else if (productFormEvent is WeightChanged) {
      return weightChanged?.call(productFormEvent);
    } else if (productFormEvent is PriceChanged) {
      return priceChanged?.call(productFormEvent);
    } else if (productFormEvent is ProductDescriptionChanged) {
      return productDescriptionChanged?.call(productFormEvent);
    } else if (productFormEvent is IngredientsChanged) {
      return ingredientsChanged?.call(productFormEvent);
    } else if (productFormEvent is PhotosFilesChanged) {
      return photosFilesChanged?.call();
    } else if (productFormEvent is PhotosUrlsChanged) {
      return photosUrlsChanged?.call(productFormEvent);
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
    R Function(WeightChanged weightChanged)? weightChanged,
    R Function(PriceChanged priceChanged)? priceChanged,
    R Function(ProductDescriptionChanged productDescriptionChanged)?
        productDescriptionChanged,
    R Function(IngredientsChanged ingredientsChanged)? ingredientsChanged,
    R Function()? photosFilesChanged,
    R Function(PhotosUrlsChanged photosUrlsChanged)? photosUrlsChanged,
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
    } else if (productFormEvent is WeightChanged && weightChanged != null) {
      return weightChanged(productFormEvent);
    } else if (productFormEvent is PriceChanged && priceChanged != null) {
      return priceChanged(productFormEvent);
    } else if (productFormEvent is ProductDescriptionChanged &&
        productDescriptionChanged != null) {
      return productDescriptionChanged(productFormEvent);
    } else if (productFormEvent is IngredientsChanged &&
        ingredientsChanged != null) {
      return ingredientsChanged(productFormEvent);
    } else if (productFormEvent is PhotosFilesChanged &&
        photosFilesChanged != null) {
      return photosFilesChanged();
    } else if (productFormEvent is PhotosUrlsChanged &&
        photosUrlsChanged != null) {
      return photosUrlsChanged(productFormEvent);
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
    void Function(WeightChanged weightChanged)? weightChanged,
    void Function(PriceChanged priceChanged)? priceChanged,
    void Function(ProductDescriptionChanged productDescriptionChanged)?
        productDescriptionChanged,
    void Function(IngredientsChanged ingredientsChanged)? ingredientsChanged,
    void Function()? photosFilesChanged,
    void Function(PhotosUrlsChanged photosUrlsChanged)? photosUrlsChanged,
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
    } else if (productFormEvent is WeightChanged) {
      weightChanged?.call(productFormEvent);
    } else if (productFormEvent is PriceChanged) {
      priceChanged?.call(productFormEvent);
    } else if (productFormEvent is ProductDescriptionChanged) {
      productDescriptionChanged?.call(productFormEvent);
    } else if (productFormEvent is IngredientsChanged) {
      ingredientsChanged?.call(productFormEvent);
    } else if (productFormEvent is PhotosFilesChanged) {
      photosFilesChanged?.call();
    } else if (productFormEvent is PhotosUrlsChanged) {
      photosUrlsChanged?.call(productFormEvent);
    } else if (productFormEvent is ProductFound) {
      productFound?.call(productFormEvent);
    } else if (productFormEvent is Saved) {
      saved?.call();
    } else {
      throw AssertionError();
    }
  }
}

/// (([CategoryChanged] : [ProductFormEvent]) categoryChanged){[Category] category}
///
/// with data equality
@immutable
class CategoryChanged extends ProductFormEvent with EquatableMixin {
  const CategoryChanged({
    required this.category,
  }) : super._internal();

  final Category category;

  @override
  String toString() => 'ProductFormEvent.categoryChanged(category: $category)';

  @override
  List<Object?> get props => [
        category,
      ];
}

/// (([ProductNameChanged] : [ProductFormEvent]) productNameChanged){[ProductName] productName}
///
/// with data equality
@immutable
class ProductNameChanged extends ProductFormEvent with EquatableMixin {
  const ProductNameChanged({
    required this.productName,
  }) : super._internal();

  final ProductName productName;

  @override
  String toString() =>
      'ProductFormEvent.productNameChanged(productName: $productName)';

  @override
  List<Object?> get props => [
        productName,
      ];
}

/// (([BrandNameChanged] : [ProductFormEvent]) brandNameChanged){[BrandName] brandName}
///
/// with data equality
@immutable
class BrandNameChanged extends ProductFormEvent with EquatableMixin {
  const BrandNameChanged({
    required this.brandName,
  }) : super._internal();

  final BrandName brandName;

  @override
  String toString() =>
      'ProductFormEvent.brandNameChanged(brandName: $brandName)';

  @override
  List<Object?> get props => [
        brandName,
      ];
}

/// (([WeightChanged] : [ProductFormEvent]) weightChanged){[Weight] weight}
///
/// with data equality
@immutable
class WeightChanged extends ProductFormEvent with EquatableMixin {
  const WeightChanged({
    required this.weight,
  }) : super._internal();

  final Weight weight;

  @override
  String toString() => 'ProductFormEvent.weightChanged(weight: $weight)';

  @override
  List<Object?> get props => [
        weight,
      ];
}

/// (([PriceChanged] : [ProductFormEvent]) priceChanged){[Price] price}
///
/// with data equality
@immutable
class PriceChanged extends ProductFormEvent with EquatableMixin {
  const PriceChanged({
    required this.price,
  }) : super._internal();

  final Price price;

  @override
  String toString() => 'ProductFormEvent.priceChanged(price: $price)';

  @override
  List<Object?> get props => [
        price,
      ];
}

/// (([ProductDescriptionChanged] : [ProductFormEvent]) productDescriptionChanged){[ProductDescription] productDescription}
///
/// with data equality
@immutable
class ProductDescriptionChanged extends ProductFormEvent with EquatableMixin {
  const ProductDescriptionChanged({
    required this.productDescription,
  }) : super._internal();

  final ProductDescription productDescription;

  @override
  String toString() =>
      'ProductFormEvent.productDescriptionChanged(productDescription: $productDescription)';

  @override
  List<Object?> get props => [
        productDescription,
      ];
}

/// (([IngredientsChanged] : [ProductFormEvent]) ingredientsChanged){[ProductDescription] ingredients}
///
/// with data equality
@immutable
class IngredientsChanged extends ProductFormEvent with EquatableMixin {
  const IngredientsChanged({
    required this.ingredients,
  }) : super._internal();

  final ProductDescription ingredients;

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

/// (([PhotosUrlsChanged] : [ProductFormEvent]) photosUrlsChanged){[NonEmptyList5<ShopifyUrl>] photosUrls}
///
/// with data equality
@immutable
class PhotosUrlsChanged extends ProductFormEvent with EquatableMixin {
  const PhotosUrlsChanged({
    required this.photosUrls,
  }) : super._internal();

  final NonEmptyList5<ShopifyUrl> photosUrls;

  @override
  String toString() =>
      'ProductFormEvent.photosUrlsChanged(photosUrls: $photosUrls)';

  @override
  List<Object?> get props => [
        photosUrls,
      ];
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
