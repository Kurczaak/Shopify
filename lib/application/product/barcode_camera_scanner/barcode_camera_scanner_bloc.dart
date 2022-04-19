import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'barcode_camera_scanner_event.dart';
part 'barcode_camera_scanner_state.dart';

class BarcodeCameraScannerBloc
    extends Bloc<BarcodeCameraScannerEvent, BarcodeCameraScannerState> {
  BarcodeCameraScannerBloc() : super(BarcodeCameraScannerInitial()) {
    on<BarcodeCameraScannerEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
