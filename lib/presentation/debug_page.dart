import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:barcode_widget/barcode_widget.dart' as barcodeWidget;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopify_manager/application/product/product_form/product_form_bloc.dart';
import 'package:shopify_manager/domain/product/product.dart';
import 'package:shopify_manager/domain/product/product_categories.dart';
import 'package:shopify_manager/domain/product/value_objects.dart';
import 'package:shopify_manager/domain/product/weight.dart';
import 'package:shopify_manager/injection.dart';
import 'package:shopify_manager/presentation/core/widgets/shopify_buttons.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:shopify_manager/presentation/core/widgets/shopify_text_form_field.dart';

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
  final CarouselController _controller = CarouselController();
  int _current = 0;
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

          if (product.name.isValid())
            _productNameController.text = product.name.getOrCrash();
          if (product.brand.isValid())
            _brandNameController.text = product.brand.getOrCrash();
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
                        Container(
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(
                                  color: Theme.of(context).colorScheme.outline,
                                  width: 1,
                                  style: BorderStyle.solid)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 25.0, vertical: 10),
                            child: DropdownButton<Categories>(
                                isExpanded: true,
                                underline: Container(),
                                value: Categories.bread,
                                items: Categories.values
                                    .map((category) => DropdownMenuItem(
                                        value: category,
                                        child: Text(
                                          category.name,
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText1,
                                        )))
                                    .toList(),
                                onChanged: (_) {}),
                          ),
                        ),
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
                                    productName: ProductName(value)));
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
                                      fieldName: 'BrandName'),
                                  (_) => null),
                          onChanged: (value) {
                            context.read<ProductFormBloc>().add(
                                ProductFormEvent.brandNameChanged(
                                    brandName: BrandName(value)));
                          },
                        ),
                        const SizedBox(
                          height: DebugPage.itemsSpacing,
                        ),
                        ShopifyTextFormField(
                          controller: _weightController,
                          fieldName: 'Net Weight',
                          showErrorMessages: state.showErrors,
                          validator: (_) =>
                              state.productForm.weight.failureOrUnit.fold(
                                  (failure) => failure.stringifyValueFailure(
                                      fieldName: 'Net Weight'),
                                  (_) => null),
                          onChanged: (value) {
                            context.read<ProductFormBloc>().add(
                                ProductFormEvent.weightChanged(
                                    weight: Weight.fromPrimitives(
                                        double.parse(value), 'kilogram')));
                          },
                        ),
                        const SizedBox(
                          height: DebugPage.itemsSpacing,
                        ),
                        // ShopifyTextFormField(
                        //     fieldName: 'Price', onChanged: (_) {}),
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
                                    productDescription:
                                        ProductDescription(value)));
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
                                    ingredients: ProductDescription(value)));
                          },
                        ),
                        const SizedBox(
                          height: DebugPage.itemsSpacing,
                        ),
                        // ShopifyIconTextButton(
                        //     title: 'Photos',
                        //     subtitle: 'Upload product\'s photos',
                        //     icon: Icons.photo,
                        //     error: !state.productForm.photos.isValid(),
                        //     onPressed: () {
                        //       context
                        //           .read<ProductFormBloc>()
                        //           .add(const ProductFormEvent.photosChanged());
                        //     }),
                        const SizedBox(
                          height: DebugPage.itemsSpacing,
                        ),
                      ],
                    ),
                  ),
                  state.productForm.photos.fold((urls) {
                    if (urls.failureOrUnit.isRight()) {
                      return Column(
                        children: [
                          CarouselSlider.builder(
                            carouselController: _controller,
                            itemCount: urls.length,
                            itemBuilder: (context, index, pageViewIndex) =>
                                Container(
                              margin: const EdgeInsets.all(5.0),
                              child: ClipRRect(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(5.0)),
                                  child: Stack(
                                    children: <Widget>[
                                      Image.network(
                                        urls
                                            .getOrCrash()
                                            .get(index)
                                            .getOrCrash(),
                                        fit: BoxFit.fitWidth,
                                      ),
                                      Positioned(
                                        bottom: 0.0,
                                        left: 0.0,
                                        right: 0.0,
                                        child: Container(
                                          decoration: const BoxDecoration(
                                            gradient: LinearGradient(
                                              colors: [
                                                Color.fromARGB(200, 0, 0, 0),
                                                Color.fromARGB(0, 0, 0, 0)
                                              ],
                                              begin: Alignment.bottomCenter,
                                              end: Alignment.topCenter,
                                            ),
                                          ),
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 10.0, horizontal: 20.0),
                                          child: Text(
                                            '#${index + 1}',
                                            style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )),
                            ),
                            options: CarouselOptions(
                              onPageChanged: (index, reason) {
                                setState(() {
                                  _current = index;
                                });
                              },
                              aspectRatio: 2.0,
                              enableInfiniteScroll: false,
                              autoPlay: false,
                              enlargeCenterPage: true,
                              viewportFraction: 0.5,
                              initialPage: 0,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: urls
                                .getOrCrash()
                                .asList()
                                .asMap()
                                .entries
                                .map((entry) {
                              return GestureDetector(
                                onTap: () =>
                                    _controller.animateToPage(entry.key),
                                child: Container(
                                  width: 12.0,
                                  height: 12.0,
                                  margin: const EdgeInsets.symmetric(
                                      vertical: 8.0, horizontal: 4.0),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: (Theme.of(context).brightness ==
                                                  Brightness.dark
                                              ? Colors.white
                                              : Theme.of(context).primaryColor)
                                          .withOpacity(_current == entry.key
                                              ? 0.9
                                              : 0.4)),
                                ),
                              );
                            }).toList(),
                          ),
                        ],
                      );
                    } else {
                      return Container();
                    }
                  }, (filePhotos) => Container()),
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
