import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:shopify_manager/domain/product/barcode_scanner/i_barcode_scanner_facade.dart';
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
                  final xd = await getIt<IBarcodeScannerFacade>()
                      .scanSingleBarcode(context);
                  xd.fold((l) => print('failure ${l.toString()}'), (r) {
                    context.router.push(ProductSearchingScreen(barcode: r));
                  });
                },
                child: const Text('Scan a barcode')),
          ],
        ),
      ),
    );
  }
}
