part of 'barcode_camera_scanner_bloc.dart';

@superEnum
enum $BarcodeCameraScannerEvent {
  @object
  ToggleFlashlight,
  @object
  ToggleCamera,

  @object
  TogglePause,
  @Data(fields: [DataField<Barcode>('barcode')])
  ScannedBarcode,
}
