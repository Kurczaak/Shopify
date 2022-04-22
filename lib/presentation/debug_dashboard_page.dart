import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:shopify_manager/domain/product/barcode_scanner/i_barcode_scanner_facade.dart';
import 'package:shopify_manager/domain/product/open_food_facts/i_open_food_facts_repository.dart';
import 'package:shopify_manager/injection.dart';
import 'routes/router.gr.dart';

class DebugDashboardPage extends StatelessWidget {
  const DebugDashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  context.router.push(const RegistrationWrappingRoute());
                },
                child: const Text('Register Shop')),
            ElevatedButton(
                onPressed: () async {
                  final xd =
                      await getIt<IBarcodeScannerFacade>().scanSingleBarcode();
                  await xd.fold((l) async => print('failure ${l.toString()}'),
                      (r) async {
                    final prod = await getIt<IOpenFoodFactsRepository>()
                        .getProductByBarcode(r);
                    prod.fold(
                        (l) => '',
                        (r) => context.router
                            .push(DebugRoute(barcode: r.barcode, product: r)));
                  });
                },
                child: const Text('Scan a barcode')),
          ],
        ),
      ),
    );
  }
}
