import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_scanner/mobile_scanner.dart' as scanner;
import 'package:shopify_domain/product.dart';
import 'package:shopify_presentation/src/barcode_camera_scanner/barcode_camera_scanner_bloc.dart';

import 'package:shopify_presentation/src/injection.dart';

class BarcodeScannerWidget extends StatelessWidget {
  final void Function(Barcode barcode) onBarcodeDeteced;
  const BarcodeScannerWidget({Key? key, required this.onBarcodeDeteced})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    late scanner.MobileScannerController controller;
    return WillPopScope(
      onWillPop: () async {
        print('Disposing the scanner controller');
        controller.dispose();
        print('Close scanner');
        return true;
      },
      child: Scaffold(
        backgroundColor: Colors.black,
        body: BlocProvider<BarcodeCameraScannerBloc>(
          create: (context) {
            final bloc = getIt<BarcodeCameraScannerBloc>();
            final state = bloc.state;
            controller = scanner.MobileScannerController(
                facing: state.rearCamera
                    ? scanner.CameraFacing.back
                    : scanner.CameraFacing.front,
                torchEnabled: state.flashlightOn);
            return bloc;
          },
          child:
              BlocConsumer<BarcodeCameraScannerBloc, BarcodeCameraScannerState>(
            listenWhen: (previous, current) {
              if (previous.flashlightOn != current.flashlightOn) {
                controller.toggleTorch();
              }
              if (previous.rearCamera != current.rearCamera) {
                controller.switchCamera();
              }
              if (previous.paused != current.paused) {
                if (current.paused) {
                  controller.stop();
                } else {
                  controller.start();
                }
              }
              return true;
            },
            listener: ((context, state) {
              state.barcodeOption
                  .fold(() => null, (barcode) => onBarcodeDeteced(barcode));
            }),
            builder: (context, state) => Stack(
              children: [
                scanner.MobileScanner(
                    fit: BoxFit.contain,
                    controller: controller,
                    allowDuplicates: false,
                    onDetect: (barcode, args) {
                      context.read<BarcodeCameraScannerBloc>().add(
                          BarcodeCameraScannerEvent.scanBarcode(
                              barcode: Barcode(barcode.rawValue ?? '')));
                    }),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    height: 100,
                    color: Colors.black.withOpacity(0.4),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                            color: Colors.white,
                            icon: Icon(
                                state.flashlightOn
                                    ? Icons.flash_on
                                    : Icons.flash_off,
                                color: Colors.grey),
                            iconSize: 32.0,
                            onPressed: () {
                              context.read<BarcodeCameraScannerBloc>().add(
                                  const BarcodeCameraScannerEvent
                                      .toggleFlashlight());
                            }),
                        IconButton(
                          color: Colors.white,
                          icon: !state.paused
                              ? const Icon(Icons.stop)
                              : const Icon(Icons.play_arrow),
                          onPressed: () {
                            context.read<BarcodeCameraScannerBloc>().add(
                                const BarcodeCameraScannerEvent.togglePause());
                          },
                          iconSize: 32.0,
                        ),
                        Center(
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width - 200,
                            height: 50,
                            child: FittedBox(
                              child: Text(
                                state.barcodeOption.fold(
                                    () => 'Scan something!',
                                    (barcode) => barcode.getOrCrash()),
                                overflow: TextOverflow.fade,
                                style: Theme.of(context)
                                    .textTheme
                                    .headline4!
                                    .copyWith(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        IconButton(
                            color: Colors.white,
                            icon: Icon(state.rearCamera
                                ? Icons.camera_rear
                                : Icons.camera_front),
                            iconSize: 32.0,
                            onPressed: () {
                              context.read<BarcodeCameraScannerBloc>().add(
                                  const BarcodeCameraScannerEvent
                                      .toggleCamera());
                            }),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
