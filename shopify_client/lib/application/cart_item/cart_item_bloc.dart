import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:sealed_annotations/sealed_annotations.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopify_domain/cart/cart_failure.dart';
import 'package:shopify_domain/cart/cart_item.dart';
import 'package:shopify_domain/core.dart';

part 'cart_item_event.dart';
part 'cart_item_state.dart';
part 'cart_item_bloc.freezed.dart';
part 'cart_item_bloc.sealed.dart';

class CartItemBloc extends Bloc<CartItemEvent, CartItemState> {
  CartItemBloc() : super(CartItemState.initial()) {
    on<CartItemEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
