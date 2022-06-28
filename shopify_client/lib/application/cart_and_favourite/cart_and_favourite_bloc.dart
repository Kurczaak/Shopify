import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sealed_annotations/sealed_annotations.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopify_domain/cart/cart_failure.dart';

part 'cart_and_favourite_event.dart';
part 'cart_and_favourite_state.dart';
part 'cart_and_favourite_bloc.freezed.dart';
part 'cart_and_favourite_bloc.sealed.dart';

class CartAndFavouriteBloc
    extends Bloc<CartAndFavouriteEvent, CartAndFavouriteState> {
  CartAndFavouriteBloc() : super(CartAndFavouriteState.initial()) {
    on<CartAndFavouriteEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
