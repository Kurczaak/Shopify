import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:shopify_domain/product.dart';
import 'package:shopify_manager/presentation/product/widgets/your_shops_selector_widget.dart';
import 'package:shopify_presentation/core/shopify_appbar.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: ShopifyAppBar(title: 'Add to your shops', appBar: AppBar()),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              Container(
                color: Colors.red,
                child: CarouselSlider(
                  options: CarouselOptions(
                    viewportFraction: .95,
                    aspectRatio: 2.0,
                    enlargeCenterPage: true,
                    enableInfiniteScroll: false,
                  ),
                  items: product.photos
                      .getOrCrash()
                      .iter
                      .map(
                        (photo) => Image.network(
                          photo.getOrCrash(),
                          fit: BoxFit.fitWidth,
                        ),
                      )
                      .toList(),
                ),
              ),
              Text(product.name.getOrCrash()),
              Text(product.brand.getOrCrash()),
              Text(product.category.getOrCrash().name),
              Text(product.description.getOrCrash()),
              Text(product.ingredients.getOrCrash()),
              Text(product.weight.weight.getOrCrash().toString()),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: SizedBox(
                  height: 300,
                  child: YourShopsSelectorWidget(
                      onChangeSelectedShops: (selectedShops) {
                    print(selectedShops.length);
                  }),
                ),
              ),
            ],
          ),
        ));
  }
}
