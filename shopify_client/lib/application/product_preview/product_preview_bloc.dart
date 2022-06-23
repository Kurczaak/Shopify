import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:sealed_annotations/sealed_annotations.dart';
import 'package:shopify_domain/core/value_objects.dart';
import 'package:shopify_domain/product.dart';
import 'package:shopify_domain/shop.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_preview_event.dart';
part 'product_preview_state.dart';
part 'product_preview_bloc.sealed.dart';
part 'product_preview_bloc.freezed.dart';

class ProductPreviewBloc
    extends Bloc<ProductPreviewEvent, ProductPreviewState> {
  ProductPreviewBloc() : super(ProductPreviewState.initial()) {
    on<ProductPreviewEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
