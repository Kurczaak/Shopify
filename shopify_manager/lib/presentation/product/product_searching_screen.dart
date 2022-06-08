import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:auto_route/auto_route.dart';
import 'package:shopify_manager/application/product/search_product/search_product_bloc.dart';
import 'package:shopify_domain/product.dart';
import 'package:shopify_manager/injection.dart';
import 'package:shopify_manager/presentation/routes/router.gr.dart';

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
        listener: ((context, state) async {
          await Future.delayed(const Duration(seconds: 2));
          if (state.isLoaded) {
            state.asLoaded.productOption.fold(
              () => context.router.replace(
                ProductFormRoute(barcode: barcode),
              ),
              (product) {
                if (state.asLoaded.productExists) {
                  context.router.replace(
                    DebugRoute(product: product),
                  );
                } else {
                  context.router.replace(
                    ProductFormRoute(barcode: barcode, product: product),
                  );
                }
              },
            );
          }
        }),
        builder: (context, state) => Center(
          child: state.when(
              initial: () => Container(),
              loading: () => const CircularProgressIndicator(),
              loaded: (_, product, __) => product.fold(
                  () => const Text('Product not found :('),
                  (a) => const Text('Product found! :)'))),
        ),
      ),
    ));
  }
}
