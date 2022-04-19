import 'package:injectable/injectable.dart';
import 'package:shopify_manager/domain/core/images/photo.dart';
import 'package:shopify_manager/domain/product/barcode_scanner/barcode_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:shopify_manager/domain/product/barcode_scanner/i_barcode_scanner_facade.dart';
import 'package:shopify_manager/domain/product/value_objects.dart';

@injectable
class MobileScannerBarcodeScannerFacadeImpl implements IBarcodeScannerFacade {
  MobileScannerBarcodeScannerFacadeImpl();
  @override
  Stream<Either<BarcodeFailure, Barcode>> scanBarcodesContinously() {
    throw UnimplementedError();
  }

  @override
  Future<Either<BarcodeFailure, Barcode>> scanSingleBarcode() {
    // TODO: implement scanSingleBarcode
    throw UnimplementedError();
  }

  @override
  Future<Either<BarcodeFailure, Barcode>> getBarcodeFromPhoto(Photo photo) {
    // TODO: implement getBarcodeFromPhoto
    throw UnimplementedError();
  }
}
