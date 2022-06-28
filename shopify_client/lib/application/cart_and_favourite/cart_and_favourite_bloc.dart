import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:sealed_annotations/sealed_annotations.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopify_client/domain/cart/I_cart_facade.dart';
import 'package:shopify_domain/cart/cart_failure.dart';
import 'package:shopify_domain/cart/cart_item.dart';
import 'package:shopify_domain/core/value_objects.dart';
import 'package:shopify_domain/product/product_snippets.dart';

part 'cart_and_favourite_event.dart';
part 'cart_and_favourite_state.dart';
part 'cart_and_favourite_bloc.freezed.dart';
part 'cart_and_favourite_bloc.sealed.dart';

@injectable
class CartAndFavouriteBloc
    extends Bloc<CartAndFavouriteEvent, CartAndFavouriteState> {
  final ICartFacade cartFacade;
  CartAndFavouriteBloc(this.cartFacade)
      : super(CartAndFavouriteState.initial()) {
    on<CartAndFavouriteEvent>((event, emit) async {
      await event.when(
          addToFavourite: () async {},
          addToCart: (PricedProduct product, int quantity) async {
            final cartItem =
                CartItem(product: product, quantity: NonnegativeInt(quantity));
            await cartItem.failureOrUnit.fold(
                (failure) async => emit(state.copyWith(
                    failureOption: some(const CartFailure.invalidCartItem()))),
                (_) async {
              emit(state.copyWith(isLoading: true, failureOption: none()));

              final failureOrUnit = await cartFacade.addProductToCart(product,
                  quantity: quantity);
              failureOrUnit.fold(
                  (failure) => emit(state.copyWith(
                      isLoading: false, failureOption: some(failure))),
                  (_) => emit(state.copyWith(isLoading: false)));
            });
          });
    });
  }
}
