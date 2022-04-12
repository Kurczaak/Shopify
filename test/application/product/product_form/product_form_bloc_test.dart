import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/kt.dart';
import 'package:mockito/annotations.dart';
import 'package:shopify_manager/application/product/product_form/product_form_bloc.dart';
import 'package:shopify_manager/domain/auth/i_auth_facade.dart';
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

@GenerateMocks([NetworkInfo, IAuthFacade, IProductRepository, IShopRepository])
void main() async {
  late MockNetworkInfo mockNetworkInfo;
  late MockIAuthFacade mockIAuthFacade;
  late MockIProductRepository mockIProductRepository;
  late MockIShopRepository mockIShopRepository;

  setUp(() {
    mockNetworkInfo = MockNetworkInfo();
    mockIAuthFacade = MockIAuthFacade();
    mockIProductRepository = MockIProductRepository();
    mockIShopRepository = MockIShopRepository();
  });

  final initialState = ProductFormState.initial();
  final tInitialProduct = initialState.product;
  final tProduct = fixtureProduct;
  final file = await getImageFileFromAssets('test_logo.jpg');
  final tPhoto = ProductPhoto(file);
  final tPhotos =
      NonEmptyList5<ProductPhoto>(KtList.from([tPhoto, tPhoto, tPhoto]));

  group('categoryChanged', () {
    // arrange
    final category = Category(Categories.fish);
    blocTest<ProductFormBloc, ProductFormState>(
      'should emit state with modified product category',
      build: () => ProductFormBloc(
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
            product: tInitialProduct.copyWith(category: category))
      ],
    );
  });

  group('productNameChanged', () {
    // arrange
    final productName = ProductName('New Product Name');
    blocTest(
      'should emit state with modified product name',
      build: () => ProductFormBloc(
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
            product: tInitialProduct.copyWith(name: productName))
      ],
    );
  });

  group('brandNameChanged', () {
    // arrange
    final brandName = BrandName('New Brand Name');
    blocTest(
      'should emit state with modified product name',
      build: () => ProductFormBloc(
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
            product: tInitialProduct.copyWith(brand: brandName))
      ],
    );
  });

  group('weightChanged', () {
    // arrange
    final weight = Weight.fromPrimitives(10, 'gram');
    blocTest(
      'should emit state with modified weight',
      build: () => ProductFormBloc(
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
        initialState.copyWith(product: tInitialProduct.copyWith(weight: weight))
      ],
    );
  });

  group('priceChanged', () {
    // arrange
    final price = Price.fromPrimitives(10, 'gram');
    blocTest(
      'should emit state with modified price',
      build: () => ProductFormBloc(
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
        initialState.copyWith(product: tInitialProduct.copyWith(price: price))
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
            product: tInitialProduct.copyWith(description: productDescription))
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
            product: tInitialProduct.copyWith(ingredients: ingredients))
      ],
    );
  });

  group('photosChanged', () {
    blocTest(
      'should emit state with modified photos',
      build: () => ProductFormBloc(
        authFacade: mockIAuthFacade,
        networkInfo: mockNetworkInfo,
        productRepository: mockIProductRepository,
        shopRepository: mockIShopRepository,
      ),
      seed: () => initialState,
      act: (ProductFormBloc bloc) => bloc.add(
        ProductFormEvent.photosChanged(photos: tPhotos),
      ),
      expect: () => [initialState.copyWith(productPhotos: tPhotos)],
    );
  });

  group('saved', () {
    blocTest(
      'if product is invalid emit [ERROR]',
      build: () => ProductFormBloc(
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
      'if photos are valid emit [LOADING]',
      build: () => ProductFormBloc(
        authFacade: mockIAuthFacade,
        networkInfo: mockNetworkInfo,
        productRepository: mockIProductRepository,
        shopRepository: mockIShopRepository,
      ),
      seed: () =>
          initialState.copyWith(product: tProduct, productPhotos: tPhotos),
      act: (ProductFormBloc bloc) => bloc.add(const ProductFormEvent.saved()),
      expect: () =>
          [ProductFormState.loading(product: tProduct, productPhotos: tPhotos)],
    );

//TODO
    // blocTest(
    //   'if photos are valid call IProductRepository.create',
    //   build: () => ProductFormBloc(
    //     authFacade: mockIAuthFacade,
    //     networkInfo: mockNetworkInfo,
    //     productRepository: mockIProductRepository,
    //     shopRepository: mockIShopRepository,
    //   ),
    //   seed: () =>
    //       initialState.copyWith(product: tProduct, productPhotos: tPhotos),
    //   act: (ProductFormBloc bloc) => bloc.add(const ProductFormEvent.saved()),
    //   verify: (_) {
    //     return verify(mockIProductRepository.create(tProduct));
    //   },
    // );

    blocTest(
      """after [ERROR] shoud reset saveFailureOrSuccessOption to none, 
      and hide errors if the product is valid""",
      build: () => ProductFormBloc(
        authFacade: mockIAuthFacade,
        networkInfo: mockNetworkInfo,
        productRepository: mockIProductRepository,
        shopRepository: mockIShopRepository,
      ),
      seed: () => initialState.copyWith(
          product: tProduct,
          productPhotos: tPhotos,
          showErrors: true,
          saveFailureOrSuccessOption:
              some(left(const ProductFailure.noInternetConnection()))),
      act: (ProductFormBloc bloc) => bloc.add(const ProductFormEvent.saved()),
      expect: () => [
        initialState.copyWith(
            product: tProduct,
            productPhotos: tPhotos,
            showErrors: false,
            saveFailureOrSuccessOption: none())
      ],
    );

    blocTest(
      'should emit [LOADED] with a failure after [LOADING] when an error occured',
      build: () => ProductFormBloc(
        authFacade: mockIAuthFacade,
        networkInfo: mockNetworkInfo,
        productRepository: mockIProductRepository,
        shopRepository: mockIShopRepository,
      ),
      seed: () =>
          ProductFormState.loading(product: tProduct, productPhotos: tPhotos),
      act: (ProductFormBloc bloc) => bloc.add(const ProductFormEvent.saved()),
      expect: () => [
        ProductFormState.loaded(
          product: tProduct,
          productPhotos: tPhotos,
          saveFailureOrSuccessOption:
              some(left(const ProductFailure.noInternetConnection())),
        )
      ],
    );
  });
}
