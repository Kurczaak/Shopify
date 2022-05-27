// import 'package:injectable/injectable.dart';
// import 'package:shopify_domain/core.dart';
// import 'package:shopify_domain/product.dart';
// import 'package:dartz/dartz.dart';
// import 'package:shopify_domain/src/injection.dart';


// @Injectable(as: BarcodeScanner)
// class MobileScannerBarcodeScannerFacadeImpl implements BarcodeScanner {
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
