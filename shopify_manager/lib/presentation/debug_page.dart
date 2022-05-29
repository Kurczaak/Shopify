import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:barcode_widget/barcode_widget.dart' as barcodeWidget;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopify_domain/product.dart';
import 'package:shopify_manager/application/product/product_form/product_form_bloc.dart';
import 'package:shopify_domain/core.dart';

import 'package:shopify_manager/injection.dart';

import 'package:shopify_presentation/shopify_presentation.dart';

class DebugPage extends StatefulWidget {
  final Barcode barcode;
  final Product? product;
  const DebugPage({Key? key, required this.barcode, this.product})
      : super(key: key);
  static const double itemsSpacing = 20;

  @override
  State<DebugPage> createState() => _DebugPageState();
}

class _DebugPageState extends State<DebugPage> {
  final _productNameController = TextEditingController();
  final _brandNameController = TextEditingController();
  final _weightController = TextEditingController();
  final _ingredientsController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ProductFormBloc>(
      create: (context) {
        final bloc = getIt<ProductFormBloc>();
        final product = widget.product;
        if (product != null) {
          bloc.add(ProductFormEvent.productFound(product: widget.product!));

          if (product.name.isValid()) {
            _productNameController.text = product.name.getOrCrash();
          }
          if (product.brand.isValid()) {
            _brandNameController.text = product.brand.getOrCrash();
          }
          if (product.weight.weight.isValid()) {
            _weightController.text =
                product.weight.weight.getOrCrash().toString();
          }
          if (product.ingredients.isValid()) {
            _ingredientsController.text = product.ingredients.getOrCrash();
          }
        }

        return bloc;
      },
      child: BlocConsumer<ProductFormBloc, ProductFormState>(
        listener: ((context, state) {
          if (state.showErrors) {
            state.productForm.photos.fold(
                (urls) => urls.failureOrUnit.fold(
                    (failure) => FlushbarHelper.createError(
                            message: failure.stringifyValueFailure(
                                fieldName: 'Photos URLs'))
                        .show(context),
                    (_) => null),
                (files) => files.failureOrUnit.fold(
                    (failure) => FlushbarHelper.createError(
                            message: failure.stringifyValueFailure(
                                fieldName: 'Photos'))
                        .show(context),
                    (_) => null));
          }
        }),
        builder: (context, state) => Scaffold(
          body: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(28.0),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: DebugPage.itemsSpacing,
                        ),
                        SizedBox(
                          height: 100,
                          width: 150,
                          child: barcodeWidget.BarcodeWidget(
                            barcode: barcodeWidget.Barcode.code128(),
                            data: widget.barcode.getOrCrash(),
                          ),
                        ),
                        const SizedBox(
                          height: DebugPage.itemsSpacing,
                        ),
                        ShopifyDropdownMenuButton<Categories>(
                            initalText: 'Choose a Category',
                            onChanged: (newValue) {
                              context.read<ProductFormBloc>().add(
                                  ProductFormEvent.categoryChanged(
                                      category: newValue));
                            },
                            items: Categories.values
                                .map((category) => ShopifyDropdownMenuItem(
                                    value: category,
                                    valueString: category.stringify))
                                .toList()),
                        const SizedBox(
                          height: DebugPage.itemsSpacing,
                        ),
                        ShopifyTextFormField(
                          controller: _productNameController,
                          fieldName: 'Product Name',
                          showErrorMessages: state.showErrors,
                          validator: (_) => state.productForm.name.failureOrUnit
                              .fold(
                                  (failure) => failure.stringifyValueFailure(
                                      fieldName: 'Product Name'),
                                  (_) => null),
                          onChanged: (value) {
                            context.read<ProductFormBloc>().add(
                                ProductFormEvent.productNameChanged(
                                    productName: value));
                          },
                        ),
                        const SizedBox(
                          height: DebugPage.itemsSpacing,
                        ),
                        ShopifyTextFormField(
                          controller: _brandNameController,
                          fieldName: 'Brand',
                          showErrorMessages: state.showErrors,
                          validator: (_) =>
                              state.productForm.brand.failureOrUnit.fold(
                                  (failure) => failure.stringifyValueFailure(
                                      fieldName: 'Brand Name'),
                                  (_) => null),
                          onChanged: (value) {
                            context.read<ProductFormBloc>().add(
                                ProductFormEvent.brandNameChanged(
                                    brandName: value));
                          },
                        ),
                        const SizedBox(
                          height: DebugPage.itemsSpacing,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: ShopifyTextFormField(
                                keyboardType: TextInputType.number,
                                controller: _weightController,
                                fieldName: 'Net Weight',
                                showErrorMessages: state.showErrors,
                                validator: (_) =>
                                    state.productForm.weight.failureOrUnit.fold(
                                        (failure) =>
                                            failure.stringifyValueFailure(
                                                fieldName: 'Net Weight'),
                                        (_) => null),
                                onChanged: (value) {
                                  context.read<ProductFormBloc>().add(
                                      ProductFormEvent.weightNumberChanged(
                                          weightNumber: value));
                                },
                              ),
                            ),
                            const SizedBox(
                              width: DebugPage.itemsSpacing,
                            ),
                            SizedBox(
                              width: 100,
                              child: ShopifyDropdownMenuButton<WeightUnits>(
                                  initalText: 'Choose weight unit',
                                  onChanged: (newValue) {
                                    context.read<ProductFormBloc>().add(
                                        ProductFormEvent.weightUnitChanged(
                                            weightUnit: newValue));
                                  },
                                  initialValue: WeightUnits.gram,
                                  items: WeightUnits.values
                                      .map((unit) => ShopifyDropdownMenuItem(
                                            value: unit,
                                            valueString: unit.symbol,
                                          ))
                                      .toList()),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: DebugPage.itemsSpacing,
                        ),
                        ShopifyTextFormField(
                          fieldName: 'Description',
                          minLines: 3,
                          maxLines: 3,
                          showErrorMessages: state.showErrors,
                          validator: (_) =>
                              state.productForm.description.failureOrUnit.fold(
                                  (failure) => failure.stringifyValueFailure(
                                      fieldName: 'Product Description'),
                                  (_) => null),
                          onChanged: (value) {
                            context.read<ProductFormBloc>().add(
                                ProductFormEvent.productDescriptionChanged(
                                    productDescription: value));
                          },
                        ),
                        const SizedBox(
                          height: DebugPage.itemsSpacing,
                        ),
                        ShopifyTextFormField(
                          controller: _ingredientsController,
                          fieldName: 'Ingredients',
                          minLines: 3,
                          maxLines: 3,
                          showErrorMessages: state.showErrors,
                          validator: (_) =>
                              state.productForm.ingredients.failureOrUnit.fold(
                                  (failure) => failure.stringifyValueFailure(
                                      fieldName: 'Product Ingredients'),
                                  (_) => null),
                          onChanged: (value) {
                            context.read<ProductFormBloc>().add(
                                ProductFormEvent.ingredientsChanged(
                                    ingredients: value));
                          },
                        ),
                        const SizedBox(
                          height: DebugPage.itemsSpacing,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: ShopifyTextFormField(
                                  fieldName: 'Price',
                                  showErrorMessages: state.showErrors,
                                  validator: (_) => state
                                      .productForm.price.failureOrUnit
                                      .fold(
                                          (failure) =>
                                              failure.stringifyValueFailure(
                                                  fieldName: 'Price'),
                                          (_) => null),
                                  onChanged: (value) {
                                    context.read<ProductFormBloc>().add(
                                        ProductFormEvent.priceChanged(
                                            price: value));
                                  }),
                            ),
                            const SizedBox(
                              width: DebugPage.itemsSpacing,
                            ),
                            SizedBox(
                              width: 100,
                              child: ShopifyDropdownMenuButton<Currencies>(
                                  initalText: 'Choose Currency',
                                  onChanged: (newValue) {
                                    context.read<ProductFormBloc>().add(
                                        ProductFormEvent.currencyChanged(
                                            currency: newValue));
                                  },
                                  initialValue: Currencies.zl,
                                  items: Currencies.values
                                      .map((currency) =>
                                          ShopifyDropdownMenuItem<Currencies>(
                                            value: currency,
                                            valueString: currency.stringify,
                                          ))
                                      .toList()),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: DebugPage.itemsSpacing,
                        ),
                        ShopifyIconTextButton(
                            title: 'Photos',
                            subtitle: 'Upload product\'s photos',
                            icon: Icons.photo,
                            error: !state.productForm.photos
                                .fold((l) => l.isValid(), (r) => r.isValid()),
                            onPressed: () {
                              context.read<ProductFormBloc>().add(
                                  const ProductFormEvent.photosFilesChanged());
                            })
                      ],
                    ),
                  ),
                  state.productForm.photos.fold(
                    (shopifyUrls) => shopifyUrls.failureOrUnit.fold(
                        (failure) => Container(),
                        (_) => PhotosCarouselSlider.network(
                            shopifyUrls.getOrCrash())),
                    (photos) => photos.failureOrUnit.fold(
                        (failure) => Container(),
                        (_) =>
                            PhotosCarouselSlider.photos(photos.getOrCrash())),
                  ),
                  const SizedBox(
                    height: DebugPage.itemsSpacing,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(28.0),
                    child: SizedBox(
                        width: double.maxFinite,
                        height: 60,
                        child: ShopifyPrimaryButton(
                            onPressed: () {
                              // print('click');
                              // context
                              //     .read<ProductFormBloc>()
                              //     .add(const ProductFormEvent.saved());
                            },
                            text: 'Register Now')),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
