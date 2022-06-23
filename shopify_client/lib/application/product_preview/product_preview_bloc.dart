import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:sealed_annotations/sealed_annotations.dart';
import 'package:shopify_client/domain/product/i_product_repository.dart';
import 'package:shopify_domain/core/value_objects.dart';
import 'package:shopify_domain/product.dart';
import 'package:shopify_domain/shop.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_preview_event.dart';
part 'product_preview_state.dart';
part 'product_preview_bloc.sealed.dart';
part 'product_preview_bloc.freezed.dart';

@injectable
class ProductPreviewBloc
    extends Bloc<ProductPreviewEvent, ProductPreviewState> {
  final IProductRepository productRepository;
  ProductPreviewBloc(this.productRepository)
      : super(ProductPreviewState.initial()) {
    on<ProductPreviewEvent>((event, emit) async {
      await event.when(
        initialized: (Shop shop, UniqueId productId) async {
          emit(state.copyWith(isLoading: true));
          final productOrFailure =
              await productRepository.getProductById(productId);
          productOrFailure.fold(
              (failure) => emit(ProductPreviewState.error(
                  previousState: state, failure: failure)),
              (product) => emit(state.copyWith(
                  productOption: some(product),
                  shopOption: some(shop),
                  isLoading: false)));
        },
      );
    });
  }
}
