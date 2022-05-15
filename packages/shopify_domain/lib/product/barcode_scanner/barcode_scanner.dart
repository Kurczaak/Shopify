import 'package:dartz/dartz.dart';
import 'package:shopify_domain/src/injection.dart';
import 'barcode_failure.dart';
import 'package:shopify_domain/product/value_objects.dart';

abstract class BarcodeScanner {
  Future<Either<BarcodeFailure, Barcode>> scanSingleBarcode();
  Stream<Either<BarcodeFailure, Barcode>> scanBarcodesContinously();
  //Future<Either<BarcodeFailure, Barcode>> getBarcodeFromPhoto(Photo photo);
  static BarcodeScanner get instance => getIt<BarcodeScanner>();
}
