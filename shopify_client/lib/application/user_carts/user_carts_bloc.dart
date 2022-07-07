import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:sealed_annotations/sealed_annotations.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopify_client/domain/cart/I_cart_facade.dart';
import 'package:shopify_domain/cart/cart.dart';
import 'package:shopify_domain/cart/cart_failure.dart';
import 'package:shopify_domain/core/network/network_info.dart';

part 'user_carts_event.dart';
part 'user_carts_state.dart';
part 'user_carts_bloc.sealed.dart';
part 'user_carts_bloc.freezed.dart';

@Injectable()
class UserCartsBloc extends Bloc<UserCartsEvent, UserCartsState> {
  final ICartFacade cartFacade;
  final NetworkInfo networkInfo;
  UserCartsBloc(this.cartFacade, this.networkInfo)
      : super(UserCartsState.initial()) {
    on<UserCartsEvent>((event, emit) async {
      await event.when(
          watchAllCarts: () async {
            if (await networkInfo.isConnected) {
              emit(state.copyWith(
                  failureOption: none(),
                  isLoading: true,
                  userCartsOption: none()));

              await emit.forEach(cartFacade.getUserCarts(),
                  onError: (error, stackTrace) =>
                      state.copyWith(userCartsOption: none(), isLoading: false),
                  onData: ((Either<CartFailure, UserCarts> data) => data.fold(
                      (failure) => state.copyWith(
                          isLoading: false,
                          failureOption: some(failure),
                          userCartsOption: none()),
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
