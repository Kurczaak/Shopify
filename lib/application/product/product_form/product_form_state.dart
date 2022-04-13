part of 'product_form_bloc.dart';

@freezed
abstract class ProductFormState with _$ProductFormState {
  const factory ProductFormState({
    required ProductForm productForm,
    required bool isLoading,
    required bool showErrors,
    required Option<Either<ProductFailure, Unit>> saveFailureOrSuccessOption,
  }) = _ProductFormState;

  factory ProductFormState.initial() => ProductFormState(
        productForm: ProductForm.empty(),
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
