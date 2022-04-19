import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:shopify_manager/domain/core/images/i_image_facade.dart';
import 'package:shopify_manager/injection.dart';

class ScannerWidget extends StatefulWidget {
  const ScannerWidget({Key? key}) : super(key: key);

  @override
  State<ScannerWidget> createState() => _ScannerWidgetState();
}

class _ScannerWidgetState extends State<ScannerWidget> {
  MobileScannerController controller = MobileScannerController(
    torchEnabled: false,
    // formats: [BarcodeFormat.qrCode]
    // facing: CameraFacing.front,
  );
  bool isStarted = true;
  String? barcode;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Builder(builder: (context) {
        return Stack(
          children: [
            MobileScanner(
                controller: controller,
                fit: BoxFit.contain,
                // allowDuplicates: true,
                // controller: MobileScannerController(
                //   torchEnabled: true,
                //   facing: CameraFacing.front,
                // ),
                onDetect: (barcode, args) {
                  setState(() {
                    this.barcode = barcode.rawValue;
                  });
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
                      icon: ValueListenableBuilder(
                        valueListenable: controller.torchState,
                        builder: (context, state, child) {
                          switch (state as TorchState) {
                            case TorchState.off:
                              return const Icon(Icons.flash_off,
                                  color: Colors.grey);
                            case TorchState.on:
                              return const Icon(Icons.flash_on,
                                  color: Colors.yellow);
                          }
                        },
                      ),
                      iconSize: 32.0,
                      onPressed: () => controller.toggleTorch(),
                    ),
                    IconButton(
                        color: Colors.white,
                        icon: isStarted
                            ? const Icon(Icons.stop)
                            : const Icon(Icons.play_arrow),
                        iconSize: 32.0,
                        onPressed: () => setState(() {
                              isStarted
                                  ? controller.stop()
                                  : controller.start();
                              isStarted = !isStarted;
                            })),
                    Center(
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width - 200,
                        height: 50,
                        child: FittedBox(
                          child: Text(
                            barcode ?? 'Scan something!',
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
                      icon: ValueListenableBuilder(
                        valueListenable: controller.cameraFacingState,
                        builder: (context, state, child) {
                          switch (state as CameraFacing) {
                            case CameraFacing.front:
                              return const Icon(Icons.camera_front);
                            case CameraFacing.back:
                              return const Icon(Icons.camera_rear);
                          }
                        },
                      ),
                      iconSize: 32.0,
                      onPressed: () => controller.switchCamera(),
                    ),
                    IconButton(
                      color: Colors.white,
                      icon: const Icon(Icons.image),
                      iconSize: 32.0,
                      onPressed: () async {
                        final IImageFacade _picker = getIt<IImageFacade>();
                        // Pick an image
                        final photoOrFailure = await _picker.getPhoto(
                          maxHeight: 5000,
                          maxWidth: 5000,
                        );

                        await photoOrFailure.fold(
                            (failure) async => FlushbarHelper.createError(
                                message: failure.map(
                                    unexpected: (_) => 'Unexpected failure',
                                    noImageSelected: (_) =>
                                        'No image has been selected',
                                    invalidImageSize: (_) =>
                                        'Invalid image size')).show(context),
                            (photo) async {
                          await photo.failureOrUnit.fold(
                              (failure) async => FlushbarHelper.createError(
                                      message: failure.stringifyValueFailure(
                                          fieldName: 'photo'))
                                  .show(context), (_) async {
                            if (await controller
                                .analyzeImage(photo.getOrCrash().path)) {
                              FlushbarHelper.createSuccess(
                                      message: 'Barcode found!')
                                  .show(context);
                            } else {
                              FlushbarHelper.createError(
                                      message: 'No bracode found!')
                                  .show(context);
                            }
                          });
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      }),
    );
  }
}
