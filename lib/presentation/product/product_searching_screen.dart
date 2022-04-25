import 'package:flutter/material.dart';
import 'package:shopify_manager/domain/product/value_objects.dart';

class ProductSearchingScreen extends StatelessWidget {
  final Barcode barcode;
  const ProductSearchingScreen(this.barcode, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Column(children: const []));
  }
}
