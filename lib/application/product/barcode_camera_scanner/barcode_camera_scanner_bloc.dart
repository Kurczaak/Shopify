import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopify_manager/domain/core/failures.dart';
import 'package:shopify_manager/domain/product/barcode_scanner/barcode_failure.dart';
import 'package:shopify_manager/domain/product/value_objects.dart';
import 'package:super_enum_sealed_annotations/super_enum_sealed_annotations.dart';

part 'barcode_camera_scanner_event.dart';
part 'barcode_camera_scanner_state.dart';
part 'barcode_camera_scanner_bloc.super.dart';

class BarcodeCameraScannerBloc
    extends Bloc<BarcodeCameraScannerEvent, BarcodeCameraScannerState> {
  BarcodeCameraScannerBloc()
      : super(const BarcodeCameraScannerState.initial()) {
    on<BarcodeCameraScannerEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
