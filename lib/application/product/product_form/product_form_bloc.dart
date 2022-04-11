import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:shopify_manager/domain/core/images/photo.dart';
import 'package:shopify_manager/domain/core/value_objects.dart';
import 'package:shopify_manager/domain/product/price.dart';
import 'package:shopify_manager/domain/product/product.dart';
import 'package:shopify_manager/domain/product/product_failure.dart';
import 'package:shopify_manager/domain/product/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopify_manager/domain/product/weight.dart';
import 'package:super_enum_sealed_annotations/super_enum_sealed_annotations.dart';

part 'product_form_event.dart';
part 'product_form_state.dart';
part 'product_form_bloc.super.dart';
part 'product_form_bloc.freezed.dart';

class ProductFormBloc extends Bloc<ProductFormEvent, ProductFormState> {
  ProductFormBloc() : super(ProductFormState.initial()) {
    on<ProductFormEvent>((event, emit) {
      event.when(
        categoryChanged: (changedCategory) {
          print(state.product.category);
          print('Changed Category');
          emit(state.copyWith(
              product:
                  state.product.copyWith(category: changedCategory.category)));
          print('Emitted a new state');
          print(changedCategory.category);
        },
        productNameChanged: (productNameChanged) {},
        brandNameChanged: (brandNameChanged) {},
        weightChanged: (weightChanged) {},
        priceChanged: (priceChanged) {},
        productDescriptionChanged: (productDescriptionChanged) {},
        ingredientsChanged: (ingredientsChanged) {},
        photosChanged: (photosChanged) {},
        saved: () {},
      );
    });
  }
}
