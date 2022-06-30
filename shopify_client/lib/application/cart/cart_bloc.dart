import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:sealed_annotations/sealed_annotations.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopify_client/domain/cart/I_cart_facade.dart';
import 'package:shopify_domain/cart/cart.dart';
import 'package:shopify_domain/cart/cart_failure.dart';
import 'package:shopify_domain/core/network/network_info.dart';

part 'cart_event.dart';
part 'cart_state.dart';
part 'cart_bloc.sealed.dart';
part 'cart_bloc.freezed.dart';

@Injectable()
class CartBloc extends Bloc<CartEvent, CartState> {
  final ICartFacade cartFacade;
  final NetworkInfo networkInfo;
  CartBloc(this.cartFacade, this.networkInfo) : super(CartState.initial()) {
    on<CartEvent>((event, emit) async {
      await event.when(
          watchAllCarts: () async {
            if (await networkInfo.isConnected) {
              emit(state.copyWith(
                failureOption: none(),
                isLoading: true,
              ));

              await emit.forEach(cartFacade.getUserCarts(),
                  onData: ((Either<CartFailure, UserCarts> data) => data.fold(
                      (failure) => state.copyWith(
                          isLoading: false, failureOption: some(failure)),
                      (userCarts) => state.copyWith(
                            isLoading: false,
                            userCartsOption: some(userCarts),
                          ))));
            } else {
              emit(state.copyWith(
                  isLoading: false,
                  failureOption:
                      some(const CartFailure.noInternetConnection())));
            }
          },
          createOrders: () {});
    });
  }
}
