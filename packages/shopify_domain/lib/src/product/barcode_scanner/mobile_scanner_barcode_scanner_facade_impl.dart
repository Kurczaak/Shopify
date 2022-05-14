// import 'package:injectable/injectable.dart';
// import 'package:shopify_domain/core.dart';
// import 'package:shopify_domain/product.dart';
// import 'package:dartz/dartz.dart';
// import 'package:shopify_manager/injection.dart';
// import 'package:shopify_manager/presentation/routes/router.gr.dart';

// @Injectable(as: IBarcodeScannerFacade)
// class MobileScannerBarcodeScannerFacadeImpl implements IBarcodeScannerFacade {
//   @override
//   Stream<Either<BarcodeFailure, Barcode>> scanBarcodesContinously() {
//     throw UnimplementedError();
//   }

//   @override
//   Future<Either<BarcodeFailure, Barcode>> scanSingleBarcode() async {
//     Barcode? detectedBarcode;
//     await getIt<AppRouter>()
//         .push(BarcodeScannerWidget(onBarcodeDeteced: (barcode) {
//       detectedBarcode = barcode;
//       getIt<AppRouter>().pop();
//     }));
//     if (detectedBarcode == null) {
//       return left(const BarcodeFailure.unexpected());
//     } else {
//       return right(detectedBarcode!);
//     }
//   }

//   @override
//   Future<Either<BarcodeFailure, Barcode>> getBarcodeFromPhoto(Photo photo) {
//     // TODO: implement getBarcodeFromPhoto
//     throw UnimplementedError();
//   }
// }
