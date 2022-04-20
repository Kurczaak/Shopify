import 'package:injectable/injectable.dart';
import 'package:shopify_manager/domain/core/images/photo.dart';
import 'package:shopify_manager/domain/product/barcode_scanner/barcode_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:shopify_manager/domain/product/barcode_scanner/i_barcode_scanner_facade.dart';
import 'package:shopify_manager/domain/product/value_objects.dart';
import 'package:shopify_manager/injection.dart';
import 'package:shopify_manager/presentation/routes/router.gr.dart';

@Injectable(as: IBarcodeScannerFacade)
class MobileScannerBarcodeScannerFacadeImpl implements IBarcodeScannerFacade {
  @override
  Stream<Either<BarcodeFailure, Barcode>> scanBarcodesContinously() {
    throw UnimplementedError();
  }

  @override
  Future<Either<BarcodeFailure, Barcode>> scanSingleBarcode() async {
    Barcode? detectedBarcode;
    await getIt<AppRouter>()
        .push(BarcodeScannerWidget(onBarcodeDeteced: (barcode) {
      detectedBarcode = barcode;
      getIt<AppRouter>().pop();
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
