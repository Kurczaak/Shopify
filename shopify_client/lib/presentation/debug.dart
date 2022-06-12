import 'package:dartz/dartz.dart' as d;
import 'package:flutter/material.dart';

import 'package:kt_dart/kt.dart';
import 'package:shopify_client/domain/product/i_product_repository.dart';
import 'package:shopify_client/injection.dart';
import 'package:shopify_domain/product.dart';
import 'package:shopify_domain/shop/shop.dart';

class DebugShopPage extends StatefulWidget {
  const DebugShopPage({Key? key, required this.shop}) : super(key: key);
  final Shop shop;

  @override
  State<DebugShopPage> createState() => _DebugShopPageState();
}

class _DebugShopPageState extends State<DebugShopPage> {
  Stream<d.Either<ProductFailure, KtList<ProductSnippet>>>? stream;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: StreamBuilder<d.Either<ProductFailure, KtList<ProductSnippet>>>(
          stream: stream,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              final d.Either<ProductFailure, KtList<ProductSnippet>> xd =
                  snapshot.data!;
              return xd.fold(
                  (l) => ElevatedButton(
                      onPressed: () {
                        stream = getIt<IProductRepository>()
                            .watchAllFromShop(widget.shop);
                        setState(() {});
                      },
                      child: Text(l.toString())),
                  (products) => ListView.builder(
                      itemCount: products.size,
                      itemBuilder: (context, index) => Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(products[index]
                                  .price
                                  .price
                                  .getOrCrash()
                                  .toString()),
                              Image.network(
                                  products[index].photoUrl.getOrCrash()),
                            ],
                          )));
            }
            return ElevatedButton(
                onPressed: () {
                  stream =
                      getIt<IProductRepository>().watchAllFromShop(widget.shop);
                  setState(() {});
                },
                child: const Text('no data'));
          },
        ),
      ),
    );
  }
}
