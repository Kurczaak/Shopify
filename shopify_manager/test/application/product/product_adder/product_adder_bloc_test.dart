import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:shopify_domain/core/network/network_info.dart';
import 'package:shopify_manager/application/product/product_adder/product_adder_bloc.dart';
import 'package:shopify_manager/domain/product/i_product_repository.dart';
import '../../../fixtures/test_product.dart';
import 'product_adder_bloc_test.mocks.dart';

@GenerateMocks([IProductRepository, NetworkInfo])
void main() {
  late ProductAdderBloc bloc;
  late MockIProductRepository mockShopRepository;
  late MockNetworkInfo mockNetworkInfo;

  final tProduct = fixtureProduct;

  setUp(() {
    mockShopRepository = MockIProductRepository();
    mockNetworkInfo = MockNetworkInfo();
    bloc = ProductAdderBloc(
        networkInfo: mockNetworkInfo, productRepository: mockShopRepository);
  });

  group('initialize', () {
    blocTest('should emit a state with the initialized shop',
        build: () => bloc,
        act: (ProductAdderBloc bloc) =>
            bloc.add(ProductAdderEvent.initialize(product: tProduct)),
        expect: () =>
            [ProductAdderState.initial().copyWith(product: tProduct)]);
  });
}
