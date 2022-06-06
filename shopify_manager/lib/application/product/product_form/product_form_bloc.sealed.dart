// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_form_bloc.dart';

// **************************************************************************
// Generator: sealed_generators
// **************************************************************************

/// [ProductFormEvent] {
///
/// ([ProductFormEventCategoryChanged] categoryChanged){[Categories] category} with data equality
///
/// ([ProductFormEventProductNameChanged] productNameChanged){[String] productName} with data equality
///
/// ([ProductFormEventBrandNameChanged] brandNameChanged){[String] brandName} with data equality
///
/// ([ProductFormEventWeightNumberChanged] weightNumberChanged){[String] weightNumber} with data equality
///
/// ([ProductFormEventWeightUnitChanged] weightUnitChanged){[WeightUnits] weightUnit} with data equality
///
/// ([ProductFormEventProductDescriptionChanged] productDescriptionChanged){[String] productDescription} with data equality
///
/// ([ProductFormEventIngredientsChanged] ingredientsChanged){[String] ingredients} with data equality
///
/// ([ProductFormEventPhotosFilesChanged] photosFilesChanged){} with data equality
///
/// ([ProductFormEventProductFound] productFound){[Product] product} with data equality
///
/// ([ProductFormEventSaved] saved){} with data equality
///
/// }
@SealedManifest(_ProductFormEvent)
abstract class ProductFormEvent {
  const ProductFormEvent._internal();

  const factory ProductFormEvent.categoryChanged({
    required Categories category,
  }) = ProductFormEventCategoryChanged;

  const factory ProductFormEvent.productNameChanged({
    required String productName,
  }) = ProductFormEventProductNameChanged;

  const factory ProductFormEvent.brandNameChanged({
    required String brandName,
  }) = ProductFormEventBrandNameChanged;

  const factory ProductFormEvent.weightNumberChanged({
    required String weightNumber,
  }) = ProductFormEventWeightNumberChanged;

  const factory ProductFormEvent.weightUnitChanged({
    required WeightUnits weightUnit,
  }) = ProductFormEventWeightUnitChanged;

  const factory ProductFormEvent.productDescriptionChanged({
    required String productDescription,
  }) = ProductFormEventProductDescriptionChanged;

  const factory ProductFormEvent.ingredientsChanged({
    required String ingredients,
  }) = ProductFormEventIngredientsChanged;

  const factory ProductFormEvent.photosFilesChanged() =
      ProductFormEventPhotosFilesChanged;

  const factory ProductFormEvent.productFound({
    required Product product,
  }) = ProductFormEventProductFound;

  const factory ProductFormEvent.saved() = ProductFormEventSaved;

  bool get isCategoryChanged => this is ProductFormEventCategoryChanged;

  bool get isProductNameChanged => this is ProductFormEventProductNameChanged;

  bool get isBrandNameChanged => this is ProductFormEventBrandNameChanged;

  bool get isWeightNumberChanged => this is ProductFormEventWeightNumberChanged;

  bool get isWeightUnitChanged => this is ProductFormEventWeightUnitChanged;

  bool get isProductDescriptionChanged =>
      this is ProductFormEventProductDescriptionChanged;

  bool get isIngredientsChanged => this is ProductFormEventIngredientsChanged;

  bool get isPhotosFilesChanged => this is ProductFormEventPhotosFilesChanged;

  bool get isProductFound => this is ProductFormEventProductFound;

  bool get isSaved => this is ProductFormEventSaved;

  ProductFormEventCategoryChanged get asCategoryChanged =>
      this as ProductFormEventCategoryChanged;

  ProductFormEventProductNameChanged get asProductNameChanged =>
      this as ProductFormEventProductNameChanged;

  ProductFormEventBrandNameChanged get asBrandNameChanged =>
      this as ProductFormEventBrandNameChanged;

  ProductFormEventWeightNumberChanged get asWeightNumberChanged =>
      this as ProductFormEventWeightNumberChanged;

  ProductFormEventWeightUnitChanged get asWeightUnitChanged =>
      this as ProductFormEventWeightUnitChanged;

  ProductFormEventProductDescriptionChanged get asProductDescriptionChanged =>
      this as ProductFormEventProductDescriptionChanged;

  ProductFormEventIngredientsChanged get asIngredientsChanged =>
      this as ProductFormEventIngredientsChanged;

  ProductFormEventPhotosFilesChanged get asPhotosFilesChanged =>
      this as ProductFormEventPhotosFilesChanged;

  ProductFormEventProductFound get asProductFound =>
      this as ProductFormEventProductFound;

  ProductFormEventSaved get asSaved => this as ProductFormEventSaved;

  ProductFormEventCategoryChanged? get asCategoryChangedOrNull {
    final productFormEvent = this;
    return productFormEvent is ProductFormEventCategoryChanged
        ? productFormEvent
        : null;
  }

  ProductFormEventProductNameChanged? get asProductNameChangedOrNull {
    final productFormEvent = this;
    return productFormEvent is ProductFormEventProductNameChanged
        ? productFormEvent
        : null;
  }

  ProductFormEventBrandNameChanged? get asBrandNameChangedOrNull {
    final productFormEvent = this;
    return productFormEvent is ProductFormEventBrandNameChanged
        ? productFormEvent
        : null;
  }

  ProductFormEventWeightNumberChanged? get asWeightNumberChangedOrNull {
    final productFormEvent = this;
    return productFormEvent is ProductFormEventWeightNumberChanged
        ? productFormEvent
        : null;
  }

  ProductFormEventWeightUnitChanged? get asWeightUnitChangedOrNull {
    final productFormEvent = this;
    return productFormEvent is ProductFormEventWeightUnitChanged
        ? productFormEvent
        : null;
  }

  ProductFormEventProductDescriptionChanged?
      get asProductDescriptionChangedOrNull {
    final productFormEvent = this;
    return productFormEvent is ProductFormEventProductDescriptionChanged
        ? productFormEvent
        : null;
  }

  ProductFormEventIngredientsChanged? get asIngredientsChangedOrNull {
    final productFormEvent = this;
    return productFormEvent is ProductFormEventIngredientsChanged
        ? productFormEvent
        : null;
  }

  ProductFormEventPhotosFilesChanged? get asPhotosFilesChangedOrNull {
    final productFormEvent = this;
    return productFormEvent is ProductFormEventPhotosFilesChanged
        ? productFormEvent
        : null;
  }

  ProductFormEventProductFound? get asProductFoundOrNull {
    final productFormEvent = this;
    return productFormEvent is ProductFormEventProductFound
        ? productFormEvent
        : null;
  }

  ProductFormEventSaved? get asSavedOrNull {
    final productFormEvent = this;
    return productFormEvent is ProductFormEventSaved ? productFormEvent : null;
  }

  R when<R extends Object?>({
    required R Function(Categories category) categoryChanged,
    required R Function(String productName) productNameChanged,
    required R Function(String brandName) brandNameChanged,
    required R Function(String weightNumber) weightNumberChanged,
    required R Function(WeightUnits weightUnit) weightUnitChanged,
    required R Function(String productDescription) productDescriptionChanged,
    required R Function(String ingredients) ingredientsChanged,
    required R Function() photosFilesChanged,
    required R Function(Product product) productFound,
    required R Function() saved,
  }) {
    final productFormEvent = this;
    if (productFormEvent is ProductFormEventCategoryChanged) {
      return categoryChanged(productFormEvent.category);
    } else if (productFormEvent is ProductFormEventProductNameChanged) {
      return productNameChanged(productFormEvent.productName);
    } else if (productFormEvent is ProductFormEventBrandNameChanged) {
      return brandNameChanged(productFormEvent.brandName);
    } else if (productFormEvent is ProductFormEventWeightNumberChanged) {
      return weightNumberChanged(productFormEvent.weightNumber);
    } else if (productFormEvent is ProductFormEventWeightUnitChanged) {
      return weightUnitChanged(productFormEvent.weightUnit);
    } else if (productFormEvent is ProductFormEventProductDescriptionChanged) {
      return productDescriptionChanged(productFormEvent.productDescription);
    } else if (productFormEvent is ProductFormEventIngredientsChanged) {
      return ingredientsChanged(productFormEvent.ingredients);
    } else if (productFormEvent is ProductFormEventPhotosFilesChanged) {
      return photosFilesChanged();
    } else if (productFormEvent is ProductFormEventProductFound) {
      return productFound(productFormEvent.product);
    } else if (productFormEvent is ProductFormEventSaved) {
      return saved();
    } else {
      throw AssertionError();
    }
  }

  R maybeWhen<R extends Object?>({
    R Function(Categories category)? categoryChanged,
    R Function(String productName)? productNameChanged,
    R Function(String brandName)? brandNameChanged,
    R Function(String weightNumber)? weightNumberChanged,
    R Function(WeightUnits weightUnit)? weightUnitChanged,
    R Function(String productDescription)? productDescriptionChanged,
    R Function(String ingredients)? ingredientsChanged,
    R Function()? photosFilesChanged,
    R Function(Product product)? productFound,
    R Function()? saved,
    required R Function(ProductFormEvent productFormEvent) orElse,
  }) {
    final productFormEvent = this;
    if (productFormEvent is ProductFormEventCategoryChanged) {
      return categoryChanged != null
          ? categoryChanged(productFormEvent.category)
          : orElse(productFormEvent);
    } else if (productFormEvent is ProductFormEventProductNameChanged) {
      return productNameChanged != null
          ? productNameChanged(productFormEvent.productName)
          : orElse(productFormEvent);
    } else if (productFormEvent is ProductFormEventBrandNameChanged) {
      return brandNameChanged != null
          ? brandNameChanged(productFormEvent.brandName)
          : orElse(productFormEvent);
    } else if (productFormEvent is ProductFormEventWeightNumberChanged) {
      return weightNumberChanged != null
          ? weightNumberChanged(productFormEvent.weightNumber)
          : orElse(productFormEvent);
    } else if (productFormEvent is ProductFormEventWeightUnitChanged) {
      return weightUnitChanged != null
          ? weightUnitChanged(productFormEvent.weightUnit)
          : orElse(productFormEvent);
    } else if (productFormEvent is ProductFormEventProductDescriptionChanged) {
      return productDescriptionChanged != null
          ? productDescriptionChanged(productFormEvent.productDescription)
          : orElse(productFormEvent);
    } else if (productFormEvent is ProductFormEventIngredientsChanged) {
      return ingredientsChanged != null
          ? ingredientsChanged(productFormEvent.ingredients)
          : orElse(productFormEvent);
    } else if (productFormEvent is ProductFormEventPhotosFilesChanged) {
      return photosFilesChanged != null
          ? photosFilesChanged()
          : orElse(productFormEvent);
    } else if (productFormEvent is ProductFormEventProductFound) {
      return productFound != null
          ? productFound(productFormEvent.product)
          : orElse(productFormEvent);
    } else if (productFormEvent is ProductFormEventSaved) {
      return saved != null ? saved() : orElse(productFormEvent);
    } else {
      throw AssertionError();
    }
  }

  @Deprecated('Use `whenOrNull` instead. Will be removed by next release.')
  void partialWhen({
    void Function(Categories category)? categoryChanged,
    void Function(String productName)? productNameChanged,
    void Function(String brandName)? brandNameChanged,
    void Function(String weightNumber)? weightNumberChanged,
    void Function(WeightUnits weightUnit)? weightUnitChanged,
    void Function(String productDescription)? productDescriptionChanged,
    void Function(String ingredients)? ingredientsChanged,
    void Function()? photosFilesChanged,
    void Function(Product product)? productFound,
    void Function()? saved,
    void Function(ProductFormEvent productFormEvent)? orElse,
  }) {
    final productFormEvent = this;
    if (productFormEvent is ProductFormEventCategoryChanged) {
      if (categoryChanged != null) {
        categoryChanged(productFormEvent.category);
      } else if (orElse != null) {
        orElse(productFormEvent);
      }
    } else if (productFormEvent is ProductFormEventProductNameChanged) {
      if (productNameChanged != null) {
        productNameChanged(productFormEvent.productName);
      } else if (orElse != null) {
        orElse(productFormEvent);
      }
    } else if (productFormEvent is ProductFormEventBrandNameChanged) {
      if (brandNameChanged != null) {
        brandNameChanged(productFormEvent.brandName);
      } else if (orElse != null) {
        orElse(productFormEvent);
      }
    } else if (productFormEvent is ProductFormEventWeightNumberChanged) {
      if (weightNumberChanged != null) {
        weightNumberChanged(productFormEvent.weightNumber);
      } else if (orElse != null) {
        orElse(productFormEvent);
      }
    } else if (productFormEvent is ProductFormEventWeightUnitChanged) {
      if (weightUnitChanged != null) {
        weightUnitChanged(productFormEvent.weightUnit);
      } else if (orElse != null) {
        orElse(productFormEvent);
      }
    } else if (productFormEvent is ProductFormEventProductDescriptionChanged) {
      if (productDescriptionChanged != null) {
        productDescriptionChanged(productFormEvent.productDescription);
      } else if (orElse != null) {
        orElse(productFormEvent);
      }
    } else if (productFormEvent is ProductFormEventIngredientsChanged) {
      if (ingredientsChanged != null) {
        ingredientsChanged(productFormEvent.ingredients);
      } else if (orElse != null) {
        orElse(productFormEvent);
      }
    } else if (productFormEvent is ProductFormEventPhotosFilesChanged) {
      if (photosFilesChanged != null) {
        photosFilesChanged();
      } else if (orElse != null) {
        orElse(productFormEvent);
      }
    } else if (productFormEvent is ProductFormEventProductFound) {
      if (productFound != null) {
        productFound(productFormEvent.product);
      } else if (orElse != null) {
        orElse(productFormEvent);
      }
    } else if (productFormEvent is ProductFormEventSaved) {
      if (saved != null) {
        saved();
      } else if (orElse != null) {
        orElse(productFormEvent);
      }
    } else {
      throw AssertionError();
    }
  }

  R? whenOrNull<R extends Object?>({
    R Function(Categories category)? categoryChanged,
    R Function(String productName)? productNameChanged,
    R Function(String brandName)? brandNameChanged,
    R Function(String weightNumber)? weightNumberChanged,
    R Function(WeightUnits weightUnit)? weightUnitChanged,
    R Function(String productDescription)? productDescriptionChanged,
    R Function(String ingredients)? ingredientsChanged,
    R Function()? photosFilesChanged,
    R Function(Product product)? productFound,
    R Function()? saved,
    R Function(ProductFormEvent productFormEvent)? orElse,
  }) {
    final productFormEvent = this;
    if (productFormEvent is ProductFormEventCategoryChanged) {
      return categoryChanged != null
          ? categoryChanged(productFormEvent.category)
          : orElse?.call(productFormEvent);
    } else if (productFormEvent is ProductFormEventProductNameChanged) {
      return productNameChanged != null
          ? productNameChanged(productFormEvent.productName)
          : orElse?.call(productFormEvent);
    } else if (productFormEvent is ProductFormEventBrandNameChanged) {
      return brandNameChanged != null
          ? brandNameChanged(productFormEvent.brandName)
          : orElse?.call(productFormEvent);
    } else if (productFormEvent is ProductFormEventWeightNumberChanged) {
      return weightNumberChanged != null
          ? weightNumberChanged(productFormEvent.weightNumber)
          : orElse?.call(productFormEvent);
    } else if (productFormEvent is ProductFormEventWeightUnitChanged) {
      return weightUnitChanged != null
          ? weightUnitChanged(productFormEvent.weightUnit)
          : orElse?.call(productFormEvent);
    } else if (productFormEvent is ProductFormEventProductDescriptionChanged) {
      return productDescriptionChanged != null
          ? productDescriptionChanged(productFormEvent.productDescription)
          : orElse?.call(productFormEvent);
    } else if (productFormEvent is ProductFormEventIngredientsChanged) {
      return ingredientsChanged != null
          ? ingredientsChanged(productFormEvent.ingredients)
          : orElse?.call(productFormEvent);
    } else if (productFormEvent is ProductFormEventPhotosFilesChanged) {
      return photosFilesChanged != null
          ? photosFilesChanged()
          : orElse?.call(productFormEvent);
    } else if (productFormEvent is ProductFormEventProductFound) {
      return productFound != null
          ? productFound(productFormEvent.product)
          : orElse?.call(productFormEvent);
    } else if (productFormEvent is ProductFormEventSaved) {
      return saved != null ? saved() : orElse?.call(productFormEvent);
    } else {
      throw AssertionError();
    }
  }

  R map<R extends Object?>({
    required R Function(ProductFormEventCategoryChanged categoryChanged)
        categoryChanged,
    required R Function(ProductFormEventProductNameChanged productNameChanged)
        productNameChanged,
    required R Function(ProductFormEventBrandNameChanged brandNameChanged)
        brandNameChanged,
    required R Function(ProductFormEventWeightNumberChanged weightNumberChanged)
        weightNumberChanged,
    required R Function(ProductFormEventWeightUnitChanged weightUnitChanged)
        weightUnitChanged,
    required R Function(
            ProductFormEventProductDescriptionChanged productDescriptionChanged)
        productDescriptionChanged,
    required R Function(ProductFormEventIngredientsChanged ingredientsChanged)
        ingredientsChanged,
    required R Function(ProductFormEventPhotosFilesChanged photosFilesChanged)
        photosFilesChanged,
    required R Function(ProductFormEventProductFound productFound) productFound,
    required R Function(ProductFormEventSaved saved) saved,
  }) {
    final productFormEvent = this;
    if (productFormEvent is ProductFormEventCategoryChanged) {
      return categoryChanged(productFormEvent);
    } else if (productFormEvent is ProductFormEventProductNameChanged) {
      return productNameChanged(productFormEvent);
    } else if (productFormEvent is ProductFormEventBrandNameChanged) {
      return brandNameChanged(productFormEvent);
    } else if (productFormEvent is ProductFormEventWeightNumberChanged) {
      return weightNumberChanged(productFormEvent);
    } else if (productFormEvent is ProductFormEventWeightUnitChanged) {
      return weightUnitChanged(productFormEvent);
    } else if (productFormEvent is ProductFormEventProductDescriptionChanged) {
      return productDescriptionChanged(productFormEvent);
    } else if (productFormEvent is ProductFormEventIngredientsChanged) {
      return ingredientsChanged(productFormEvent);
    } else if (productFormEvent is ProductFormEventPhotosFilesChanged) {
      return photosFilesChanged(productFormEvent);
    } else if (productFormEvent is ProductFormEventProductFound) {
      return productFound(productFormEvent);
    } else if (productFormEvent is ProductFormEventSaved) {
      return saved(productFormEvent);
    } else {
      throw AssertionError();
    }
  }

  R maybeMap<R extends Object?>({
    R Function(ProductFormEventCategoryChanged categoryChanged)?
        categoryChanged,
    R Function(ProductFormEventProductNameChanged productNameChanged)?
        productNameChanged,
    R Function(ProductFormEventBrandNameChanged brandNameChanged)?
        brandNameChanged,
    R Function(ProductFormEventWeightNumberChanged weightNumberChanged)?
        weightNumberChanged,
    R Function(ProductFormEventWeightUnitChanged weightUnitChanged)?
        weightUnitChanged,
    R Function(
            ProductFormEventProductDescriptionChanged
                productDescriptionChanged)?
        productDescriptionChanged,
    R Function(ProductFormEventIngredientsChanged ingredientsChanged)?
        ingredientsChanged,
    R Function(ProductFormEventPhotosFilesChanged photosFilesChanged)?
        photosFilesChanged,
    R Function(ProductFormEventProductFound productFound)? productFound,
    R Function(ProductFormEventSaved saved)? saved,
    required R Function(ProductFormEvent productFormEvent) orElse,
  }) {
    final productFormEvent = this;
    if (productFormEvent is ProductFormEventCategoryChanged) {
      return categoryChanged != null
          ? categoryChanged(productFormEvent)
          : orElse(productFormEvent);
    } else if (productFormEvent is ProductFormEventProductNameChanged) {
      return productNameChanged != null
          ? productNameChanged(productFormEvent)
          : orElse(productFormEvent);
    } else if (productFormEvent is ProductFormEventBrandNameChanged) {
      return brandNameChanged != null
          ? brandNameChanged(productFormEvent)
          : orElse(productFormEvent);
    } else if (productFormEvent is ProductFormEventWeightNumberChanged) {
      return weightNumberChanged != null
          ? weightNumberChanged(productFormEvent)
          : orElse(productFormEvent);
    } else if (productFormEvent is ProductFormEventWeightUnitChanged) {
      return weightUnitChanged != null
          ? weightUnitChanged(productFormEvent)
          : orElse(productFormEvent);
    } else if (productFormEvent is ProductFormEventProductDescriptionChanged) {
      return productDescriptionChanged != null
          ? productDescriptionChanged(productFormEvent)
          : orElse(productFormEvent);
    } else if (productFormEvent is ProductFormEventIngredientsChanged) {
      return ingredientsChanged != null
          ? ingredientsChanged(productFormEvent)
          : orElse(productFormEvent);
    } else if (productFormEvent is ProductFormEventPhotosFilesChanged) {
      return photosFilesChanged != null
          ? photosFilesChanged(productFormEvent)
          : orElse(productFormEvent);
    } else if (productFormEvent is ProductFormEventProductFound) {
      return productFound != null
          ? productFound(productFormEvent)
          : orElse(productFormEvent);
    } else if (productFormEvent is ProductFormEventSaved) {
      return saved != null ? saved(productFormEvent) : orElse(productFormEvent);
    } else {
      throw AssertionError();
    }
  }

  @Deprecated('Use `mapOrNull` instead. Will be removed by next release.')
  void partialMap({
    void Function(ProductFormEventCategoryChanged categoryChanged)?
        categoryChanged,
    void Function(ProductFormEventProductNameChanged productNameChanged)?
        productNameChanged,
    void Function(ProductFormEventBrandNameChanged brandNameChanged)?
        brandNameChanged,
    void Function(ProductFormEventWeightNumberChanged weightNumberChanged)?
        weightNumberChanged,
    void Function(ProductFormEventWeightUnitChanged weightUnitChanged)?
        weightUnitChanged,
    void Function(
            ProductFormEventProductDescriptionChanged
                productDescriptionChanged)?
        productDescriptionChanged,
    void Function(ProductFormEventIngredientsChanged ingredientsChanged)?
        ingredientsChanged,
    void Function(ProductFormEventPhotosFilesChanged photosFilesChanged)?
        photosFilesChanged,
    void Function(ProductFormEventProductFound productFound)? productFound,
    void Function(ProductFormEventSaved saved)? saved,
    void Function(ProductFormEvent productFormEvent)? orElse,
  }) {
    final productFormEvent = this;
    if (productFormEvent is ProductFormEventCategoryChanged) {
      if (categoryChanged != null) {
        categoryChanged(productFormEvent);
      } else if (orElse != null) {
        orElse(productFormEvent);
      }
    } else if (productFormEvent is ProductFormEventProductNameChanged) {
      if (productNameChanged != null) {
        productNameChanged(productFormEvent);
      } else if (orElse != null) {
        orElse(productFormEvent);
      }
    } else if (productFormEvent is ProductFormEventBrandNameChanged) {
      if (brandNameChanged != null) {
        brandNameChanged(productFormEvent);
      } else if (orElse != null) {
        orElse(productFormEvent);
      }
    } else if (productFormEvent is ProductFormEventWeightNumberChanged) {
      if (weightNumberChanged != null) {
        weightNumberChanged(productFormEvent);
      } else if (orElse != null) {
        orElse(productFormEvent);
      }
    } else if (productFormEvent is ProductFormEventWeightUnitChanged) {
      if (weightUnitChanged != null) {
        weightUnitChanged(productFormEvent);
      } else if (orElse != null) {
        orElse(productFormEvent);
      }
    } else if (productFormEvent is ProductFormEventProductDescriptionChanged) {
      if (productDescriptionChanged != null) {
        productDescriptionChanged(productFormEvent);
      } else if (orElse != null) {
        orElse(productFormEvent);
      }
    } else if (productFormEvent is ProductFormEventIngredientsChanged) {
      if (ingredientsChanged != null) {
        ingredientsChanged(productFormEvent);
      } else if (orElse != null) {
        orElse(productFormEvent);
      }
    } else if (productFormEvent is ProductFormEventPhotosFilesChanged) {
      if (photosFilesChanged != null) {
        photosFilesChanged(productFormEvent);
      } else if (orElse != null) {
        orElse(productFormEvent);
      }
    } else if (productFormEvent is ProductFormEventProductFound) {
      if (productFound != null) {
        productFound(productFormEvent);
      } else if (orElse != null) {
        orElse(productFormEvent);
      }
    } else if (productFormEvent is ProductFormEventSaved) {
      if (saved != null) {
        saved(productFormEvent);
      } else if (orElse != null) {
        orElse(productFormEvent);
      }
    } else {
      throw AssertionError();
    }
  }

  R? mapOrNull<R extends Object?>({
    R Function(ProductFormEventCategoryChanged categoryChanged)?
        categoryChanged,
    R Function(ProductFormEventProductNameChanged productNameChanged)?
        productNameChanged,
    R Function(ProductFormEventBrandNameChanged brandNameChanged)?
        brandNameChanged,
    R Function(ProductFormEventWeightNumberChanged weightNumberChanged)?
        weightNumberChanged,
    R Function(ProductFormEventWeightUnitChanged weightUnitChanged)?
        weightUnitChanged,
    R Function(
            ProductFormEventProductDescriptionChanged
                productDescriptionChanged)?
        productDescriptionChanged,
    R Function(ProductFormEventIngredientsChanged ingredientsChanged)?
        ingredientsChanged,
    R Function(ProductFormEventPhotosFilesChanged photosFilesChanged)?
        photosFilesChanged,
    R Function(ProductFormEventProductFound productFound)? productFound,
    R Function(ProductFormEventSaved saved)? saved,
    R Function(ProductFormEvent productFormEvent)? orElse,
  }) {
    final productFormEvent = this;
    if (productFormEvent is ProductFormEventCategoryChanged) {
      return categoryChanged != null
          ? categoryChanged(productFormEvent)
          : orElse?.call(productFormEvent);
    } else if (productFormEvent is ProductFormEventProductNameChanged) {
      return productNameChanged != null
          ? productNameChanged(productFormEvent)
          : orElse?.call(productFormEvent);
    } else if (productFormEvent is ProductFormEventBrandNameChanged) {
      return brandNameChanged != null
          ? brandNameChanged(productFormEvent)
          : orElse?.call(productFormEvent);
    } else if (productFormEvent is ProductFormEventWeightNumberChanged) {
      return weightNumberChanged != null
          ? weightNumberChanged(productFormEvent)
          : orElse?.call(productFormEvent);
    } else if (productFormEvent is ProductFormEventWeightUnitChanged) {
      return weightUnitChanged != null
          ? weightUnitChanged(productFormEvent)
          : orElse?.call(productFormEvent);
    } else if (productFormEvent is ProductFormEventProductDescriptionChanged) {
      return productDescriptionChanged != null
          ? productDescriptionChanged(productFormEvent)
          : orElse?.call(productFormEvent);
    } else if (productFormEvent is ProductFormEventIngredientsChanged) {
      return ingredientsChanged != null
          ? ingredientsChanged(productFormEvent)
          : orElse?.call(productFormEvent);
    } else if (productFormEvent is ProductFormEventPhotosFilesChanged) {
      return photosFilesChanged != null
          ? photosFilesChanged(productFormEvent)
          : orElse?.call(productFormEvent);
    } else if (productFormEvent is ProductFormEventProductFound) {
      return productFound != null
          ? productFound(productFormEvent)
          : orElse?.call(productFormEvent);
    } else if (productFormEvent is ProductFormEventSaved) {
      return saved != null
          ? saved(productFormEvent)
          : orElse?.call(productFormEvent);
    } else {
      throw AssertionError();
    }
  }
}

/// (([ProductFormEventCategoryChanged] : [ProductFormEvent]) categoryChanged){[Categories] category}
///
/// with data equality
class ProductFormEventCategoryChanged extends ProductFormEvent
    with EquatableMixin {
  const ProductFormEventCategoryChanged({
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

/// (([ProductFormEventProductNameChanged] : [ProductFormEvent]) productNameChanged){[String] productName}
///
/// with data equality
class ProductFormEventProductNameChanged extends ProductFormEvent
    with EquatableMixin {
  const ProductFormEventProductNameChanged({
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

/// (([ProductFormEventBrandNameChanged] : [ProductFormEvent]) brandNameChanged){[String] brandName}
///
/// with data equality
class ProductFormEventBrandNameChanged extends ProductFormEvent
    with EquatableMixin {
  const ProductFormEventBrandNameChanged({
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

/// (([ProductFormEventWeightNumberChanged] : [ProductFormEvent]) weightNumberChanged){[String] weightNumber}
///
/// with data equality
class ProductFormEventWeightNumberChanged extends ProductFormEvent
    with EquatableMixin {
  const ProductFormEventWeightNumberChanged({
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

/// (([ProductFormEventWeightUnitChanged] : [ProductFormEvent]) weightUnitChanged){[WeightUnits] weightUnit}
///
/// with data equality
class ProductFormEventWeightUnitChanged extends ProductFormEvent
    with EquatableMixin {
  const ProductFormEventWeightUnitChanged({
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

/// (([ProductFormEventProductDescriptionChanged] : [ProductFormEvent]) productDescriptionChanged){[String] productDescription}
///
/// with data equality
class ProductFormEventProductDescriptionChanged extends ProductFormEvent
    with EquatableMixin {
  const ProductFormEventProductDescriptionChanged({
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

/// (([ProductFormEventIngredientsChanged] : [ProductFormEvent]) ingredientsChanged){[String] ingredients}
///
/// with data equality
class ProductFormEventIngredientsChanged extends ProductFormEvent
    with EquatableMixin {
  const ProductFormEventIngredientsChanged({
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

/// (([ProductFormEventPhotosFilesChanged] : [ProductFormEvent]) photosFilesChanged){}
///
/// with data equality
class ProductFormEventPhotosFilesChanged extends ProductFormEvent
    with EquatableMixin {
  const ProductFormEventPhotosFilesChanged() : super._internal();

  @override
  String toString() => 'ProductFormEvent.photosFilesChanged()';

  @override
  List<Object?> get props => [];
}

/// (([ProductFormEventProductFound] : [ProductFormEvent]) productFound){[Product] product}
///
/// with data equality
class ProductFormEventProductFound extends ProductFormEvent
    with EquatableMixin {
  const ProductFormEventProductFound({
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

/// (([ProductFormEventSaved] : [ProductFormEvent]) saved){}
///
/// with data equality
class ProductFormEventSaved extends ProductFormEvent with EquatableMixin {
  const ProductFormEventSaved() : super._internal();

  @override
  String toString() => 'ProductFormEvent.saved()';

  @override
  List<Object?> get props => [];
}
