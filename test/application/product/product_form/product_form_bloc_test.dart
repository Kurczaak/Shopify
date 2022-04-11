import 'package:shopify_manager/application/product/product_form/product_form_bloc.dart';
import 'package:shopify_manager/domain/product/product_categories.dart';
import 'package:shopify_manager/domain/product/value_objects.dart';
import 'package:bloc_test/bloc_test.dart';

void main() {
  final initialState = ProductFormState.initial();
  final tInitialProduct = initialState.product;

  blocTest<ProductFormBloc, ProductFormState>('asd',
      build: () => ProductFormBloc(),
      seed: () => ProductFormState.initial().copyWith(product: tInitialProduct),
      act: (ProductFormBloc bloc) => bloc.add(ProductFormEvent.categoryChanged(
          category: Category(Categories.fish))),
      expect: () => [
            initialState.copyWith(
                product: tInitialProduct.copyWith(
                    category: Category(Categories.fish)))
          ]);
}
