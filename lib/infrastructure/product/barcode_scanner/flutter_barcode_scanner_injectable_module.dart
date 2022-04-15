import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:injectable/injectable.dart';

@module
abstract class FlutterBarcodeScannerInjectableModule {
  @LazySingleton()
  FlutterBarcodeScanner get barcodeScanner => FlutterBarcodeScanner();
}
