import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sealed_annotations/sealed_annotations.dart';
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
    on<ProductAdderEvent>((event, emit) {
      event.when(
          selectedShopsChanged: (_) {},
          priceNumberStringChanged: (_) {},
          priceCurrencyChanged: (_) {},
          saved: () {},
          initialize: (product) {
            emit(state.copyWith(product: product));
          });
    });
  }
}
