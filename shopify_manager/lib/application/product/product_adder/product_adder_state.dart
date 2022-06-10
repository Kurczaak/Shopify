part of 'product_adder_bloc.dart';

@freezed
class ProductAdderState with _$ProductAdderState {
  const factory ProductAdderState(
      {required Product product,
      required List<Shop> selectedShops,
      required Price price,
      required bool isLoading,
      required bool showErrors,
      required Option<Either<ProductFailure, Unit>>
          saveFailureOrSuccessOption}) = _ProductAdderState;

  factory ProductAdderState.initial() => ProductAdderState(
      product: Product.empty(),
      selectedShops: [],
      price: Price.empty(),
      isLoading: false,
      showErrors: false,
      saveFailureOrSuccessOption: none());
}
