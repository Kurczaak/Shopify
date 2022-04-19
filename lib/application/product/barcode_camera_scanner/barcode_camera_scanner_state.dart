part of 'barcode_camera_scanner_bloc.dart';

@superEnum
enum $BarcodeCameraScannerState {
  @object
  Initial,
  @object
  Loading,
  @Data(fields: [DataField<Barcode>('barcode')])
  Loaded,

  @Data(fields: [DataField<ValueFailure>('failure')])
  Error,
}
