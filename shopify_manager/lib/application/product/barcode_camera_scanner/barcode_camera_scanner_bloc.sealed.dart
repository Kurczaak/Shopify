// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'barcode_camera_scanner_bloc.dart';

// **************************************************************************
// Generator: sealed_generators
// **************************************************************************

/// [BarcodeCameraScannerEvent] {
///
/// ([BarcodeCameraScannerEventToggleFlashlight] toggleFlashlight){} with data equality
///
/// ([BarcodeCameraScannerEventToggleCamera] toggleCamera){} with data equality
///
/// ([BarcodeCameraScannerEventTogglePause] togglePause){} with data equality
///
/// ([BarcodeCameraScannerEventScanBarcode] scanBarcode){[Barcode] barcode} with data equality
///
/// }
@SealedManifest(_BarcodeCameraScannerEvent)
abstract class BarcodeCameraScannerEvent {
  const BarcodeCameraScannerEvent._internal();

  const factory BarcodeCameraScannerEvent.toggleFlashlight() =
      BarcodeCameraScannerEventToggleFlashlight;

  const factory BarcodeCameraScannerEvent.toggleCamera() =
      BarcodeCameraScannerEventToggleCamera;

  const factory BarcodeCameraScannerEvent.togglePause() =
      BarcodeCameraScannerEventTogglePause;

  const factory BarcodeCameraScannerEvent.scanBarcode({
    required Barcode barcode,
  }) = BarcodeCameraScannerEventScanBarcode;

  bool get isToggleFlashlight =>
      this is BarcodeCameraScannerEventToggleFlashlight;

  bool get isToggleCamera => this is BarcodeCameraScannerEventToggleCamera;

  bool get isTogglePause => this is BarcodeCameraScannerEventTogglePause;

  bool get isScanBarcode => this is BarcodeCameraScannerEventScanBarcode;

  BarcodeCameraScannerEventToggleFlashlight get asToggleFlashlight =>
      this as BarcodeCameraScannerEventToggleFlashlight;

  BarcodeCameraScannerEventToggleCamera get asToggleCamera =>
      this as BarcodeCameraScannerEventToggleCamera;

  BarcodeCameraScannerEventTogglePause get asTogglePause =>
      this as BarcodeCameraScannerEventTogglePause;

  BarcodeCameraScannerEventScanBarcode get asScanBarcode =>
      this as BarcodeCameraScannerEventScanBarcode;

  BarcodeCameraScannerEventToggleFlashlight? get asToggleFlashlightOrNull {
    final barcodeCameraScannerEvent = this;
    return barcodeCameraScannerEvent
            is BarcodeCameraScannerEventToggleFlashlight
        ? barcodeCameraScannerEvent
        : null;
  }

  BarcodeCameraScannerEventToggleCamera? get asToggleCameraOrNull {
    final barcodeCameraScannerEvent = this;
    return barcodeCameraScannerEvent is BarcodeCameraScannerEventToggleCamera
        ? barcodeCameraScannerEvent
        : null;
  }

  BarcodeCameraScannerEventTogglePause? get asTogglePauseOrNull {
    final barcodeCameraScannerEvent = this;
    return barcodeCameraScannerEvent is BarcodeCameraScannerEventTogglePause
        ? barcodeCameraScannerEvent
        : null;
  }

  BarcodeCameraScannerEventScanBarcode? get asScanBarcodeOrNull {
    final barcodeCameraScannerEvent = this;
    return barcodeCameraScannerEvent is BarcodeCameraScannerEventScanBarcode
        ? barcodeCameraScannerEvent
        : null;
  }

  R when<R extends Object?>({
    required R Function() toggleFlashlight,
    required R Function() toggleCamera,
    required R Function() togglePause,
    required R Function(Barcode barcode) scanBarcode,
  }) {
    final barcodeCameraScannerEvent = this;
    if (barcodeCameraScannerEvent
        is BarcodeCameraScannerEventToggleFlashlight) {
      return toggleFlashlight();
    } else if (barcodeCameraScannerEvent
        is BarcodeCameraScannerEventToggleCamera) {
      return toggleCamera();
    } else if (barcodeCameraScannerEvent
        is BarcodeCameraScannerEventTogglePause) {
      return togglePause();
    } else if (barcodeCameraScannerEvent
        is BarcodeCameraScannerEventScanBarcode) {
      return scanBarcode(barcodeCameraScannerEvent.barcode);
    } else {
      throw AssertionError();
    }
  }

  R maybeWhen<R extends Object?>({
    R Function()? toggleFlashlight,
    R Function()? toggleCamera,
    R Function()? togglePause,
    R Function(Barcode barcode)? scanBarcode,
    required R Function(BarcodeCameraScannerEvent barcodeCameraScannerEvent)
        orElse,
  }) {
    final barcodeCameraScannerEvent = this;
    if (barcodeCameraScannerEvent
        is BarcodeCameraScannerEventToggleFlashlight) {
      return toggleFlashlight != null
          ? toggleFlashlight()
          : orElse(barcodeCameraScannerEvent);
    } else if (barcodeCameraScannerEvent
        is BarcodeCameraScannerEventToggleCamera) {
      return toggleCamera != null
          ? toggleCamera()
          : orElse(barcodeCameraScannerEvent);
    } else if (barcodeCameraScannerEvent
        is BarcodeCameraScannerEventTogglePause) {
      return togglePause != null
          ? togglePause()
          : orElse(barcodeCameraScannerEvent);
    } else if (barcodeCameraScannerEvent
        is BarcodeCameraScannerEventScanBarcode) {
      return scanBarcode != null
          ? scanBarcode(barcodeCameraScannerEvent.barcode)
          : orElse(barcodeCameraScannerEvent);
    } else {
      throw AssertionError();
    }
  }

  @Deprecated('Use `whenOrNull` instead. Will be removed by next release.')
  void partialWhen({
    void Function()? toggleFlashlight,
    void Function()? toggleCamera,
    void Function()? togglePause,
    void Function(Barcode barcode)? scanBarcode,
    void Function(BarcodeCameraScannerEvent barcodeCameraScannerEvent)? orElse,
  }) {
    final barcodeCameraScannerEvent = this;
    if (barcodeCameraScannerEvent
        is BarcodeCameraScannerEventToggleFlashlight) {
      if (toggleFlashlight != null) {
        toggleFlashlight();
      } else if (orElse != null) {
        orElse(barcodeCameraScannerEvent);
      }
    } else if (barcodeCameraScannerEvent
        is BarcodeCameraScannerEventToggleCamera) {
      if (toggleCamera != null) {
        toggleCamera();
      } else if (orElse != null) {
        orElse(barcodeCameraScannerEvent);
      }
    } else if (barcodeCameraScannerEvent
        is BarcodeCameraScannerEventTogglePause) {
      if (togglePause != null) {
        togglePause();
      } else if (orElse != null) {
        orElse(barcodeCameraScannerEvent);
      }
    } else if (barcodeCameraScannerEvent
        is BarcodeCameraScannerEventScanBarcode) {
      if (scanBarcode != null) {
        scanBarcode(barcodeCameraScannerEvent.barcode);
      } else if (orElse != null) {
        orElse(barcodeCameraScannerEvent);
      }
    } else {
      throw AssertionError();
    }
  }

  R? whenOrNull<R extends Object?>({
    R Function()? toggleFlashlight,
    R Function()? toggleCamera,
    R Function()? togglePause,
    R Function(Barcode barcode)? scanBarcode,
    R Function(BarcodeCameraScannerEvent barcodeCameraScannerEvent)? orElse,
  }) {
    final barcodeCameraScannerEvent = this;
    if (barcodeCameraScannerEvent
        is BarcodeCameraScannerEventToggleFlashlight) {
      return toggleFlashlight != null
          ? toggleFlashlight()
          : orElse?.call(barcodeCameraScannerEvent);
    } else if (barcodeCameraScannerEvent
        is BarcodeCameraScannerEventToggleCamera) {
      return toggleCamera != null
          ? toggleCamera()
          : orElse?.call(barcodeCameraScannerEvent);
    } else if (barcodeCameraScannerEvent
        is BarcodeCameraScannerEventTogglePause) {
      return togglePause != null
          ? togglePause()
          : orElse?.call(barcodeCameraScannerEvent);
    } else if (barcodeCameraScannerEvent
        is BarcodeCameraScannerEventScanBarcode) {
      return scanBarcode != null
          ? scanBarcode(barcodeCameraScannerEvent.barcode)
          : orElse?.call(barcodeCameraScannerEvent);
    } else {
      throw AssertionError();
    }
  }

  R map<R extends Object?>({
    required R Function(
            BarcodeCameraScannerEventToggleFlashlight toggleFlashlight)
        toggleFlashlight,
    required R Function(BarcodeCameraScannerEventToggleCamera toggleCamera)
        toggleCamera,
    required R Function(BarcodeCameraScannerEventTogglePause togglePause)
        togglePause,
    required R Function(BarcodeCameraScannerEventScanBarcode scanBarcode)
        scanBarcode,
  }) {
    final barcodeCameraScannerEvent = this;
    if (barcodeCameraScannerEvent
        is BarcodeCameraScannerEventToggleFlashlight) {
      return toggleFlashlight(barcodeCameraScannerEvent);
    } else if (barcodeCameraScannerEvent
        is BarcodeCameraScannerEventToggleCamera) {
      return toggleCamera(barcodeCameraScannerEvent);
    } else if (barcodeCameraScannerEvent
        is BarcodeCameraScannerEventTogglePause) {
      return togglePause(barcodeCameraScannerEvent);
    } else if (barcodeCameraScannerEvent
        is BarcodeCameraScannerEventScanBarcode) {
      return scanBarcode(barcodeCameraScannerEvent);
    } else {
      throw AssertionError();
    }
  }

  R maybeMap<R extends Object?>({
    R Function(BarcodeCameraScannerEventToggleFlashlight toggleFlashlight)?
        toggleFlashlight,
    R Function(BarcodeCameraScannerEventToggleCamera toggleCamera)?
        toggleCamera,
    R Function(BarcodeCameraScannerEventTogglePause togglePause)? togglePause,
    R Function(BarcodeCameraScannerEventScanBarcode scanBarcode)? scanBarcode,
    required R Function(BarcodeCameraScannerEvent barcodeCameraScannerEvent)
        orElse,
  }) {
    final barcodeCameraScannerEvent = this;
    if (barcodeCameraScannerEvent
        is BarcodeCameraScannerEventToggleFlashlight) {
      return toggleFlashlight != null
          ? toggleFlashlight(barcodeCameraScannerEvent)
          : orElse(barcodeCameraScannerEvent);
    } else if (barcodeCameraScannerEvent
        is BarcodeCameraScannerEventToggleCamera) {
      return toggleCamera != null
          ? toggleCamera(barcodeCameraScannerEvent)
          : orElse(barcodeCameraScannerEvent);
    } else if (barcodeCameraScannerEvent
        is BarcodeCameraScannerEventTogglePause) {
      return togglePause != null
          ? togglePause(barcodeCameraScannerEvent)
          : orElse(barcodeCameraScannerEvent);
    } else if (barcodeCameraScannerEvent
        is BarcodeCameraScannerEventScanBarcode) {
      return scanBarcode != null
          ? scanBarcode(barcodeCameraScannerEvent)
          : orElse(barcodeCameraScannerEvent);
    } else {
      throw AssertionError();
    }
  }

  @Deprecated('Use `mapOrNull` instead. Will be removed by next release.')
  void partialMap({
    void Function(BarcodeCameraScannerEventToggleFlashlight toggleFlashlight)?
        toggleFlashlight,
    void Function(BarcodeCameraScannerEventToggleCamera toggleCamera)?
        toggleCamera,
    void Function(BarcodeCameraScannerEventTogglePause togglePause)?
        togglePause,
    void Function(BarcodeCameraScannerEventScanBarcode scanBarcode)?
        scanBarcode,
    void Function(BarcodeCameraScannerEvent barcodeCameraScannerEvent)? orElse,
  }) {
    final barcodeCameraScannerEvent = this;
    if (barcodeCameraScannerEvent
        is BarcodeCameraScannerEventToggleFlashlight) {
      if (toggleFlashlight != null) {
        toggleFlashlight(barcodeCameraScannerEvent);
      } else if (orElse != null) {
        orElse(barcodeCameraScannerEvent);
      }
    } else if (barcodeCameraScannerEvent
        is BarcodeCameraScannerEventToggleCamera) {
      if (toggleCamera != null) {
        toggleCamera(barcodeCameraScannerEvent);
      } else if (orElse != null) {
        orElse(barcodeCameraScannerEvent);
      }
    } else if (barcodeCameraScannerEvent
        is BarcodeCameraScannerEventTogglePause) {
      if (togglePause != null) {
        togglePause(barcodeCameraScannerEvent);
      } else if (orElse != null) {
        orElse(barcodeCameraScannerEvent);
      }
    } else if (barcodeCameraScannerEvent
        is BarcodeCameraScannerEventScanBarcode) {
      if (scanBarcode != null) {
        scanBarcode(barcodeCameraScannerEvent);
      } else if (orElse != null) {
        orElse(barcodeCameraScannerEvent);
      }
    } else {
      throw AssertionError();
    }
  }

  R? mapOrNull<R extends Object?>({
    R Function(BarcodeCameraScannerEventToggleFlashlight toggleFlashlight)?
        toggleFlashlight,
    R Function(BarcodeCameraScannerEventToggleCamera toggleCamera)?
        toggleCamera,
    R Function(BarcodeCameraScannerEventTogglePause togglePause)? togglePause,
    R Function(BarcodeCameraScannerEventScanBarcode scanBarcode)? scanBarcode,
    R Function(BarcodeCameraScannerEvent barcodeCameraScannerEvent)? orElse,
  }) {
    final barcodeCameraScannerEvent = this;
    if (barcodeCameraScannerEvent
        is BarcodeCameraScannerEventToggleFlashlight) {
      return toggleFlashlight != null
          ? toggleFlashlight(barcodeCameraScannerEvent)
          : orElse?.call(barcodeCameraScannerEvent);
    } else if (barcodeCameraScannerEvent
        is BarcodeCameraScannerEventToggleCamera) {
      return toggleCamera != null
          ? toggleCamera(barcodeCameraScannerEvent)
          : orElse?.call(barcodeCameraScannerEvent);
    } else if (barcodeCameraScannerEvent
        is BarcodeCameraScannerEventTogglePause) {
      return togglePause != null
          ? togglePause(barcodeCameraScannerEvent)
          : orElse?.call(barcodeCameraScannerEvent);
    } else if (barcodeCameraScannerEvent
        is BarcodeCameraScannerEventScanBarcode) {
      return scanBarcode != null
          ? scanBarcode(barcodeCameraScannerEvent)
          : orElse?.call(barcodeCameraScannerEvent);
    } else {
      throw AssertionError();
    }
  }
}

/// (([BarcodeCameraScannerEventToggleFlashlight] : [BarcodeCameraScannerEvent]) toggleFlashlight){}
///
/// with data equality
class BarcodeCameraScannerEventToggleFlashlight
    extends BarcodeCameraScannerEvent with EquatableMixin {
  const BarcodeCameraScannerEventToggleFlashlight() : super._internal();

  @override
  String toString() => 'BarcodeCameraScannerEvent.toggleFlashlight()';

  @override
  List<Object?> get props => [];
}

/// (([BarcodeCameraScannerEventToggleCamera] : [BarcodeCameraScannerEvent]) toggleCamera){}
///
/// with data equality
class BarcodeCameraScannerEventToggleCamera extends BarcodeCameraScannerEvent
    with EquatableMixin {
  const BarcodeCameraScannerEventToggleCamera() : super._internal();

  @override
  String toString() => 'BarcodeCameraScannerEvent.toggleCamera()';

  @override
  List<Object?> get props => [];
}

/// (([BarcodeCameraScannerEventTogglePause] : [BarcodeCameraScannerEvent]) togglePause){}
///
/// with data equality
class BarcodeCameraScannerEventTogglePause extends BarcodeCameraScannerEvent
    with EquatableMixin {
  const BarcodeCameraScannerEventTogglePause() : super._internal();

  @override
  String toString() => 'BarcodeCameraScannerEvent.togglePause()';

  @override
  List<Object?> get props => [];
}

/// (([BarcodeCameraScannerEventScanBarcode] : [BarcodeCameraScannerEvent]) scanBarcode){[Barcode] barcode}
///
/// with data equality
class BarcodeCameraScannerEventScanBarcode extends BarcodeCameraScannerEvent
    with EquatableMixin {
  const BarcodeCameraScannerEventScanBarcode({
    required this.barcode,
  }) : super._internal();

  final Barcode barcode;

  @override
  String toString() =>
      'BarcodeCameraScannerEvent.scanBarcode(barcode: $barcode)';

  @override
  List<Object?> get props => [
        barcode,
      ];
}
