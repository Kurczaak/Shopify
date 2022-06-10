import 'package:carousel_slider/carousel_slider.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:kt_dart/kt.dart';
import 'package:shopify_domain/core.dart';
import 'package:shopify_domain/product.dart';
import 'package:shopify_manager/presentation/product/widgets/your_shops_selector_widget.dart';
import 'package:shopify_presentation/shopify_presentation.dart';

class DebugPage extends StatefulWidget {
  const DebugPage({Key? key, required this.product}) : super(key: key);
  final Product product;

  @override
  State<DebugPage> createState() => _DebugPageState();
}

class _DebugPageState extends State<DebugPage> {
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
    return Scaffold(
        appBar: ShopifyAppBar(title: 'Add to your shops', appBar: AppBar()),
        body: Center(
          child: ListView(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
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
              PictureCarouselSlider(photos: product.photos.getOrCrash()),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
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
                        onChangeSelectedShops: (selectedShops) {
                      print(selectedShops.length);
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
                              showErrorMessages: false,
                              controller: priceController,
                              // validator: (_) =>
                              //     state.productForm.price.failureOrUnit.fold(
                              //         (failure) =>
                              //             failure.stringifyValueFailure(
                              //                 fieldName: 'Price'),
                              //         (_) => null),
                              onChanged: (value) {
                                // context.read<ProductFormBloc>().add(
                                //     ProductFormEvent.priceChanged(
                                //         price: value));
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
                                // context.read<ProductFormBloc>().add(
                                //     ProductFormEvent.currencyChanged(
                                //         currency: newValue));
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
                            onPressed: () {}, text: 'Add to your shops')),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}

class ExpandableDescription extends StatelessWidget {
  const ExpandableDescription(
      {Key? key,
      required this.description,
      required this.title,
      this.bottomPadding = 0})
      : super(key: key);
  final ProductDescription description;
  final String title;
  final double bottomPadding;

  @override
  Widget build(BuildContext context) {
    return description.getOrCrash().isEmpty
        ? Container()
        : Padding(
            padding: EdgeInsets.only(bottom: bottomPadding),
            child: ExpandablePanel(
              header: Text(
                title,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              collapsed: Text(description.getOrCrash(),
                  overflow: TextOverflow.ellipsis),
              expanded: Text(description.getOrCrash()),
            ),
          );
  }
}

class PictureCarouselSlider extends StatefulWidget {
  const PictureCarouselSlider({Key? key, required this.photos})
      : super(key: key);
  final KtList<ShopifyUrl> photos;

  @override
  State<PictureCarouselSlider> createState() => _PictureCarouselSliderState();
}

class _PictureCarouselSliderState extends State<PictureCarouselSlider> {
  late KtList<ShopifyUrl> photos;
  int _photoIndex = 0;
  final controller = CarouselController();
  @override
  void initState() {
    photos = widget.photos;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider(
          carouselController: controller,
          options: CarouselOptions(
            onPageChanged: ((index, reason) {
              _photoIndex = index;
              setState(() {});
            }),
            viewportFraction: .95,
            aspectRatio: 2.0,
            enlargeCenterPage: true,
            enableInfiniteScroll: false,
          ),
          items: photos.iter
              .map(
                (photo) => Image.network(
                  photo.getOrCrash(),
                  fit: BoxFit.fitWidth,
                ),
              )
              .toList(),
        ),
        if (photos.size > 1 && _photoIndex != 0)
          Positioned.fill(
            child: Align(
              alignment: Alignment.centerLeft,
              child: InkWell(
                onTap: controller.previousPage,
                child: Icon(Icons.chevron_left_sharp,
                    color: Theme.of(context).colorScheme.onBackground),
              ),
            ),
          ),
        if (_photoIndex != photos.size - 1)
          Positioned.fill(
            child: Align(
              alignment: Alignment.centerRight,
              child: InkWell(
                onTap: controller.nextPage,
                child: Icon(Icons.chevron_right_sharp,
                    color: Theme.of(context).colorScheme.onBackground),
              ),
            ),
          ),
      ],
    );
  }
}

class NutritionFactRow extends StatelessWidget {
  const NutritionFactRow(this.nutrient,
      {Key? key,
      required this.color,
      required this.opacity,
      this.isMain = false})
      : super(key: key);
  final Nutrient nutrient;
  final Color color;
  final double opacity;
  final bool isMain;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color.withOpacity(opacity),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(nutrient.name.getOrCrash(),
              style: TextStyle(
                  fontWeight: isMain ? FontWeight.bold : FontWeight.normal)),
          Text(nutrient.weight.stringifyOrCrash,
              style: TextStyle(
                  fontWeight: isMain ? FontWeight.bold : FontWeight.normal))
        ],
      ),
    );
  }
}

class NutrientsGroupWidget extends StatelessWidget {
  const NutrientsGroupWidget(this.group, {Key? key, required this.color})
      : super(key: key);
  final NutrientsGroup group;
  final Color color;

  List<Widget> generateSubNturients(KtList<Nutrient> subNutrients) {
    final List<Widget> widgets = [];
    int i = 0;
    for (final subNutrient in subNutrients.iter) {
      final widget = NutritionFactRow(
        subNutrient,
        color: color,
        opacity: i % 2 == 0 ? .4 : .5,
      );
      widgets.add(widget);
      i++;
    }
    return widgets;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NutritionFactRow(
          group.mainNutrient,
          color: color,
          opacity: .5,
          isMain: true,
        ),
        ...generateSubNturients(group.subNutrients)
      ],
    );
  }
}

class ExpandableNutritionFacts extends StatelessWidget {
  const ExpandableNutritionFacts({Key? key, required this.nutrientFacts})
      : super(key: key);
  final NutrientFacts nutrientFacts;
  @override
  Widget build(BuildContext context) {
    return ExpandablePanel(
      header: const Text(
        'Nutrition Facts per 100 g',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      collapsed: Text(
        'Energy: ${nutrientFacts.totalCalories} kcal',
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      expanded: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(width: double.maxFinite),
          Container(
            child: Text(
              'Energy: ${nutrientFacts.totalCalories} kcal',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            color: Theme.of(context).colorScheme.primary.withOpacity(.5),
          ),
          NutrientsGroupWidget(
            nutrientFacts.fats,
            color: Theme.of(context).colorScheme.secondary,
          ),
          NutrientsGroupWidget(
            nutrientFacts.carbohydrates,
            color: Theme.of(context).colorScheme.primary,
          ),
          NutrientsGroupWidget(
            nutrientFacts.proteins,
            color: Theme.of(context).colorScheme.secondary,
          ),
        ],
      ),
    );
  }
}
