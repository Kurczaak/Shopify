import 'package:dartz/dartz.dart';
import 'package:shopify_manager/domain/core/images/photo.dart';
import 'barcode_failure.dart';
import 'package:shopify_manager/domain/product/value_objects.dart';

abstract class IBarcodeScannerFacade {
  Future<Either<BarcodeFailure, Barcode>> scanSingleBarcode();
  Stream<Either<BarcodeFailure, Barcode>> scanBarcodesContinously();
  Future<Either<BarcodeFailure, Barcode>> getBarcodeFromPhoto(Photo photo);
}
