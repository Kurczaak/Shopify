part of 'barcode_camera_scanner_bloc.dart';

abstract class BarcodeCameraScannerState extends Equatable {
  const BarcodeCameraScannerState();
  
  @override
  List<Object> get props => [];
}

class BarcodeCameraScannerInitial extends BarcodeCameraScannerState {}
