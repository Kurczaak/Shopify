import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:shopify_manager/domain/auth/i_auth_facade.dart';
import 'package:shopify_manager/domain/core/images/photo.dart';
import 'package:shopify_manager/domain/core/value_objects.dart';
import 'package:shopify_manager/domain/product/i_product_repository.dart';
import 'package:shopify_manager/domain/product/price.dart';
import 'package:shopify_manager/domain/product/product.dart';
import 'package:shopify_manager/domain/product/product_failure.dart';
import 'package:shopify_manager/domain/product/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopify_manager/domain/product/weight.dart';
import 'package:shopify_manager/domain/shop/i_shop_repository.dart';
import 'package:shopify_manager/infrastructure/core/network/network_info.dart';
import 'package:super_enum_sealed_annotations/super_enum_sealed_annotations.dart';

part 'product_form_event.dart';
part 'product_form_state.dart';
part 'product_form_bloc.super.dart';
part 'product_form_bloc.freezed.dart';

@injectable
class ProductFormBloc extends Bloc<ProductFormEvent, ProductFormState> {
  final NetworkInfo networkInfo;
  final IProductRepository productRepository;
  final IShopRepository shopRepository;
  final IAuthFacade authFacade;

  ProductFormBloc(
      {required this.networkInfo,
      required this.productRepository,
      required this.shopRepository,
      required this.authFacade})
      : super(ProductFormState.initial()) {
    on<ProductFormEvent>((event, emit) {
      event.when(
        categoryChanged: (changedCategory) {
          emit(state.copyWith(
              product:
                  state.product.copyWith(category: changedCategory.category)));
        },
        productNameChanged: (productNameChanged) {
          emit(state.copyWith(
              product: state.product
                  .copyWith(name: productNameChanged.productName)));
        },
        brandNameChanged: (brandNameChanged) {
          emit(state.copyWith(
              product:
                  state.product.copyWith(brand: brandNameChanged.brandName)));
        },
        weightChanged: (weightChanged) {
          emit(state.copyWith(
              product: state.product.copyWith(weight: weightChanged.weight)));
        },
        priceChanged: (priceChanged) {
          emit(state.copyWith(
              product: state.product.copyWith(price: priceChanged.price)));
        },
        productDescriptionChanged: (productDescriptionChanged) {
          emit(state.copyWith(
              product: state.product.copyWith(
                  description: productDescriptionChanged.productDescription)));
        },
        ingredientsChanged: (ingredientsChanged) {
          emit(state.copyWith(
              product: state.product
                  .copyWith(ingredients: ingredientsChanged.ingredients)));
        },
        photosChanged: (photosChanged) {
          emit(state.copyWith(productPhotos: photosChanged.photos));
        },
        saved: () {
          final photosFailureOrUnit = state.productPhotos.failureOrUnit;

          photosFailureOrUnit.fold(
            (f) => emit(ProductFormState.error(
                product: state.product,
                productPhotos: state.productPhotos,
                saveFailureOrSuccessOption: state.saveFailureOrSuccessOption)),
            (_) {
              emit(ProductFormState.loading(
                  product: state.product, productPhotos: state.productPhotos));
            },
          );
        },
      );
    });
  }
}
