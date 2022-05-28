import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import 'package:dartz/dartz.dart';
import 'package:shopify_domain/product.dart';
import 'package:shopify_manager/domain/product/barcode_scanner/i_barcode_scanner_facade.dart';

@Injectable(as: IBarcodeScannerFacade)
class MobileScannerBarcodeScannerFacadeImpl implements IBarcodeScannerFacade {
  final BarcodeScanner _barcodeScanner;

  MobileScannerBarcodeScannerFacadeImpl(this._barcodeScanner);

  @override
  Stream<Either<BarcodeFailure, Barcode>> scanBarcodesContinously() {
    return _barcodeScanner.scanBarcodesContinously();
  }

  @override
  Future<Either<BarcodeFailure, Barcode>> scanSingleBarcode(
      BuildContext context) {
    return _barcodeScanner.scanSingleBarcode(context);
  }
}
