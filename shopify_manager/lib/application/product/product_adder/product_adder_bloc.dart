import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sealed_annotations/sealed_annotations.dart';
import 'package:shopify_domain/core.dart';
import 'package:shopify_domain/core/network/network_info.dart';
import 'package:shopify_domain/product.dart';
import 'package:shopify_domain/shop.dart';
import 'package:shopify_manager/domain/product/i_product_repository.dart';

part 'product_adder_event.dart';
part 'product_adder_state.dart';
part 'product_adder_bloc.sealed.dart';
part 'product_adder_bloc.freezed.dart';

class ProductAdderBloc extends Bloc<ProductAdderEvent, ProductAdderState> {
  final IProductRepository productRepository;
  final NetworkInfo networkInfo;
  ProductAdderBloc({required this.productRepository, required this.networkInfo})
      : super(ProductAdderState.initial()) {
    on<ProductAdderEvent>((event, emit) async {
      await event.when(selectedShopsChanged: (shopsList) {
        emit(state.copyWith(selectedShops: shopsList));
      }, priceNumberStringChanged: (newPrice) {
        emit(state.copyWith(
            price: state.price
                .copyWith(price: PositiveNumber.fromString(newPrice))));
      }, priceCurrencyChanged: (newCurrency) {
        emit(state.copyWith(
            price: state.price.copyWith(currency: Currency(newCurrency))));
      }, saved: () async {
        if (await networkInfo.isConnected) {
          if (state.price.failureOrUnit.isLeft() ||
              state.selectedShops.isEmpty) {
            emit(state.copyWith(showErrors: true));
          } else {
            emit(state.copyWith(isLoading: true));
            Either<ProductFailure, Unit> failureOrUnit = right(unit);
            for (final shop in state.selectedShops) {
              final result = await productRepository.addToShop(
                  state.product, shop, state.price);
              if (result.isLeft()) failureOrUnit = result;
            }
            emit(state.copyWith(
                isLoading: false,
                saveFailureOrSuccessOption: optionOf(failureOrUnit)));
          }
        } else {
          // No internet connection
          final failure = some(left<ProductFailure, Unit>(
              const ProductFailure.noInternetConnection()));
          emit(state.copyWith(
              showErrors: true, saveFailureOrSuccessOption: failure));
        }
      }, initialize: (product) {
        emit(state.copyWith(product: product));
      });
    });
  }
}
