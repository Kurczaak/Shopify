import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/collection.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:shopify_client/infrastructure/shop/shop_repository.dart';
import 'package:shopify_domain/auth/user.dart';
import 'package:shopify_domain/core.dart';
import 'package:shopify_domain/shop.dart';
import 'shop_repository_test.mocks.dart';

// ignore: must_be_immutable
class MockShopLogo extends Mock implements ShopLogo {}

@GenerateMocks([ShopifyShopRepository, Shop, ShopifyUser, Location])
void main() {
  late MockShopifyShopRepository mockShopifyShopRepository;
  late ShopRepositoryImpl shopRepositoryImpl;

  final mockShop = MockShop();
  final mockLogo = MockShopLogo();
  final mockUser = MockShopifyUser();
  final mockLocation = MockLocation();
  const tRadius = 10.0;

  setUp(() {
    mockShopifyShopRepository = MockShopifyShopRepository();
    shopRepositoryImpl = ShopRepositoryImpl(mockShopifyShopRepository);
  });
  group('create', () {
    final callOutput = right<ShopFailure, Unit>(unit);
    test(
      'should call ShopifyShopRepository.create',
      () async {
        // arrange
        when(mockShopifyShopRepository.create(mockShop, mockLogo, mockUser))
            .thenAnswer((_) async => callOutput);
        // act
        shopRepositoryImpl.create(mockShop, mockLogo, mockUser);
        // assert
        verify(mockShopifyShopRepository.create(mockShop, mockLogo, mockUser))
            .called(1);
      },
    );
    test(
      'should return the result of ShopifyShopRepository.create',
      () async {
        // arrange
        when(mockShopifyShopRepository.create(mockShop, mockLogo, mockUser))
            .thenAnswer((_) async => callOutput);
        // act
        final result =
            await shopRepositoryImpl.create(mockShop, mockLogo, mockUser);
        // assert
        expect(result, callOutput);
      },
    );
  });

  group('delete', () {
    final callOutput = right<ShopFailure, Unit>(unit);
    test(
      'should call ShopifyShopRepository.delete',
      () async {
        // arrange

        when(mockShopifyShopRepository.delete(mockShop))
            .thenAnswer((_) async => callOutput);
        // act
        shopRepositoryImpl.delete(mockShop);
        // assert
        verify(mockShopifyShopRepository.delete(mockShop)).called(1);
      },
    );
    test(
      'should return the result of ShopifyShopRepository.delete',
      () async {
        // arrange
        when(mockShopifyShopRepository.delete(mockShop))
            .thenAnswer((_) async => callOutput);
        // act
        final result = await shopRepositoryImpl.delete(mockShop);
        // assert
        expect(result, callOutput);
      },
    );
  });

  group('update', () {
    final callOutput = right<ShopFailure, Unit>(unit);
    test(
      'should call ShopifyShopRepository.update',
      () async {
        // arrange
        when(mockShopifyShopRepository.update(mockShop))
            .thenAnswer((_) async => callOutput);
        // act
        shopRepositoryImpl.update(mockShop);
        // assert
        verify(mockShopifyShopRepository.update(mockShop)).called(1);
      },
    );
    test(
      'should return the result of ShopifyShopRepository.update',
      () async {
        // arrange
        when(mockShopifyShopRepository.update(mockShop))
            .thenAnswer((_) async => callOutput);
        // act
        final result = await shopRepositoryImpl.update(mockShop);
        // assert
        expect(result, callOutput);
      },
    );
  });

  group('watchAll', () {
    final callOutput = Stream<Either<ShopFailure, KtList<Shop>>>.fromIterable([
      right(KtList.from([mockShop, mockShop, mockShop]))
    ]);
    test(
      'should call ShopifyShopRepository.watchAll',
      () async {
        // arrange
        when(mockShopifyShopRepository.watchAll())
            .thenAnswer((_) => callOutput);
        // act
        shopRepositoryImpl.watchAll();
        // assert
        verify(mockShopifyShopRepository.watchAll()).called(1);
      },
    );
    test(
      'should return the result of ShopifyShopRepository.watchAll',
      () async {
        // arrange
        when(mockShopifyShopRepository.watchAll())
            .thenAnswer((_) => callOutput);
        // act
        final result = shopRepositoryImpl.watchAll();
        // assert
        expect(result, callOutput);
      },
    );
  });

  group('watchNearby', () {
    final callOutput = Stream<Either<ShopFailure, KtList<Shop>>>.fromIterable([
      right(KtList.from([mockShop, mockShop, mockShop]))
    ]);
    test(
      'watchNearby should call ShopifyShopRepository.watchNearby',
      () async {
        // arrange

        when(mockShopifyShopRepository.watchNearby(mockLocation, tRadius))
            .thenAnswer((_) => callOutput);
        // act
        shopRepositoryImpl.watchNearby(mockLocation, tRadius);
        // assert
        verify(mockShopifyShopRepository.watchNearby(mockLocation, tRadius))
            .called(1);
      },
    );
    test(
      'should return the result of ShopifyShopRepository.watchNearby',
      () async {
        // arrange
        when(mockShopifyShopRepository.watchNearby(mockLocation, tRadius))
            .thenAnswer((_) => callOutput);
        // act
        final result = shopRepositoryImpl.watchNearby(mockLocation, tRadius);
        // assert
        expect(result, callOutput);
      },
    );
  });
}
