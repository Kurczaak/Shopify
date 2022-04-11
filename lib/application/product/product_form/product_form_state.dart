part of 'product_form_bloc.dart';

@freezed
abstract class ProductFormState with _$ProductFormState {
  const factory ProductFormState({
    required Product product,
    required NonEmptyList5 productPhotos,
    required bool isLoading,
    required Option<Either<ProductFailure, Unit>> saveFailureOrSuccessOption,
  }) = _ProductFormState;

  factory ProductFormState.initial() => ProductFormState(
      product: Product.empty(),
      productPhotos: NonEmptyList5<ProductPhoto>.empty(),
      isLoading: false,
      saveFailureOrSuccessOption: none());
}
