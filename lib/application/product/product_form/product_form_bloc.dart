import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:shopify_manager/domain/auth/i_auth_facade.dart';
import 'package:shopify_manager/domain/core/images/i_image_facade.dart';
import 'package:shopify_manager/domain/product/i_product_repository.dart';
import 'package:shopify_manager/domain/product/price.dart';
import 'package:shopify_manager/domain/product/product_failure.dart';
import 'package:shopify_manager/domain/product/product_form.dart';
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
  final IImageFacade imageFacade;

  ProductFormBloc(
      {required this.imageFacade,
      required this.networkInfo,
      required this.productRepository,
      required this.shopRepository,
      required this.authFacade})
      : super(ProductFormState.initial()) {
    on<ProductFormEvent>((event, emit) async {
      await event.when(
        categoryChanged: (changedCategory) {
          emit(state.copyWith(
              productForm: state.productForm
                  .copyWith(category: changedCategory.category)));
        },
        productNameChanged: (productNameChanged) {
          emit(state.copyWith(
              productForm: state.productForm
                  .copyWith(name: productNameChanged.productName)));
        },
        brandNameChanged: (brandNameChanged) {
          emit(state.copyWith(
              productForm: state.productForm
                  .copyWith(brand: brandNameChanged.brandName)));
        },
        weightChanged: (weightChanged) {
          emit(state.copyWith(
              productForm:
                  state.productForm.copyWith(weight: weightChanged.weight)));
        },
        priceChanged: (priceChanged) {
          emit(state.copyWith(
              productForm:
                  state.productForm.copyWith(price: priceChanged.price)));
        },
        productDescriptionChanged: (productDescriptionChanged) {
          emit(state.copyWith(
              productForm: state.productForm.copyWith(
                  description: productDescriptionChanged.productDescription)));
        },
        ingredientsChanged: (ingredientsChanged) {
          emit(state.copyWith(
              productForm: state.productForm
                  .copyWith(ingredients: ingredientsChanged.ingredients)));
        },
        photosChanged: () async {
          emit(ProductFormState.loading(
              productForm: state.productForm,
              saveFailureOrSuccessOption: state.saveFailureOrSuccessOption));
          await imageFacade.getShopLogo();
        },
        saved: () async {
          await state.productForm.failureOption.fold(() async {
            emit(ProductFormState.loading(
                productForm: state.productForm,
                saveFailureOrSuccessOption: state.saveFailureOrSuccessOption));
            final failureOrUnit =
                await productRepository.create(state.productForm);

            failureOrUnit.fold(
                (f) => emit(ProductFormState.error(
                    productForm: state.productForm,
                    saveFailureOrSuccessOption: some(left(f)))),
                (r) => emit(ProductFormState.loaded(
                    productForm: state.productForm,
                    saveFailureOrSuccessOption: some(right(r)))));
          },
              (f) async => emit(ProductFormState.error(
                  productForm: state.productForm,
                  saveFailureOrSuccessOption:
                      state.saveFailureOrSuccessOption)));
        },
      );
    });
  }
}
