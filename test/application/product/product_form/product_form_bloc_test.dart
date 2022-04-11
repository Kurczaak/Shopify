import 'package:bloc_test/bloc_test.dart';
import 'package:shopify_manager/application/product/product_form/product_form_bloc.dart';
import 'package:shopify_manager/domain/product/product_categories.dart';
import 'package:shopify_manager/domain/product/value_objects.dart';

void main() {
  blocTest(
    'asd',
    build: () => ProductFormBloc(),
    act: (ProductFormBloc bloc) => bloc.add(
        ProductFormEvent.categoryChanged(category: Category(Categories.Bread))),
  );
}
