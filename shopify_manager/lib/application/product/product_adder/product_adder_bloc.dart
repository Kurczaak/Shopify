import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sealed_annotations/sealed_annotations.dart';
import 'package:shopify_domain/product.dart';
import 'package:shopify_domain/shop.dart';

part 'product_adder_event.dart';
part 'product_adder_state.dart';
part 'product_adder_bloc.sealed.dart';
part 'product_adder_bloc.freezed.dart';

class ProductAdderBloc extends Bloc<ProductAdderEvent, ProductAdderState> {
  ProductAdderBloc() : super(ProductAdderState.initial()) {
    on<ProductAdderEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
