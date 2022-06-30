import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:sealed_annotations/sealed_annotations.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopify_domain/cart/cart.dart';
import 'package:shopify_domain/cart/cart_failure.dart';

part 'cart_event.dart';
part 'cart_state.dart';
part 'cart_bloc.sealed.dart';
part 'cart_bloc.freezed.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(CartState.initial()) {
    on<CartEvent>((event, emit) {
      event.when(watchAllCarts: () {}, createOrders: () {});
    });
  }
}
