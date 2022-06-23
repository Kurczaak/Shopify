import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:shopify_client/application/product_preview/product_preview_bloc.dart';
import 'package:shopify_client/domain/product/i_product_repository.dart';
import 'package:shopify_domain/product/product.dart';
import 'package:shopify_domain/product/product_failure.dart';
import 'package:shopify_domain/shop/shop.dart';

import '../product_watcher/product_watcher_bloc_test.mocks.dart';

@GenerateMocks([IProductRepository])
void main() {
  late MockIProductRepository mockProductRepository;
  late ProductPreviewBloc bloc;
  late Shop tShop;
  late Product tProduct;

  setUp(() {
    mockProductRepository = MockIProductRepository();
    bloc = ProductPreviewBloc(mockProductRepository);
    tShop = Shop.empty();
    tProduct = Product.empty();
  });
  blocTest('check initial state',
      build: () => bloc,
      verify: (ProductPreviewBloc bloc) {
        expect(
            bloc.state,
            ProductPreviewState(
                shopOption: none(),
                productOption: none(),
                isFavourite: false,
                failureOption: none(),
                isLoading: false));
      });

  group('initialized', () {
    blocTest('should call product repository',
        build: () => bloc,
        act: (ProductPreviewBloc bloc) => bloc.add(
            ProductPreviewEvent.initialized(
                shop: tShop, productId: tProduct.id)),
        verify: (ProductPreviewBloc bloc) {
          verify(mockProductRepository.getProductById(tProduct.id));
        });
    blocTest(
      'should emit [LOADING] and [INITIALIZED] states',
      build: () => bloc,
      expect: () => [
        ProductPreviewState.initial().copyWith(isLoading: true),
        ProductPreviewState.initial().copyWith(
            isLoading: false,
            shopOption: some(tShop),
            productOption: some(tProduct)),
      ],
    );

    blocTest(
      'should emit [LOADING] and [ERROR] states if failure occured',
      build: () => bloc,
      setUp: () {
        when(mockProductRepository.getProductById(tProduct.id)).thenAnswer(
            (_) async => left(const ProductFailure.insufficientPermission()));
      },
      expect: () => [
        ProductPreviewState.initial().copyWith(isLoading: true),
        ProductPreviewState.error(
            previousState: ProductPreviewState.initial(),
            failure: const ProductFailure.insufficientPermission()),
      ],
    );
  });
}
