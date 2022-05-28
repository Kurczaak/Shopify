part of 'barcode_camera_scanner_bloc.dart';

@Sealed()
abstract class _BarcodeCameraScannerEvent {
  void toggleFlashlight();
  void toggleCamera();
  void togglePause();
  void scanBarcode(Barcode barcode);
}
