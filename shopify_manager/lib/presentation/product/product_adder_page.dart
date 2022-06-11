import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopify_domain/product.dart';
import 'package:shopify_manager/application/product/product_adder/product_adder_bloc.dart';
import 'package:shopify_manager/injection.dart';
import 'package:shopify_manager/presentation/product/widgets/your_shops_selector_widget.dart';
import 'package:shopify_manager/presentation/routes/router.gr.dart';
import 'package:shopify_presentation/shopify_presentation.dart';

class ProductAdderPage extends StatefulWidget {
  const ProductAdderPage({Key? key, required this.product}) : super(key: key);
  final Product product;

  @override
  State<ProductAdderPage> createState() => _ProductAdderPageState();
}

class _ProductAdderPageState extends State<ProductAdderPage> {
  late Product product;
  @override
  void initState() {
    product = widget.product;
    super.initState();
  }

  final double horizontalPadding = 10;

  final controller = CarouselController();
  final priceController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ProductAdderBloc>()
        ..add(ProductAdderEvent.initialize(product: product)),
      child: Scaffold(
          appBar: ShopifyAppBar(title: 'Add to your shops', appBar: AppBar()),
          body: BlocConsumer<ProductAdderBloc, ProductAdderState>(
            listenWhen: (previous, current) {
              if (!previous.showErrors && current.showErrors) {
                FlushbarHelper.createError(
                        message:
                            'Make sure to select at least one shop and specify the price')
                    .show(context);
              }
              if (previous.saveFailureOrSuccessOption.isNone() &&
                  current.saveFailureOrSuccessOption.isSome()) {
                current.saveFailureOrSuccessOption.fold(
                    () => null,
                    (some) => some.fold(
                          (failure) => showDialog(
                              context: context,
                              builder: (context) => ShopifyAlertDialog(
                                    title: 'Error',
                                    subtitle: failure.map(
                                        noInternetConnection: (_) =>
                                            'No internet connection',
                                        productNotFound: (_) =>
                                            "Product not found",
                                        shopNotFound: (_) =>
                                            'Could not find given shop',
                                        valueFailure: (valueFailure) =>
                                            valueFailure.failure
                                                .stringifyValueFailure(),
                                        timeout: (_) =>
                                            'Connection timeout. Try again later or check your internet connection',
                                        unexpected: (_) =>
                                            'An unexpected error has occured',
                                        insufficientPermission: (_) =>
                                            'Insufficient Permission',
                                        unableToUpdate: (_) =>
                                            'Unable to update'),
                                    type: DialogType.error,
                                    onConfirm: () {
                                      context.router.pop();
                                    },
                                  )),
                          (success) => showDialog(
                            context: context,
                            builder: (context) => ShopifyAlertDialog(
                              title: 'Success',
                              subtitle:
                                  'Your product has been added succesfully',
                              onConfirm: () {
                                context.router.popUntilRouteWithName(
                                    DebugDashboardRoute.name);
                              },
                            ),
                          ),
                        ));
              }

              return true;
            },
            listener: (context, state) {},
            builder: (context, state) => Center(
              child: ListView(
                children: [
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: horizontalPadding),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Text('Product Overview',
                              style: Theme.of(context).textTheme.titleLarge),
                        ),
                        const SizedBox(height: 20),
                        Text(product.name.getOrCrash(),
                            style: Theme.of(context).textTheme.titleLarge),
                        Text('Brand: ${product.brand.getOrCrash()}',
                            style: Theme.of(context).textTheme.titleMedium),
                        Text('Category: ${product.category.getOrCrash().name}',
                            style: Theme.of(context).textTheme.titleMedium),
                        Text(
                            'Weight: ${product.weight.weight.getOrCrash().toString()} g',
                            style: Theme.of(context).textTheme.titleMedium),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  NetworkImageCarouselSlider(
                      photos: product.photos.getOrCrash()),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: horizontalPadding),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        ExpandableDescription(
                          description: product.description,
                          title: 'Description',
                          bottomPadding: 10,
                        ),
                        ExpandableDescription(
                          description: product.ingredients,
                          title: 'Ingredients',
                          bottomPadding: 10,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        ExpandableNutritionFacts(
                            nutrientFacts: product.nutrientFacts),
                        const SizedBox(
                          height: 20,
                        ),
                        Center(
                          child: Text('Select shops',
                              style: Theme.of(context).textTheme.titleLarge),
                        ),
                        const SizedBox(height: 20),
                        YourShopsSelectorWidget(
                            showErrors: state.showErrors,
                            onChangeSelectedShops: (selectedShops) {
                              context.read<ProductAdderBloc>().add(
                                  ProductAdderEvent.selectedShopsChanged(
                                      shops: selectedShops));
                            }),
                        const SizedBox(
                          height: 20,
                        ),
                        Center(
                          child: Text('Add price',
                              style: Theme.of(context).textTheme.titleLarge),
                        ),
                        const SizedBox(height: 20),
                        Row(
                          children: [
                            Expanded(
                              child: ShopifyTextFormField(
                                  fieldName: 'Price',
                                  keyboardType: TextInputType.number,
                                  showErrorMessages: state.showErrors,
                                  controller: priceController,
                                  validator: (_) => state.price.failureOrUnit
                                      .fold(
                                          (failure) =>
                                              failure.stringifyValueFailure(
                                                  fieldName: 'Price'),
                                          (_) => null),
                                  onChanged: (value) {
                                    context.read<ProductAdderBloc>().add(
                                        ProductAdderEvent
                                            .priceNumberStringChanged(
                                                priceNumber: value));
                                  }),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            SizedBox(
                              width: 100,
                              child: ShopifyDropdownMenuButton<Currencies>(
                                  initalText: 'Choose Currency',
                                  onChanged: (newValue) {
                                    context.read<ProductAdderBloc>().add(
                                        ProductAdderEvent.priceCurrencyChanged(
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
                        const SizedBox(height: 20),
                        SizedBox(
                            height: 60,
                            child: ShopifyPrimaryButton(
                                onPressed: () {
                                  context
                                      .read<ProductAdderBloc>()
                                      .add(const ProductAdderEvent.saved());
                                },
                                text: 'Add to your shops')),
                        const SizedBox(height: 20),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
