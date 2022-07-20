import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:sealed_annotations/sealed_annotations.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopify_client/domain/cart/I_cart_facade.dart';
import 'package:shopify_client/domain/favourites/favourites_facade.dart';
import 'package:shopify_domain/cart/cart_failure.dart';
import 'package:shopify_domain/cart/cart_item.dart';
import 'package:shopify_domain/core/value_objects.dart';
import 'package:shopify_domain/favourites/favourite_failure.dart';
import 'package:shopify_domain/product/product_snippets.dart';

part 'cart_and_favourite_event.dart';
part 'cart_and_favourite_state.dart';
part 'cart_and_favourite_bloc.freezed.dart';
part 'cart_and_favourite_bloc.sealed.dart';

@injectable
class CartAndFavouriteBloc
    extends Bloc<CartAndFavouriteEvent, CartAndFavouriteState> {
  final ICartFacade cartFacade;
  final IFavouritesFacade favouritesFacade;
  CartAndFavouriteBloc(
      {required this.cartFacade, required this.favouritesFacade})
      : super(CartAndFavouriteState.initial()) {
    on<CartAndFavouriteEvent>((event, emit) async {
      await event.when(initialize: (UniqueId productId) async {
        final isFavOrFailure = await favouritesFacade.isFavourite(productId);
        isFavOrFailure.fold(
            (failure) =>
                emit(state.copyWith(favouriteFailureOption: some(failure))),
            (isFavourite) => emit(state.copyWith(
                favouriteFailureOption: none(),
                isFavouirte: some(isFavourite))));
      }, toggleFavourite: (UniqueId productId) async {
        emit(state.copyWith(favouriteFailureOption: none()));
        await state.isFavouirte.fold(() async {
          final isFavOrFailure = await favouritesFacade.isFavourite(productId);
          await isFavOrFailure.fold(
              (failure) async =>
                  emit(state.copyWith(favouriteFailureOption: some(failure))),
              (isFavourite) async {
            late Either<FavouriteFailure, Unit> callResult;
            emit(state.copyWith(isFavouirte: some(!isFavourite)));
            if (isFavourite) {
              callResult =
                  await favouritesFacade.removeFromFavourites(productId);
            } else {
              callResult = await favouritesFacade.addToFavourites(productId);
            }
            callResult.fold((failure) {
              failure.maybeWhen(
                orElse: () => emit(state.copyWith(
                    isFavouirte: some(isFavourite),
                    favouriteFailureOption: some(failure))),
                alreadyInFavoruites: () {
                  emit(state.copyWith(favouriteFailureOption: some(failure)));
                },
                notInFavourites: () {
                  emit(state.copyWith(favouriteFailureOption: some(failure)));
                },
              );
            }, (_) => null);
          });
        }, (isFavourite) async {
          late Either<FavouriteFailure, Unit> callResult;
          emit(state.copyWith(isFavouirte: some(!isFavourite)));
          if (isFavourite) {
            callResult = await favouritesFacade.removeFromFavourites(productId);
          } else {
            callResult = await favouritesFacade.addToFavourites(productId);
          }
          callResult.fold((failure) {
            failure.maybeWhen(
              orElse: () => emit(state.copyWith(
                  isFavouirte: some(isFavourite),
                  favouriteFailureOption: some(failure))),
              alreadyInFavoruites: () {
                emit(state.copyWith(favouriteFailureOption: some(failure)));
              },
              notInFavourites: () {
                emit(state.copyWith(favouriteFailureOption: some(failure)));
              },
            );
          }, (_) => null);
        });
      }, addToCart: (PricedProduct product, int quantity) async {
        final cartItem = CartItem(
            id: UniqueId(),
            product: product,
            quantity: NonnegativeInt(quantity));
        await cartItem.failureOrUnit.fold(
            (failure) async => emit(state.copyWith(
                cartFailureOption: some(const CartFailure.invalidCartItem()))),
            (_) async {
          emit(state.copyWith(isLoading: true, cartFailureOption: none()));

          final failureOrUnit =
              await cartFacade.addProductToCart(product, quantity: quantity);
          failureOrUnit.fold(
              (failure) => emit(state.copyWith(
                  isLoading: false, cartFailureOption: some(failure))),
              (_) => emit(state.copyWith(isLoading: false)));
        });
      });
    });
  }
}
