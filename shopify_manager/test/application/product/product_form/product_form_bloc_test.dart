import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/kt.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:shopify_domain/core.dart';
import 'package:shopify_domain/core/network/network_info.dart';
import 'package:shopify_domain/product.dart';
import 'package:shopify_manager/application/product/product_form/product_form_bloc.dart';
import 'package:shopify_manager/domain/auth/i_auth_facade.dart';
import 'package:shopify_manager/domain/core/images/i_image_facade.dart';
import 'package:shopify_manager/domain/product/i_product_repository.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:shopify_manager/domain/shop/i_shop_repository.dart';

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
    const category = Categories.fish;
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
          bloc.add(const ProductFormEvent.categoryChanged(category: category)),
      expect: () => [
        initialState.copyWith(
            productForm: tInitialProduct.copyWith(category: Category(category)))
      ],
    );
  });

  group('productNameChanged', () {
    // arrange
    const productNameStr = 'New Product Name';
    final productName = ProductName(productNameStr);
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
        const ProductFormEvent.productNameChanged(productName: productNameStr),
      ),
      expect: () => [
        initialState.copyWith(
            productForm: tInitialProduct.copyWith(name: productName))
      ],
    );
  });

  group('brandNameChanged', () {
    // arrange
    var brandNameStr = 'New Brand Name';
    final brandName = BrandName(brandNameStr);
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
        ProductFormEvent.brandNameChanged(brandName: brandNameStr),
      ),
      expect: () => [
        initialState.copyWith(
            productForm: tInitialProduct.copyWith(brand: brandName))
      ],
    );
  });

  group('weightChanged', () {
    // arrange
    const weightNumberStr = '99.2';
    const weightNumber = 99.2;
    final weight = Weight.fromPrimitives(weightNumber, 'gram');
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
        const ProductFormEvent.weightNumberChanged(
            weightNumber: weightNumberStr),
      ),
      expect: () => [
        initialState.copyWith(
            productForm: tInitialProduct.copyWith(weight: weight))
      ],
    );
  });

  group('priceChanged', () {
    // arrange
    const priceStr = '10.0';
    const priceDouble = 10.0;
    final price = Price.fromPrimitives(priceDouble, 'gram');
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
        const ProductFormEvent.priceChanged(price: priceStr),
      ),
      expect: () => [
        initialState.copyWith(
            productForm: tInitialProduct.copyWith(price: price))
      ],
    );
  });

  group('productDescriptionChanged', () {
    // arrange
    const descriptionStr =
        'This is an exemplary, yet valid product description';
    final productDescription = ProductDescription(descriptionStr);
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
        const ProductFormEvent.productDescriptionChanged(
            productDescription: descriptionStr),
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
    const ingredientsStr =
        'Salt, Almonds, Olive Oil \n May contain a lot of bugs';
    final ingredients = ProductDescription(ingredientsStr);
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
        const ProductFormEvent.ingredientsChanged(ingredients: ingredientsStr),
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
