part of 'product_form_bloc.dart';

@freezed
class ProductFormState with _$ProductFormState {
  const factory ProductFormState({
    required ProductForm productForm,
    required bool isLoading,
    required bool showErrors,
    required Option<Either<ProductFailure, Unit>> saveFailureOrSuccessOption,
  }) = _ProductFormState;

  factory ProductFormState.initial() => ProductFormState(
        productForm: tProductForm, //ProductForm.empty(),
        isLoading: false,
        saveFailureOrSuccessOption: none(),
        showErrors: false,
      );

  factory ProductFormState.loading(
          {required ProductForm productForm,
          required Option<Either<ProductFailure, Unit>>
              saveFailureOrSuccessOption}) =>
      ProductFormState(
        productForm: productForm,
        isLoading: true,
        saveFailureOrSuccessOption: saveFailureOrSuccessOption,
        showErrors: false,
      );

  factory ProductFormState.loaded(
          {required ProductForm productForm,
          required Option<Either<ProductFailure, Unit>>
              saveFailureOrSuccessOption}) =>
      ProductFormState(
          productForm: productForm,
          isLoading: false,
          saveFailureOrSuccessOption: saveFailureOrSuccessOption,
          showErrors: false);

  factory ProductFormState.error(
          {required ProductForm productForm,
          required Option<Either<ProductFailure, Unit>>
              saveFailureOrSuccessOption}) =>
      ProductFormState(
          productForm: productForm,
          isLoading: false,
          saveFailureOrSuccessOption: saveFailureOrSuccessOption,
          showErrors: true);
}

final String id = UniqueId().getOrCrash();
const String barcode = 'ABC-123-DEF';
const double weight = 10;
const String weightUnit = 'gram';
const String currency = 'zl';
const String category = 'Bread';
const String name = 'Test Product';
const String brand = 'Test Brand';
const String description = 'This is just a test product';
const String ingredients = 'tests, bugs, overflows';

final tProductForm = ProductForm.fromPrimitives(
    id: id,
    barcode: barcode,
    weight: weight,
    weightUnit: weightUnit,
    currency: currency,
    category: category,
    name: name,
    brand: brand,
    description: description,
    ingredients: ingredients,
    photos: right([]));
