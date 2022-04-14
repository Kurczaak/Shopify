import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:barcode_widget/barcode_widget.dart' as widget;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopify_manager/application/product/product_form/product_form_bloc.dart';
import 'package:shopify_manager/domain/product/product_categories.dart';
import 'package:shopify_manager/injection.dart';
import 'package:shopify_manager/presentation/core/widgets/shopify_buttons.dart';
import 'package:shopify_manager/presentation/core/widgets/shopify_icon_text_button.dart';
import 'package:shopify_manager/presentation/core/widgets/shopify_text_form_field.dart';
import 'package:carousel_slider/carousel_slider.dart';

class DebugPage extends StatelessWidget {
  const DebugPage({Key? key}) : super(key: key);
  static const double itemsSpacing = 20;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ProductFormBloc>(
      create: (context) => getIt<ProductFormBloc>(),
      child: BlocConsumer<ProductFormBloc, ProductFormState>(
        listener: ((context, state) {}),
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
                          height: itemsSpacing,
                        ),
                        SizedBox(
                          height: 100,
                          width: 150,
                          child: widget.BarcodeWidget(
                            barcode: widget.Barcode.code128(),
                            data: 'Hello Flutter',
                          ),
                        ),
                        const SizedBox(
                          height: itemsSpacing,
                        ),
                        Container(
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(
                                  color: const Color(0x00818181).withOpacity(1),
                                  width: 1,
                                  style: BorderStyle.solid)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 25.0, vertical: 10),
                            child: DropdownButton<Categories>(
                                isExpanded: true,
                                underline: Container(),
                                style: Theme.of(context).textTheme.bodyText1,
                                value: Categories.bread,
                                items: Categories.values
                                    .map((category) => DropdownMenuItem(
                                        value: category,
                                        child: Text(category.name)))
                                    .toList(),
                                onChanged: (_) {}),
                          ),
                        ),
                        const SizedBox(
                          height: itemsSpacing,
                        ),
                        ShopifyTextFormField(
                            fieldName: 'Product Name',
                            value: right(''),
                            onChanged: (_) {}),
                        const SizedBox(
                          height: itemsSpacing,
                        ),
                        ShopifyTextFormField(
                            fieldName: 'Brand',
                            value: right(''),
                            onChanged: (_) {}),
                        const SizedBox(
                          height: itemsSpacing,
                        ),
                        ShopifyTextFormField(
                            fieldName: 'Net Weight',
                            value: right(''),
                            onChanged: (_) {}),
                        const SizedBox(
                          height: itemsSpacing,
                        ),
                        ShopifyTextFormField(
                            fieldName: 'Price',
                            value: right(''),
                            onChanged: (_) {}),
                        const SizedBox(
                          height: itemsSpacing,
                        ),
                        ShopifyTextFormField(
                            fieldName: 'Description',
                            minLines: 3,
                            maxLines: 3,
                            value: right(''),
                            onChanged: (_) {}),
                        const SizedBox(
                          height: itemsSpacing,
                        ),
                        ShopifyTextFormField(
                            fieldName: 'Ingredients',
                            minLines: 3,
                            maxLines: 3,
                            value: right(''),
                            onChanged: (_) {}),
                        const SizedBox(
                          height: itemsSpacing,
                        ),
                        ShopifyIconTextButton(
                            title: 'Photos',
                            subtitle: 'Upload product\'s photos',
                            icon: Icons.photo,
                            onPressed: () {
                              context
                                  .read<ProductFormBloc>()
                                  .add(const ProductFormEvent.photosChanged());
                            }),
                        const SizedBox(
                          height: itemsSpacing,
                        ),
                      ],
                    ),
                  ),
                  if (state.productForm.photos.failureOrUnit.isRight())
                    CarouselSlider.builder(
                      itemCount: state.productForm.photos.getOrCrash().size,
                      itemBuilder: (context, index, pageViewIndex) => Container(
                        height: 300,
                        width: 500,
                        color: Colors.red,
                        child: Image.file(
                          state.productForm.photos
                              .getOrCrash()
                              .get(index)
                              .getOrCrash(),
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                      options: CarouselOptions(
                        height: 300,
                        enableInfiniteScroll: false,
                        autoPlay: false,
                        enlargeCenterPage: true,
                        viewportFraction: 0.6,
                        initialPage: 1,
                      ),
                    ),
                  Padding(
                    padding: const EdgeInsets.all(28.0),
                    child: SizedBox(
                        width: double.maxFinite,
                        height: 60,
                        child: ShopifyPrimaryButton(
                            onPressed: () {}, text: 'Register Now')),
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
