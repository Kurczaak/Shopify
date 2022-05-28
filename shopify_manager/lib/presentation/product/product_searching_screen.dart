import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopify_manager/application/product/search_product/search_product_bloc.dart';
import 'package:shopify_domain/product.dart';
import 'package:shopify_manager/injection.dart';

class ProductSearchingScreen extends StatelessWidget {
  final Barcode barcode;
  const ProductSearchingScreen(this.barcode, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocProvider<SearchProductBloc>(
      create: (context) => getIt<SearchProductBloc>()
        ..add(
          SearchProductEvent.searchForProduct(barcode: barcode.getOrCrash()),
        ),
      child: BlocConsumer<SearchProductBloc, SearchProductState>(
          listener: ((context, state) {}),
          builder: (context, state) => state.when(
              initial: () => Container(),
              loading: () => const Center(
                    child: CircularProgressIndicator(),
                  ),
              loaded: (_, product, __) => const Text('Product found!'))),
    ));
  }
}
