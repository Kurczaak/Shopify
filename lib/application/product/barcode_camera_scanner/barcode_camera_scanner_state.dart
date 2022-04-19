part of 'barcode_camera_scanner_bloc.dart';

@freezed
abstract class BarcodeCameraScannerState with _$BarcodeCameraScannerState {
  const factory BarcodeCameraScannerState({
    required bool flashlightOn,
    required bool paused,
    required bool rearCamera,
    required Option<ValueFailure> failureOption,
    required Option<Barcode> barcodeOption,
  }) = _BarcodeCameraScannerState;

  factory BarcodeCameraScannerState.initial() => BarcodeCameraScannerState(
      flashlightOn: false,
      paused: false,
      rearCamera: true,
      failureOption: none(),
      barcodeOption: none());
}
