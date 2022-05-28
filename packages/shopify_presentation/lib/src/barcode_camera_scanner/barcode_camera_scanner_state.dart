part of 'barcode_camera_scanner_bloc.dart';

@freezed
class BarcodeCameraScannerState with _$BarcodeCameraScannerState {
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

  factory BarcodeCameraScannerState.loaded({
    required BarcodeCameraScannerState previousState,
    required Option<Barcode> barcodeOption,
  }) =>
      BarcodeCameraScannerState(
          flashlightOn: previousState.flashlightOn,
          paused: previousState.paused,
          rearCamera: previousState.rearCamera,
          failureOption: previousState.failureOption,
          barcodeOption: barcodeOption);
  factory BarcodeCameraScannerState.error({
    required BarcodeCameraScannerState previousState,
    required ValueFailure failure,
  }) =>
      BarcodeCameraScannerState(
          flashlightOn: previousState.flashlightOn,
          paused: previousState.paused,
          rearCamera: previousState.rearCamera,
          failureOption: some(failure),
          barcodeOption: previousState.barcodeOption);
}
