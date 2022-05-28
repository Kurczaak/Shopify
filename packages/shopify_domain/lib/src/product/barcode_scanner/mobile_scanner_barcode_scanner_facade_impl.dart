import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:shopify_domain/core.dart';
import 'package:shopify_domain/product.dart';
import 'package:dartz/dartz.dart';
import 'package:auto_route/auto_route.dart';
import 'package:shopify_presentation/product/scanner/scanner_widget.dart';

@Injectable(as: BarcodeScanner)
class MobileScannerBarcodeScannerFacadeImpl implements BarcodeScanner {
  @override
  Stream<Either<BarcodeFailure, Barcode>> scanBarcodesContinously() {
    throw UnimplementedError();
  }

  @override
  Future<Either<BarcodeFailure, Barcode>> scanSingleBarcode(
      BuildContext context) async {
    Barcode? detectedBarcode;
    await context.router
        .pushWidget(BarcodeScannerPage(onBarcodeDeteced: (barcode) {
      detectedBarcode = barcode;
      context.router.pop();
    }));
    if (detectedBarcode == null) {
      return left(const BarcodeFailure.unexpected());
    } else {
      return right(detectedBarcode!);
    }
  }

  @override
  Future<Either<BarcodeFailure, Barcode>> getBarcodeFromPhoto(Photo photo) {
    // TODO: implement getBarcodeFromPhoto
    throw UnimplementedError();
  }
}
