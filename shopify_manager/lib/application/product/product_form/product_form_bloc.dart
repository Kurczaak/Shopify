import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:shopify_domain/core.dart';
import 'package:shopify_domain/product.dart';
import 'package:shopify_manager/domain/auth/i_auth_facade.dart';
import 'package:shopify_manager/domain/core/images/i_image_facade.dart';
import 'package:shopify_manager/domain/product/i_product_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopify_manager/domain/shop/i_shop_repository.dart';
import 'package:shopify_manager/infrastructure/core/network/network_info.dart';
import 'package:sealed_annotations/sealed_annotations.dart';

part 'product_form_bloc.sealed.dart';
part 'product_form_bloc.freezed.dart';
part 'product_form_event.dart';
part 'product_form_state.dart';

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
        productFound: (product) {
          emit(ProductFormState.loaded(
              productForm: ProductForm.fromProduct(product),
              saveFailureOrSuccessOption: none()));
        },
        categoryChanged: (changedCategory) {
          emit(state.copyWith(
              productForm: state.productForm
                  .copyWith(category: Category(changedCategory))));
        },
        productNameChanged: (productName) {
          emit(state.copyWith(
              productForm:
                  state.productForm.copyWith(name: ProductName(productName))));
        },
        brandNameChanged: (brandName) {
          emit(state.copyWith(
              productForm:
                  state.productForm.copyWith(brand: BrandName(brandName))));
        },
        weightNumberChanged: (weightNumber) {
          final currentWeight = state.productForm.weight;
          final newWeight = currentWeight.copyWith(
              weight: PositiveNumber.fromString(weightNumber));
          emit(state.copyWith(
              productForm: state.productForm.copyWith(weight: newWeight)));
        },
        weightUnitChanged: (weightUnit) {
          final currentWeight = state.productForm.weight;
          final newWeight =
              currentWeight.copyWith(weightUnit: WeightUnit(weightUnit));
          emit(state.copyWith(
              productForm: state.productForm.copyWith(weight: newWeight)));
        },
        priceChanged: (price) {
          final currentPrice = state.productForm.price;
          final newPrice =
              currentPrice.copyWith(price: PositiveNumber.fromString(price));
          emit(state.copyWith(
              productForm: state.productForm.copyWith(price: newPrice)));
        },
        currencyChanged: (currency) {
          final currentPrice = state.productForm.price;
          final newPrice = currentPrice.copyWith(currency: Currency(currency));
          emit(state.copyWith(
              productForm: state.productForm.copyWith(price: newPrice)));
        },
        productDescriptionChanged: (productDescription) {
          emit(state.copyWith(
              productForm: state.productForm.copyWith(
                  description: ProductDescription(productDescription))));
        },
        ingredientsChanged: (ingredients) {
          emit(state.copyWith(
              productForm: state.productForm
                  .copyWith(ingredients: ProductDescription(ingredients))));
        },
        photosFilesChanged: () async {
          emit(ProductFormState.loading(
              productForm: state.productForm,
              saveFailureOrSuccessOption: state.saveFailureOrSuccessOption));
          final failureOrPhotos = await imageFacade.getMultiplePhotos(
            max: 5,
            min: 1,
            maxHeight: ProductPhoto.maxHeight,
            minHeight: ProductPhoto.minHeight,
            maxWidth: ProductPhoto.maxWidth,
            minWidth: ProductPhoto.minWidth,
          );
          failureOrPhotos.fold(
              (f) => emit(ProductFormState.error(
                  productForm: state.productForm,
                  saveFailureOrSuccessOption:
                      state.saveFailureOrSuccessOption)), (photos) {
            final productPhotosList = photos
                .asList()
                .map((photo) => ProductPhoto(photo.getOrCrash()))
                .toList();
            final productPhotos = NonEmptyList5(KtList.from(productPhotosList));
            emit(ProductFormState.loaded(
                productForm:
                    state.productForm.copyWith(photos: right(productPhotos)),
                saveFailureOrSuccessOption: state.saveFailureOrSuccessOption));
          });
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
