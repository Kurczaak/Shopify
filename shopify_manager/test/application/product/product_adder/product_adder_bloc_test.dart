import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:shopify_domain/core.dart';
import 'package:shopify_domain/core/network/network_info.dart';
import 'package:shopify_domain/product.dart';
import 'package:shopify_domain/shop.dart';
import 'package:shopify_manager/application/product/product_adder/product_adder_bloc.dart';
import 'package:shopify_manager/domain/product/i_product_repository.dart';
import '../../../fixtures/test_product.dart';
import 'product_adder_bloc_test.mocks.dart';

@GenerateMocks([IProductRepository, NetworkInfo])
void main() {
  late ProductAdderBloc bloc;
  late MockIProductRepository mockShopRepository;
  late MockNetworkInfo mockNetworkInfo;
  late ProductAdderState initializedSate;

  late Product tProduct;
  late Shop tShop;
  late List<Shop> shopsList;
  late Price tPrice;

  setUp(() {
    mockShopRepository = MockIProductRepository();
    mockNetworkInfo = MockNetworkInfo();
    bloc = ProductAdderBloc(
        networkInfo: mockNetworkInfo, productRepository: mockShopRepository);
    tProduct = fixtureProduct;
    tShop = Shop.empty();
    shopsList = [tShop, tShop];
    tPrice =
        Price(currency: Currency(Currencies.zl), price: PositiveNumber(12.99));
    initializedSate = ProductAdderState.initial().copyWith(product: tProduct);
  });

  group('initialize', () {
    blocTest('should emit a state with the initialized shop',
        build: () => bloc,
        act: (ProductAdderBloc bloc) =>
            bloc.add(ProductAdderEvent.initialize(product: tProduct)),
        expect: () => [initializedSate]);
  });

  group('priceNumberStringChanged', () {
    const correctPriceString = '12.99';
    const incorrectPriceString = '12.2.1';
    const incorrectPrecisionPriceString = '12.999';
    blocTest(
      'should emit a state with changed price',
      build: () => bloc,
      seed: () => initializedSate,
      act: (ProductAdderBloc bloc) => bloc.add(
          const ProductAdderEvent.priceNumberStringChanged(
              priceNumber: correctPriceString)),
      expect: () => [
        initializedSate.copyWith(
            price: initializedSate.price
                .copyWith(price: PositiveNumber.fromString(correctPriceString)))
      ],
    );
    blocTest(
      'should emit state with an incorrect price',
      build: () => bloc,
      seed: () => initializedSate,
      act: (ProductAdderBloc bloc) => bloc.add(
          const ProductAdderEvent.priceNumberStringChanged(
              priceNumber: incorrectPriceString)),
      expect: () => [
        initializedSate.copyWith(
            price: initializedSate.price.copyWith(
          price: PositiveNumber.fromString(incorrectPriceString),
        ))
      ],
    );
  });

  group('priceCurrencyChanged', () {
    blocTest(
      'should emit a state witch changed currency',
      build: () => bloc,
      seed: () => initializedSate,
      act: (ProductAdderBloc bloc) => bloc.add(
          const ProductAdderEvent.priceCurrencyChanged(
              currency: Currencies.eur)),
      expect: () => [
        initializedSate.copyWith(
            price: initializedSate.price
                .copyWith(currency: Currency(Currencies.eur)))
      ],
    );

    blocTest(
      'should not emit any state if currency stays the same',
      build: () => bloc,
      seed: () => initializedSate,
      act: (ProductAdderBloc bloc) => bloc.add(
          const ProductAdderEvent.priceCurrencyChanged(
              currency: Currencies.zl)),
      expect: () => [],
    );
  });

  group('selectedShopsChanged', () {
    blocTest(
      'should emit a state witch changed shops list',
      build: () => bloc,
      seed: () => initializedSate,
      act: (ProductAdderBloc bloc) =>
          bloc.add(ProductAdderEvent.selectedShopsChanged(shops: shopsList)),
      expect: () => [initializedSate.copyWith(selectedShops: shopsList)],
    );
  });

  group('saved', () {
    setUp(() {
      when(mockNetworkInfo.isConnected).thenAnswer((_) async => true);
    });

    const incorrectPriceString = '12..92.3';
    blocTest(
      'should emit error state given incorrect price',
      build: () => bloc,
      seed: () => initializedSate,
      act: (ProductAdderBloc bloc) {
        bloc.add(const ProductAdderEvent.priceNumberStringChanged(
            priceNumber: incorrectPriceString));
        bloc.add(const ProductAdderEvent.saved());
      },
      expect: () => [
        initializedSate.copyWith(
            price: initializedSate.price.copyWith(
          price: PositiveNumber.fromString(incorrectPriceString),
        )),
        initializedSate.copyWith(
          price: initializedSate.price.copyWith(
            price: PositiveNumber.fromString(incorrectPriceString),
          ),
          showErrors: true,
        )
      ],
    );

    blocTest(
      'should emit error state given empty shop list',
      build: () => bloc,
      seed: () => initializedSate,
      act: (ProductAdderBloc bloc) => bloc.add(const ProductAdderEvent.saved()),
      expect: () => [
        initializedSate.copyWith(
          showErrors: true,
        )
      ],
    );

    blocTest(
      'should check internet connection',
      build: () => bloc,
      seed: () => initializedSate.copyWith(
          price: Price.fromPrimitives(12.99, 'zl'), selectedShops: shopsList),
      act: (ProductAdderBloc bloc) => bloc.add(const ProductAdderEvent.saved()),
      verify: (ProductAdderBloc bloc) {
        verify(mockNetworkInfo.isConnected);
      },
    );
    blocTest('should emit error state when no internet connection is present',
        build: () => bloc,
        setUp: () {
          when(mockNetworkInfo.isConnected).thenAnswer((_) async => false);
        },
        seed: () => initializedSate,
        act: (ProductAdderBloc bloc) =>
            bloc.add(const ProductAdderEvent.saved()),
        verify: (ProductAdderBloc bloc) {
          verify(mockNetworkInfo.isConnected);
        },
        expect: () => [
              initializedSate.copyWith(
                  showErrors: true,
                  saveFailureOrSuccessOption:
                      some(left(const ProductFailure.noInternetConnection())))
            ]);

    blocTest(
      'should add the product to each shop',
      build: () => bloc,
      seed: () =>
          initializedSate.copyWith(selectedShops: shopsList, price: tPrice),
      act: (ProductAdderBloc bloc) => bloc.add(const ProductAdderEvent.saved()),
      setUp: () {
        when(mockShopRepository.addToShop(tProduct, tShop, tPrice))
            .thenAnswer((_) async => right(unit));
      },
      wait: const Duration(seconds: 1),
      verify: (ProductAdderBloc bloc) {
        verify(mockShopRepository.addToShop(tProduct, tShop, tPrice))
            .called(shopsList.length);
      },
    );

    blocTest(
        'should emit loading, and successfully loaded state given valid data',
        build: () => bloc,
        seed: () =>
            initializedSate.copyWith(selectedShops: shopsList, price: tPrice),
        act: (ProductAdderBloc bloc) =>
            bloc.add(const ProductAdderEvent.saved()),
        setUp: () {
          when(mockShopRepository.addToShop(tProduct, tShop, tPrice))
              .thenAnswer((_) async => right(unit));
        },
        expect: () => [
              initializedSate.copyWith(
                  selectedShops: shopsList, price: tPrice, isLoading: true),
              initializedSate.copyWith(
                  selectedShops: shopsList,
                  price: tPrice,
                  isLoading: false,
                  saveFailureOrSuccessOption: some(right(unit))),
            ]);

    blocTest(
        'should emit loading, and unsuccessfully loaded state given valid data and save failure',
        build: () => bloc,
        seed: () =>
            initializedSate.copyWith(selectedShops: shopsList, price: tPrice),
        act: (ProductAdderBloc bloc) =>
            bloc.add(const ProductAdderEvent.saved()),
        setUp: () {
          when(mockShopRepository.addToShop(tProduct, tShop, tPrice))
              .thenAnswer((_) async =>
                  left(const ProductFailure.insufficientPermission()));
        },
        expect: () => [
              initializedSate.copyWith(
                  selectedShops: shopsList, price: tPrice, isLoading: true),
              initializedSate.copyWith(
                  selectedShops: shopsList,
                  price: tPrice,
                  isLoading: false,
                  saveFailureOrSuccessOption: some(
                      left(const ProductFailure.insufficientPermission()))),
            ]);
  });
}
