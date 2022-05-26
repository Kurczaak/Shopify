import 'package:injectable/injectable.dart';
import 'package:dartz/dartz.dart';
import 'package:shopify_domain/product.dart';
import 'package:shopify_manager/domain/product/barcode_scanner/i_barcode_scanner_facade.dart';

@Injectable(as: IBarcodeScannerFacade)
class MobileScannerBarcodeScannerFacadeImpl implements IBarcodeScannerFacade {
  @override
  Stream<Either<BarcodeFailure, Barcode>> scanBarcodesContinously() {
    throw UnimplementedError();
  }

  @override
  Future<Either<BarcodeFailure, Barcode>> scanSingleBarcode() {
    // TODO: implement scanSingleBarcode
    throw UnimplementedError();
  }
}
