import 'package:flutter/material.dart';
import 'package:barcode_widget/barcode_widget.dart' as widget;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopify_manager/application/product/product_form/product_form_bloc.dart';
import 'package:shopify_manager/domain/product/product_categories.dart';
import 'package:shopify_manager/injection.dart';
import 'package:shopify_manager/presentation/core/widgets/shopify_buttons.dart';
import 'package:shopify_manager/presentation/core/widgets/shopify_icon_text_button.dart';
import 'package:carousel_slider/carousel_slider.dart';

class DebugPage extends StatefulWidget {
  const DebugPage({Key? key}) : super(key: key);
  static const double itemsSpacing = 20;

  @override
  State<DebugPage> createState() => _DebugPageState();
}

class _DebugPageState extends State<DebugPage> {
  final CarouselController _controller = CarouselController();
  int _current = 0;

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
                          height: DebugPage.itemsSpacing,
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
                        const Text('ASDASDASD'),
                        // ShopifyTextFormField(
                        //     fieldName: 'Product Name',
                        //     value: ' ',
                        //     onChanged: (_) {}),
                        // const SizedBox(
                        //   height: DebugPage.itemsSpacing,
                        // ),
                        // ShopifyTextFormField(
                        //     fieldName: 'Brand',
                        //     value: ' ',
                        //     onChanged: (_) {}),
                        // const SizedBox(
                        //   height: DebugPage.itemsSpacing,
                        // ),
                        // ShopifyTextFormField(
                        //     fieldName: 'Net Weight',
                        //     value: ' ',
                        //     onChanged: (_) {}),
                        // const SizedBox(
                        //   height: DebugPage.itemsSpacing,
                        // ),
                        // ShopifyTextFormField(
                        //     fieldName: 'Price',
                        //     value: ' ',
                        //     onChanged: (_) {}),
                        // const SizedBox(
                        //   height: DebugPage.itemsSpacing,
                        // ),
                        // ShopifyTextFormField(
                        //     fieldName: 'Description',
                        //     minLines: 3,
                        //     maxLines: 3,
                        //     value: ' ',
                        //     onChanged: (_) {}),
                        // const SizedBox(
                        //   height: DebugPage.itemsSpacing,
                        // ),
                        // ShopifyTextFormField(
                        //     fieldName: 'Ingredients',
                        //     minLines: 3,
                        //     maxLines: 3,
                        //     value: ' ',
                        //     onChanged: (_) {}),
                        const SizedBox(
                          height: DebugPage.itemsSpacing,
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
                          height: DebugPage.itemsSpacing,
                        ),
                      ],
                    ),
                  ),
                  if (state.productForm.photos.failureOrUnit.isRight())
                    CarouselSlider.builder(
                      carouselController: _controller,
                      itemCount: state.productForm.photos.getOrCrash().size,
                      itemBuilder: (context, index, pageViewIndex) => Container(
                        margin: const EdgeInsets.all(5.0),
                        child: ClipRRect(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(5.0)),
                            child: Stack(
                              children: <Widget>[
                                Image.file(
                                  state.productForm.photos
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
                  if (state.productForm.photos.failureOrUnit.isRight())
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: state.productForm.photos
                          .getOrCrash()
                          .asList()
                          .asMap()
                          .entries
                          .map((entry) {
                        return GestureDetector(
                          onTap: () => _controller.animateToPage(entry.key),
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
                                    .withOpacity(
                                        _current == entry.key ? 0.9 : 0.4)),
                          ),
                        );
                      }).toList(),
                    ),
                  Padding(
                    padding: const EdgeInsets.all(28.0),
                    child: SizedBox(
                        width: double.maxFinite,
                        height: 60,
                        child: ShopifyPrimaryButton(
                            onPressed: () {
                              print('click');
                              context
                                  .read<ProductFormBloc>()
                                  .add(const ProductFormEvent.saved());
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
