import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/kt.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:shopify_manager/application/product/product_form/product_form_bloc.dart';
import 'package:shopify_manager/domain/auth/i_auth_facade.dart';
import 'package:shopify_manager/domain/core/images/i_image_facade.dart';
import 'package:shopify_manager/domain/core/images/image_failure.dart';
import 'package:shopify_manager/domain/core/images/photo.dart';
import 'package:shopify_manager/domain/core/value_objects.dart';
import 'package:shopify_manager/domain/product/i_product_repository.dart';
import 'package:shopify_manager/domain/product/price.dart';
import 'package:shopify_manager/domain/product/product_categories.dart';
import 'package:shopify_manager/domain/product/product_failure.dart';
import 'package:shopify_manager/domain/product/value_objects.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:shopify_manager/domain/product/weight.dart';
import 'package:shopify_manager/domain/shop/i_shop_repository.dart';
import 'package:shopify_manager/infrastructure/core/network/network_info.dart';

import '../../../fixtures/test_product.dart';
import '../../../utils/image_reader.dart';
import 'product_form_bloc_test.mocks.dart';
import './product_form_bloc_test.mocks.dart';

@GenerateMocks([
  NetworkInfo,
  IAuthFacade,
  IProductRepository,
  IShopRepository,
  IImageFacade,
])
void main() async {
  late MockNetworkInfo mockNetworkInfo;
  late MockIAuthFacade mockIAuthFacade;
  late MockIProductRepository mockIProductRepository;
  late MockIShopRepository mockIShopRepository;
  late MockIImageFacade mockImageFacade;

  final initialState = ProductFormState.initial();
  final tInitialProduct = initialState.productForm;
  final tProduct = fixtureProduct;
  final tProductForm = await loadProductFormWithPhotos();
  final file = await getImageFileFromAssets('test_logo.jpg');
  final tPhoto = ProductPhoto(file);
  final tPhotos =
      NonEmptyList5<ProductPhoto>(KtList.from([tPhoto, tPhoto, tPhoto]));

  setUp(() {
    mockNetworkInfo = MockNetworkInfo();
    mockIAuthFacade = MockIAuthFacade();
    mockIProductRepository = MockIProductRepository();
    mockIShopRepository = MockIShopRepository();
    mockImageFacade = MockIImageFacade();
    when(mockIProductRepository.create(tProductForm))
        .thenAnswer((_) async => right(unit));
  });

  group('categoryChanged', () {
    // arrange
    final category = Category(Categories.fish);
    blocTest<ProductFormBloc, ProductFormState>(
      'should emit state with modified product category',
      build: () => ProductFormBloc(
        imageFacade: mockImageFacade,
        authFacade: mockIAuthFacade,
        networkInfo: mockNetworkInfo,
        productRepository: mockIProductRepository,
        shopRepository: mockIShopRepository,
      ),
      seed: () => initialState,
      act: (ProductFormBloc bloc) =>
          bloc.add(ProductFormEvent.categoryChanged(category: category)),
      expect: () => [
        initialState.copyWith(
            productForm: tInitialProduct.copyWith(category: category))
      ],
    );
  });

  group('productNameChanged', () {
    // arrange
    final productName = ProductName('New Product Name');
    blocTest(
      'should emit state with modified product name',
      build: () => ProductFormBloc(
        imageFacade: mockImageFacade,
        authFacade: mockIAuthFacade,
        networkInfo: mockNetworkInfo,
        productRepository: mockIProductRepository,
        shopRepository: mockIShopRepository,
      ),
      seed: () => initialState,
      act: (ProductFormBloc bloc) => bloc.add(
        ProductFormEvent.productNameChanged(productName: productName),
      ),
      expect: () => [
        initialState.copyWith(
            productForm: tInitialProduct.copyWith(name: productName))
      ],
    );
  });

  group('brandNameChanged', () {
    // arrange
    final brandName = BrandName('New Brand Name');
    blocTest(
      'should emit state with modified product name',
      build: () => ProductFormBloc(
        imageFacade: mockImageFacade,
        authFacade: mockIAuthFacade,
        networkInfo: mockNetworkInfo,
        productRepository: mockIProductRepository,
        shopRepository: mockIShopRepository,
      ),
      seed: () => initialState,
      act: (ProductFormBloc bloc) => bloc.add(
        ProductFormEvent.brandNameChanged(brandName: brandName),
      ),
      expect: () => [
        initialState.copyWith(
            productForm: tInitialProduct.copyWith(brand: brandName))
      ],
    );
  });

  group('weightChanged', () {
    // arrange
    final weight = Weight.fromPrimitives(99.2, 'gram');
    blocTest(
      'should emit state with modified weight',
      build: () => ProductFormBloc(
        imageFacade: mockImageFacade,
        authFacade: mockIAuthFacade,
        networkInfo: mockNetworkInfo,
        productRepository: mockIProductRepository,
        shopRepository: mockIShopRepository,
      ),
      seed: () => initialState,
      act: (ProductFormBloc bloc) => bloc.add(
        ProductFormEvent.weightChanged(weight: weight),
      ),
      expect: () => [
        initialState.copyWith(
            productForm: tInitialProduct.copyWith(weight: weight))
      ],
    );
  });

  group('priceChanged', () {
    // arrange
    final price = Price.fromPrimitives(10, 'gram');
    blocTest(
      'should emit state with modified price',
      build: () => ProductFormBloc(
        imageFacade: mockImageFacade,
        authFacade: mockIAuthFacade,
        networkInfo: mockNetworkInfo,
        productRepository: mockIProductRepository,
        shopRepository: mockIShopRepository,
      ),
      seed: () => initialState,
      act: (ProductFormBloc bloc) => bloc.add(
        ProductFormEvent.priceChanged(price: price),
      ),
      expect: () => [
        initialState.copyWith(
            productForm: tInitialProduct.copyWith(price: price))
      ],
    );
  });

  group('productDescriptionChanged', () {
    // arrange
    final productDescription = ProductDescription(
        'This is an exemplary, yet valid product description');
    blocTest(
      'should emit state with modified productDescription',
      build: () => ProductFormBloc(
        imageFacade: mockImageFacade,
        authFacade: mockIAuthFacade,
        networkInfo: mockNetworkInfo,
        productRepository: mockIProductRepository,
        shopRepository: mockIShopRepository,
      ),
      seed: () => initialState,
      act: (ProductFormBloc bloc) => bloc.add(
        ProductFormEvent.productDescriptionChanged(
            productDescription: productDescription),
      ),
      expect: () => [
        initialState.copyWith(
            productForm:
                tInitialProduct.copyWith(description: productDescription))
      ],
    );
  });
  group('ingredientsChanged', () {
    // arrange
    final ingredients = ProductDescription(
        'Salt, Almonds, Olive Oil \n May contain a lot of bugs');
    blocTest(
      'should emit state with modified ingredients',
      build: () => ProductFormBloc(
        imageFacade: mockImageFacade,
        authFacade: mockIAuthFacade,
        networkInfo: mockNetworkInfo,
        productRepository: mockIProductRepository,
        shopRepository: mockIShopRepository,
      ),
      seed: () => initialState,
      act: (ProductFormBloc bloc) => bloc.add(
        ProductFormEvent.ingredientsChanged(ingredients: ingredients),
      ),
      expect: () => [
        initialState.copyWith(
            productForm: tInitialProduct.copyWith(ingredients: ingredients))
      ],
    );
  });

  group('photosChanged', () {
    blocTest(
      'should call image facade to get multiple product photos',
      build: () => ProductFormBloc(
        imageFacade: mockImageFacade,
        authFacade: mockIAuthFacade,
        networkInfo: mockNetworkInfo,
        productRepository: mockIProductRepository,
        shopRepository: mockIShopRepository,
      ),
      setUp: () {
        when(mockImageFacade.getMultiplePhotos(
          max: 5,
          min: 1,
          maxHeight: ProductPhoto.maxHeight,
          minHeight: ProductPhoto.minHeight,
          maxWidth: ProductPhoto.maxWidth,
          minWidth: ProductPhoto.minWidth,
        )).thenAnswer((_) async =>
            right(KtList.from([Photo(file), Photo(file), Photo(file)])));
      },
      seed: () => initialState.copyWith(productForm: tProductForm),
      act: (ProductFormBloc bloc) =>
          bloc.add(const ProductFormEvent.photosFilesChanged()),
      verify: (_) async {
        await untilCalled(mockImageFacade.getMultiplePhotos(
          max: 5,
          min: 1,
          maxHeight: ProductPhoto.maxHeight,
          minHeight: ProductPhoto.minHeight,
          maxWidth: ProductPhoto.maxWidth,
          minWidth: ProductPhoto.minWidth,
        ));
        return verify(mockImageFacade.getMultiplePhotos(
          max: 5,
          min: 1,
          maxHeight: ProductPhoto.maxHeight,
          minHeight: ProductPhoto.minHeight,
          maxWidth: ProductPhoto.maxWidth,
          minWidth: ProductPhoto.minWidth,
        ));
      },
    );

    blocTest(
      'should emit [LOADING] and [LOADED] after successfully loading photos',
      build: () => ProductFormBloc(
        imageFacade: mockImageFacade,
        authFacade: mockIAuthFacade,
        networkInfo: mockNetworkInfo,
        productRepository: mockIProductRepository,
        shopRepository: mockIShopRepository,
      ),
      setUp: () {
        when(mockImageFacade.getMultiplePhotos(
          max: 5,
          min: 1,
          maxHeight: ProductPhoto.maxHeight,
          minHeight: ProductPhoto.minHeight,
          maxWidth: ProductPhoto.maxWidth,
          minWidth: ProductPhoto.minWidth,
        )).thenAnswer((_) async =>
            right(KtList.from([Photo(file), Photo(file), Photo(file)])));
      },
      seed: () => initialState,
      act: (ProductFormBloc bloc) => bloc.add(
        const ProductFormEvent.photosFilesChanged(),
      ),
      expect: () => [
        ProductFormState.loading(
            productForm: tInitialProduct,
            saveFailureOrSuccessOption:
                initialState.saveFailureOrSuccessOption),
        ProductFormState.loaded(
            productForm: tInitialProduct.copyWith(
                photos: right(NonEmptyList5((KtList.from([
              ProductPhoto(file),
              ProductPhoto(file),
              ProductPhoto(file)
            ]))))),
            saveFailureOrSuccessOption: initialState.saveFailureOrSuccessOption)
      ],
    );

    blocTest(
      'should emit [LOADING] and [ERROR] if imagePicker returned a failure',
      build: () => ProductFormBloc(
        imageFacade: mockImageFacade,
        authFacade: mockIAuthFacade,
        networkInfo: mockNetworkInfo,
        productRepository: mockIProductRepository,
        shopRepository: mockIShopRepository,
      ),
      setUp: () {
        when(mockImageFacade.getMultiplePhotos(
          max: 5,
          min: 1,
          maxHeight: ProductPhoto.maxHeight,
          minHeight: ProductPhoto.minHeight,
          maxWidth: ProductPhoto.maxWidth,
          minWidth: ProductPhoto.minWidth,
        )).thenAnswer((_) async => left(const ImageFailure.noImageSelected()));
      },
      seed: () => initialState,
      act: (ProductFormBloc bloc) => bloc.add(
        const ProductFormEvent.photosFilesChanged(),
      ),
      expect: () => [
        ProductFormState.loading(
            productForm: tInitialProduct,
            saveFailureOrSuccessOption:
                initialState.saveFailureOrSuccessOption),
        ProductFormState.error(
            productForm: tInitialProduct,
            saveFailureOrSuccessOption:
                initialState.saveFailureOrSuccessOption),
      ],
    );
  });

  group('saved', () {
    blocTest(
      'if product is invalid emit [ERROR]',
      build: () => ProductFormBloc(
        imageFacade: mockImageFacade,
        authFacade: mockIAuthFacade,
        networkInfo: mockNetworkInfo,
        productRepository: mockIProductRepository,
        shopRepository: mockIShopRepository,
      ),
      seed: () => initialState,
      act: (ProductFormBloc bloc) => bloc.add(const ProductFormEvent.saved()),
      expect: () => [initialState.copyWith(showErrors: true)],
    );

    blocTest(
      'if photos are valid emit [LOADING] and [LOADED]',
      build: () => ProductFormBloc(
        imageFacade: mockImageFacade,
        authFacade: mockIAuthFacade,
        networkInfo: mockNetworkInfo,
        productRepository: mockIProductRepository,
        shopRepository: mockIShopRepository,
      ),
      seed: () => initialState.copyWith(productForm: tProductForm),
      act: (ProductFormBloc bloc) => bloc.add(const ProductFormEvent.saved()),
      expect: () => [
        ProductFormState.loading(
            productForm: tProductForm, saveFailureOrSuccessOption: none()),
        ProductFormState.loaded(
            productForm: tProductForm,
            saveFailureOrSuccessOption: some(right(unit)))
      ],
    );

    blocTest(
      'if the form is valid call IProductRepository.create',
      build: () => ProductFormBloc(
        imageFacade: mockImageFacade,
        authFacade: mockIAuthFacade,
        networkInfo: mockNetworkInfo,
        productRepository: mockIProductRepository,
        shopRepository: mockIShopRepository,
      ),
      seed: () => initialState.copyWith(productForm: tProductForm),
      act: (ProductFormBloc bloc) => bloc.add(const ProductFormEvent.saved()),
      verify: (_) {
        return verify(mockIProductRepository.create(tProductForm));
      },
    );

    blocTest(
      'should emit [LOADING] and [LOADED] when succesfully uploaded',
      build: () => ProductFormBloc(
        imageFacade: mockImageFacade,
        authFacade: mockIAuthFacade,
        networkInfo: mockNetworkInfo,
        productRepository: mockIProductRepository,
        shopRepository: mockIShopRepository,
      ),
      seed: () => initialState.copyWith(productForm: tProductForm),
      act: (ProductFormBloc bloc) => bloc.add(const ProductFormEvent.saved()),
      expect: () => [
        ProductFormState.loading(
            productForm: tProductForm, saveFailureOrSuccessOption: none()),
        ProductFormState.loaded(
            productForm: tProductForm,
            saveFailureOrSuccessOption: some(right(unit)))
      ],
    );

    blocTest(
      'should emit [ERROR] with a failure after [LOADING] when an error occured',
      build: () => ProductFormBloc(
        imageFacade: mockImageFacade,
        authFacade: mockIAuthFacade,
        networkInfo: mockNetworkInfo,
        productRepository: mockIProductRepository,
        shopRepository: mockIShopRepository,
      ),
      seed: () => ProductFormState.loading(
          productForm: tProductForm, saveFailureOrSuccessOption: none()),
      setUp: () {
        when(mockIProductRepository.create(tProductForm)).thenAnswer(
            (_) async => left(const ProductFailure.noInternetConnection()));
      },
      act: (ProductFormBloc bloc) => bloc.add(const ProductFormEvent.saved()),
      expect: () => [
        ProductFormState.error(
          productForm: tProductForm,
          saveFailureOrSuccessOption:
              some(left(const ProductFailure.noInternetConnection())),
        )
      ],
    );
  });
}
