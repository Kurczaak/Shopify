import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:shopify_domain/product.dart';

abstract class IBarcodeScannerFacade {
  Stream<Either<BarcodeFailure, Barcode>> scanBarcodesContinously();
  Future<Either<BarcodeFailure, Barcode>> scanSingleBarcode(
      BuildContext context);
}
