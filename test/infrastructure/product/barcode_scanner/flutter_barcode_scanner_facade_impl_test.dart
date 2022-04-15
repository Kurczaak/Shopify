import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';

import 'flutter_barcode_scanner_facade_impl_test.mocks.dart';

@GenerateMocks([FlutterBarcodeScanner])
void main() {
  late MockFlutterBarcodeScanner mockScanner;
  setUp(() {
    mockScanner = MockFlutterBarcodeScanner();
  });
  test(
    'should call the flutterBarcodeScanner.scanBarcode',
    () async {
      // arrange
      //when(mockScanner.scanBarcode)
      // act

      // assert
    },
  );
}
