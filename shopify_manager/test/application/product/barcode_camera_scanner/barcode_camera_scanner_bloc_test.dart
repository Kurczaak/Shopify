import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shopify_manager/application/product/barcode_camera_scanner/barcode_camera_scanner_bloc.dart';
import 'package:shopify_manager/domain/product/value_objects.dart';

void main() {
  late BarcodeCameraScannerBloc bloc;

  final tBarcode = Barcode('123-ABC-345');
  setUp(() {
    bloc = BarcodeCameraScannerBloc();
  });

  blocTest(
    'Check initial valeues',
    build: () => bloc,
    verify: (BarcodeCameraScannerBloc bloc) => expect(
      bloc.state,
      BarcodeCameraScannerState(
          flashlightOn: false,
          paused: false,
          rearCamera: true,
          failureOption: none(),
          barcodeOption: none()),
    ),
  );

  blocTest('toggleFlashlight should toggle the flashlightOn flag',
      build: () => bloc,
      act: (BarcodeCameraScannerBloc bloc) {
        bloc.add(const BarcodeCameraScannerEvent.toggleFlashlight());
        bloc.add(const BarcodeCameraScannerEvent.toggleFlashlight());
      },
      expect: () => [
            bloc.state.copyWith(flashlightOn: !bloc.state.flashlightOn),
            bloc.state.copyWith(flashlightOn: bloc.state.flashlightOn),
          ]);

  blocTest('toggleCamera should toggle the rearCamera flag',
      build: () => bloc,
      act: (BarcodeCameraScannerBloc bloc) {
        bloc.add(const BarcodeCameraScannerEvent.toggleCamera());
        bloc.add(const BarcodeCameraScannerEvent.toggleCamera());
      },
      expect: () => [
            bloc.state.copyWith(rearCamera: !bloc.state.rearCamera),
            bloc.state.copyWith(rearCamera: bloc.state.rearCamera),
          ]);

  blocTest('togglePause should toggle the paused flag',
      build: () => bloc,
      act: (BarcodeCameraScannerBloc bloc) {
        bloc.add(const BarcodeCameraScannerEvent.togglePause());
        bloc.add(const BarcodeCameraScannerEvent.togglePause());
      },
      expect: () => [
            bloc.state.copyWith(paused: !bloc.state.paused),
            bloc.state.copyWith(paused: bloc.state.paused),
          ]);

  blocTest(
    'scannedBarcode shout emit a state with the barcode',
    build: () => bloc,
    act: (BarcodeCameraScannerBloc bloc) =>
        bloc.add(BarcodeCameraScannerEvent.scannedBarcode(barcode: tBarcode)),
    expect: () => [
      bloc.state.copyWith(barcodeOption: some(tBarcode)),
    ],
  );
}
