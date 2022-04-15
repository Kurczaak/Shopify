import 'package:injectable/injectable.dart';
import 'package:shopify_manager/domain/product/barcode_scanner/barcode_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:shopify_manager/domain/product/barcode_scanner/i_barcode_scanner_facade.dart';
import 'package:shopify_manager/domain/product/value_objects.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

@injectable
class BarcodeScannerFacadeImpl implements IBarcodeScannerFacade {
  final FlutterBarcodeScanner _barcodeScanner;

  BarcodeScannerFacadeImpl(this._barcodeScanner);
  @override
  Stream<Either<BarcodeFailure, Barcode>> scanBarcodesContinously() {
    // TODO: implement scanBarcodesContinously
    throw UnimplementedError();
  }

  @override
  Future<Either<BarcodeFailure, Barcode>> scanSingleBarcode() {
    // TODO: implement scanSingleBarcode
    throw UnimplementedError();
  }
}
