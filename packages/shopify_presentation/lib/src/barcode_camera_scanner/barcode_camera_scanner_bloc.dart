import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:shopify_domain/core.dart';
import 'package:shopify_domain/product.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sealed_annotations/sealed_annotations.dart';
part 'barcode_camera_scanner_bloc.freezed.dart';
part 'barcode_camera_scanner_bloc.sealed.dart';
part 'barcode_camera_scanner_event.dart';
part 'barcode_camera_scanner_state.dart';

@injectable
class BarcodeCameraScannerBloc
    extends Bloc<BarcodeCameraScannerEvent, BarcodeCameraScannerState> {
  BarcodeCameraScannerBloc() : super(BarcodeCameraScannerState.initial()) {
    on<BarcodeCameraScannerEvent>((event, emit) {
      event.when(
        scanBarcode: (scannedBarcode) =>
            emit(state.copyWith(barcodeOption: some(scannedBarcode))),
        toggleCamera: () => emit(state.copyWith(rearCamera: !state.rearCamera)),
        toggleFlashlight: () =>
            emit(state.copyWith(flashlightOn: !state.flashlightOn)),
        togglePause: () => emit(state.copyWith(paused: !state.paused)),
      );
    });
  }
}
