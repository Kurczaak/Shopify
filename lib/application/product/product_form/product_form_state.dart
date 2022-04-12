part of 'product_form_bloc.dart';

@freezed
abstract class ProductFormState with _$ProductFormState {
  const factory ProductFormState({
    required Product product,
    required NonEmptyList5 productPhotos,
    required bool isLoading,
    required bool showErrors,
    required Option<Either<ProductFailure, Unit>> saveFailureOrSuccessOption,
  }) = _ProductFormState;

  factory ProductFormState.initial() => ProductFormState(
        product: Product.empty(),
        productPhotos: NonEmptyList5<ProductPhoto>.empty(),
        isLoading: false,
        saveFailureOrSuccessOption: none(),
        showErrors: false,
      );

  factory ProductFormState.loading(
          {required Product product, required NonEmptyList5 productPhotos}) =>
      ProductFormState(
        product: product,
        productPhotos: productPhotos,
        isLoading: true,
        saveFailureOrSuccessOption: none(),
        showErrors: false,
      );

  factory ProductFormState.loaded(
          {required Product product,
          required NonEmptyList5 productPhotos,
          required Option<Either<ProductFailure, Unit>>
              saveFailureOrSuccessOption}) =>
      ProductFormState(
          product: product,
          productPhotos: productPhotos,
          isLoading: false,
          saveFailureOrSuccessOption: saveFailureOrSuccessOption,
          showErrors: false);

  factory ProductFormState.error(
          {required Product product,
          required NonEmptyList5 productPhotos,
          required Option<Either<ProductFailure, Unit>>
              saveFailureOrSuccessOption}) =>
      ProductFormState(
          product: product,
          productPhotos: productPhotos,
          isLoading: false,
          saveFailureOrSuccessOption: saveFailureOrSuccessOption,
          showErrors: true);
}
