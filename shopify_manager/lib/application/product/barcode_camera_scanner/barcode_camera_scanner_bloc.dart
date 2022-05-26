import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:shopify_domain/core.dart';
import 'package:shopify_domain/product.dart';
import 'package:super_enum_sealed_annotations/super_enum_sealed_annotations.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'barcode_camera_scanner_bloc.freezed.dart';
part 'barcode_camera_scanner_event.dart';
part 'barcode_camera_scanner_state.dart';
part 'barcode_camera_scanner_bloc.super.dart';

@injectable
class BarcodeCameraScannerBloc
    extends Bloc<BarcodeCameraScannerEvent, BarcodeCameraScannerState> {
  BarcodeCameraScannerBloc() : super(BarcodeCameraScannerState.initial()) {
    on<BarcodeCameraScannerEvent>((event, emit) {
      event.when(
        scannedBarcode: (scannedBarcode) =>
            emit(state.copyWith(barcodeOption: some(scannedBarcode.barcode))),
        toggleCamera: () => emit(state.copyWith(rearCamera: !state.rearCamera)),
        toggleFlashlight: () =>
            emit(state.copyWith(flashlightOn: !state.flashlightOn)),
        togglePause: () => emit(state.copyWith(paused: !state.paused)),
      );
    });
  }
}
