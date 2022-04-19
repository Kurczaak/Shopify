// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'barcode_camera_scanner_bloc.dart';

// **************************************************************************
// Generator: super_enum_sealed_generators
// **************************************************************************

// ignore_for_file: unused_element, unused_field

// Migration guide for BarcodeCameraScannerEvent:
// For migration to dart_sealed, uncomment
// following generated manifest code, then
// replace it with your super_enum manifest
// then add dependencies to sealed_annotations
// and sealed_generators, then import
// sealed_annotations instead of
// super_enum_sealed_annotations, then change
// part file name from *.super.dart to
// *.sealed.dart, then rerun the build_runner.
// When you are done with migrating all sealed
// classes to dart_sealed, you can remove
// super_enum_sealed_annotations and
// super_enum_sealed_generators dependencies.
//
// @Sealed()
// abstract class _BarcodeCameraScannerEvent
// {
// @WithWrap()
// @WithEquality(Equality.data)
// @WithName('FlashlightOn')
// void flashlightOn();
//
// @WithWrap()
// @WithEquality(Equality.data)
// @WithName('FlashlightOff')
// void flashlightOff();
//
// @WithWrap()
// @WithEquality(Equality.data)
// @WithName('CloseCameras')
// void closeCameras();
//
// @WithWrap()
// @WithEquality(Equality.data)
// @WithName('OpenCameras')
// void openCameras();
//
// @WithWrap()
// @WithEquality(Equality.data)
// @WithName('SwitchCamera')
// void switchCamera();
//
// @WithWrap()
// @WithEquality(Equality.data)
// @WithName('OpenGallery')
// void openGallery();
//
// @WithWrap()
// @WithEquality(Equality.data)
// @WithName('Exit')
// void exit();
// }

/// [BarcodeCameraScannerEvent] {
///
/// ([FlashlightOn] flashlightOn){} with data equality with wrap
///
/// ([FlashlightOff] flashlightOff){} with data equality with wrap
///
/// ([CloseCameras] closeCameras){} with data equality with wrap
///
/// ([OpenCameras] openCameras){} with data equality with wrap
///
/// ([SwitchCamera] switchCamera){} with data equality with wrap
///
/// ([OpenGallery] openGallery){} with data equality with wrap
///
/// ([Exit] exit){} with data equality with wrap
///
/// }
@immutable
abstract class BarcodeCameraScannerEvent {
  const BarcodeCameraScannerEvent._internal();

  const factory BarcodeCameraScannerEvent.flashlightOn() = FlashlightOn;

  const factory BarcodeCameraScannerEvent.flashlightOff() = FlashlightOff;

  const factory BarcodeCameraScannerEvent.closeCameras() = CloseCameras;

  const factory BarcodeCameraScannerEvent.openCameras() = OpenCameras;

  const factory BarcodeCameraScannerEvent.switchCamera() = SwitchCamera;

  const factory BarcodeCameraScannerEvent.openGallery() = OpenGallery;

  const factory BarcodeCameraScannerEvent.exit() = Exit;

  bool isFlashlightOn() => this is FlashlightOn;

  bool isFlashlightOff() => this is FlashlightOff;

  bool isCloseCameras() => this is CloseCameras;

  bool isOpenCameras() => this is OpenCameras;

  bool isSwitchCamera() => this is SwitchCamera;

  bool isOpenGallery() => this is OpenGallery;

  bool isExit() => this is Exit;

  FlashlightOn asFlashlightOn() => this as FlashlightOn;

  FlashlightOff asFlashlightOff() => this as FlashlightOff;

  CloseCameras asCloseCameras() => this as CloseCameras;

  OpenCameras asOpenCameras() => this as OpenCameras;

  SwitchCamera asSwitchCamera() => this as SwitchCamera;

  OpenGallery asOpenGallery() => this as OpenGallery;

  Exit asExit() => this as Exit;

  FlashlightOn? asFlashlightOnOrNull() {
    final barcodeCameraScannerEvent = this;
    return barcodeCameraScannerEvent is FlashlightOn
        ? barcodeCameraScannerEvent
        : null;
  }

  FlashlightOff? asFlashlightOffOrNull() {
    final barcodeCameraScannerEvent = this;
    return barcodeCameraScannerEvent is FlashlightOff
        ? barcodeCameraScannerEvent
        : null;
  }

  CloseCameras? asCloseCamerasOrNull() {
    final barcodeCameraScannerEvent = this;
    return barcodeCameraScannerEvent is CloseCameras
        ? barcodeCameraScannerEvent
        : null;
  }

  OpenCameras? asOpenCamerasOrNull() {
    final barcodeCameraScannerEvent = this;
    return barcodeCameraScannerEvent is OpenCameras
        ? barcodeCameraScannerEvent
        : null;
  }

  SwitchCamera? asSwitchCameraOrNull() {
    final barcodeCameraScannerEvent = this;
    return barcodeCameraScannerEvent is SwitchCamera
        ? barcodeCameraScannerEvent
        : null;
  }

  OpenGallery? asOpenGalleryOrNull() {
    final barcodeCameraScannerEvent = this;
    return barcodeCameraScannerEvent is OpenGallery
        ? barcodeCameraScannerEvent
        : null;
  }

  Exit? asExitOrNull() {
    final barcodeCameraScannerEvent = this;
    return barcodeCameraScannerEvent is Exit ? barcodeCameraScannerEvent : null;
  }

  R when<R extends Object?>({
    required R Function() flashlightOn,
    required R Function() flashlightOff,
    required R Function() closeCameras,
    required R Function() openCameras,
    required R Function() switchCamera,
    required R Function() openGallery,
    required R Function() exit,
  }) {
    final barcodeCameraScannerEvent = this;
    if (barcodeCameraScannerEvent is FlashlightOn) {
      return flashlightOn();
    } else if (barcodeCameraScannerEvent is FlashlightOff) {
      return flashlightOff();
    } else if (barcodeCameraScannerEvent is CloseCameras) {
      return closeCameras();
    } else if (barcodeCameraScannerEvent is OpenCameras) {
      return openCameras();
    } else if (barcodeCameraScannerEvent is SwitchCamera) {
      return switchCamera();
    } else if (barcodeCameraScannerEvent is OpenGallery) {
      return openGallery();
    } else if (barcodeCameraScannerEvent is Exit) {
      return exit();
    } else {
      throw AssertionError();
    }
  }

  R whenOrElse<R extends Object?>({
    R Function()? flashlightOn,
    R Function()? flashlightOff,
    R Function()? closeCameras,
    R Function()? openCameras,
    R Function()? switchCamera,
    R Function()? openGallery,
    R Function()? exit,
    required R Function(BarcodeCameraScannerEvent barcodeCameraScannerEvent)
        orElse,
  }) {
    final barcodeCameraScannerEvent = this;
    if (barcodeCameraScannerEvent is FlashlightOn) {
      return flashlightOn != null
          ? flashlightOn()
          : orElse(barcodeCameraScannerEvent);
    } else if (barcodeCameraScannerEvent is FlashlightOff) {
      return flashlightOff != null
          ? flashlightOff()
          : orElse(barcodeCameraScannerEvent);
    } else if (barcodeCameraScannerEvent is CloseCameras) {
      return closeCameras != null
          ? closeCameras()
          : orElse(barcodeCameraScannerEvent);
    } else if (barcodeCameraScannerEvent is OpenCameras) {
      return openCameras != null
          ? openCameras()
          : orElse(barcodeCameraScannerEvent);
    } else if (barcodeCameraScannerEvent is SwitchCamera) {
      return switchCamera != null
          ? switchCamera()
          : orElse(barcodeCameraScannerEvent);
    } else if (barcodeCameraScannerEvent is OpenGallery) {
      return openGallery != null
          ? openGallery()
          : orElse(barcodeCameraScannerEvent);
    } else if (barcodeCameraScannerEvent is Exit) {
      return exit != null ? exit() : orElse(barcodeCameraScannerEvent);
    } else {
      throw AssertionError();
    }
  }

  R whenOrDefault<R extends Object?>({
    R Function()? flashlightOn,
    R Function()? flashlightOff,
    R Function()? closeCameras,
    R Function()? openCameras,
    R Function()? switchCamera,
    R Function()? openGallery,
    R Function()? exit,
    required R orDefault,
  }) {
    final barcodeCameraScannerEvent = this;
    if (barcodeCameraScannerEvent is FlashlightOn) {
      return flashlightOn != null ? flashlightOn() : orDefault;
    } else if (barcodeCameraScannerEvent is FlashlightOff) {
      return flashlightOff != null ? flashlightOff() : orDefault;
    } else if (barcodeCameraScannerEvent is CloseCameras) {
      return closeCameras != null ? closeCameras() : orDefault;
    } else if (barcodeCameraScannerEvent is OpenCameras) {
      return openCameras != null ? openCameras() : orDefault;
    } else if (barcodeCameraScannerEvent is SwitchCamera) {
      return switchCamera != null ? switchCamera() : orDefault;
    } else if (barcodeCameraScannerEvent is OpenGallery) {
      return openGallery != null ? openGallery() : orDefault;
    } else if (barcodeCameraScannerEvent is Exit) {
      return exit != null ? exit() : orDefault;
    } else {
      throw AssertionError();
    }
  }

  R? whenOrNull<R extends Object?>({
    R Function()? flashlightOn,
    R Function()? flashlightOff,
    R Function()? closeCameras,
    R Function()? openCameras,
    R Function()? switchCamera,
    R Function()? openGallery,
    R Function()? exit,
  }) {
    final barcodeCameraScannerEvent = this;
    if (barcodeCameraScannerEvent is FlashlightOn) {
      return flashlightOn?.call();
    } else if (barcodeCameraScannerEvent is FlashlightOff) {
      return flashlightOff?.call();
    } else if (barcodeCameraScannerEvent is CloseCameras) {
      return closeCameras?.call();
    } else if (barcodeCameraScannerEvent is OpenCameras) {
      return openCameras?.call();
    } else if (barcodeCameraScannerEvent is SwitchCamera) {
      return switchCamera?.call();
    } else if (barcodeCameraScannerEvent is OpenGallery) {
      return openGallery?.call();
    } else if (barcodeCameraScannerEvent is Exit) {
      return exit?.call();
    } else {
      throw AssertionError();
    }
  }

  R whenOrThrow<R extends Object?>({
    R Function()? flashlightOn,
    R Function()? flashlightOff,
    R Function()? closeCameras,
    R Function()? openCameras,
    R Function()? switchCamera,
    R Function()? openGallery,
    R Function()? exit,
  }) {
    final barcodeCameraScannerEvent = this;
    if (barcodeCameraScannerEvent is FlashlightOn && flashlightOn != null) {
      return flashlightOn();
    } else if (barcodeCameraScannerEvent is FlashlightOff &&
        flashlightOff != null) {
      return flashlightOff();
    } else if (barcodeCameraScannerEvent is CloseCameras &&
        closeCameras != null) {
      return closeCameras();
    } else if (barcodeCameraScannerEvent is OpenCameras &&
        openCameras != null) {
      return openCameras();
    } else if (barcodeCameraScannerEvent is SwitchCamera &&
        switchCamera != null) {
      return switchCamera();
    } else if (barcodeCameraScannerEvent is OpenGallery &&
        openGallery != null) {
      return openGallery();
    } else if (barcodeCameraScannerEvent is Exit && exit != null) {
      return exit();
    } else {
      throw AssertionError();
    }
  }

  void whenPartial({
    void Function()? flashlightOn,
    void Function()? flashlightOff,
    void Function()? closeCameras,
    void Function()? openCameras,
    void Function()? switchCamera,
    void Function()? openGallery,
    void Function()? exit,
  }) {
    final barcodeCameraScannerEvent = this;
    if (barcodeCameraScannerEvent is FlashlightOn) {
      flashlightOn?.call();
    } else if (barcodeCameraScannerEvent is FlashlightOff) {
      flashlightOff?.call();
    } else if (barcodeCameraScannerEvent is CloseCameras) {
      closeCameras?.call();
    } else if (barcodeCameraScannerEvent is OpenCameras) {
      openCameras?.call();
    } else if (barcodeCameraScannerEvent is SwitchCamera) {
      switchCamera?.call();
    } else if (barcodeCameraScannerEvent is OpenGallery) {
      openGallery?.call();
    } else if (barcodeCameraScannerEvent is Exit) {
      exit?.call();
    } else {
      throw AssertionError();
    }
  }
}

/// (([FlashlightOn] : [BarcodeCameraScannerEvent]) flashlightOn){}
///
/// with data equality
///
/// with wrap
@immutable
class FlashlightOn extends BarcodeCameraScannerEvent with EquatableMixin {
  const FlashlightOn() : super._internal();

  @override
  String toString() => 'BarcodeCameraScannerEvent.flashlightOn()';

  @override
  List<Object?> get props => [];
}

/// (([FlashlightOff] : [BarcodeCameraScannerEvent]) flashlightOff){}
///
/// with data equality
///
/// with wrap
@immutable
class FlashlightOff extends BarcodeCameraScannerEvent with EquatableMixin {
  const FlashlightOff() : super._internal();

  @override
  String toString() => 'BarcodeCameraScannerEvent.flashlightOff()';

  @override
  List<Object?> get props => [];
}

/// (([CloseCameras] : [BarcodeCameraScannerEvent]) closeCameras){}
///
/// with data equality
///
/// with wrap
@immutable
class CloseCameras extends BarcodeCameraScannerEvent with EquatableMixin {
  const CloseCameras() : super._internal();

  @override
  String toString() => 'BarcodeCameraScannerEvent.closeCameras()';

  @override
  List<Object?> get props => [];
}

/// (([OpenCameras] : [BarcodeCameraScannerEvent]) openCameras){}
///
/// with data equality
///
/// with wrap
@immutable
class OpenCameras extends BarcodeCameraScannerEvent with EquatableMixin {
  const OpenCameras() : super._internal();

  @override
  String toString() => 'BarcodeCameraScannerEvent.openCameras()';

  @override
  List<Object?> get props => [];
}

/// (([SwitchCamera] : [BarcodeCameraScannerEvent]) switchCamera){}
///
/// with data equality
///
/// with wrap
@immutable
class SwitchCamera extends BarcodeCameraScannerEvent with EquatableMixin {
  const SwitchCamera() : super._internal();

  @override
  String toString() => 'BarcodeCameraScannerEvent.switchCamera()';

  @override
  List<Object?> get props => [];
}

/// (([OpenGallery] : [BarcodeCameraScannerEvent]) openGallery){}
///
/// with data equality
///
/// with wrap
@immutable
class OpenGallery extends BarcodeCameraScannerEvent with EquatableMixin {
  const OpenGallery() : super._internal();

  @override
  String toString() => 'BarcodeCameraScannerEvent.openGallery()';

  @override
  List<Object?> get props => [];
}

/// (([Exit] : [BarcodeCameraScannerEvent]) exit){}
///
/// with data equality
///
/// with wrap
@immutable
class Exit extends BarcodeCameraScannerEvent with EquatableMixin {
  const Exit() : super._internal();

  @override
  String toString() => 'BarcodeCameraScannerEvent.exit()';

  @override
  List<Object?> get props => [];
}

// ignore_for_file: unused_element, unused_field

// Migration guide for BarcodeCameraScannerState:
// For migration to dart_sealed, uncomment
// following generated manifest code, then
// replace it with your super_enum manifest
// then add dependencies to sealed_annotations
// and sealed_generators, then import
// sealed_annotations instead of
// super_enum_sealed_annotations, then change
// part file name from *.super.dart to
// *.sealed.dart, then rerun the build_runner.
// When you are done with migrating all sealed
// classes to dart_sealed, you can remove
// super_enum_sealed_annotations and
// super_enum_sealed_generators dependencies.
//
// @Sealed()
// abstract class _BarcodeCameraScannerState
// {
// @WithWrap()
// @WithEquality(Equality.data)
// @WithName('Initial')
// void initial();
//
// @WithWrap()
// @WithEquality(Equality.data)
// @WithName('Loading')
// void loading();
//
// @WithEquality(Equality.data)
// @WithName('Loaded')
// void loaded(Barcode barcode);
//
// @WithEquality(Equality.data)
// @WithName('Error')
// void error(ValueFailure<dynamic> failure);
// }

/// [BarcodeCameraScannerState] {
///
/// ([Initial] initial){} with data equality with wrap
///
/// ([Loading] loading){} with data equality with wrap
///
/// ([Loaded] loaded){[Barcode] barcode} with data equality
///
/// ([Error] error){[ValueFailure<dynamic>] failure} with data equality
///
/// }
@immutable
abstract class BarcodeCameraScannerState {
  const BarcodeCameraScannerState._internal();

  const factory BarcodeCameraScannerState.initial() = Initial;

  const factory BarcodeCameraScannerState.loading() = Loading;

  const factory BarcodeCameraScannerState.loaded({
    required Barcode barcode,
  }) = Loaded;

  const factory BarcodeCameraScannerState.error({
    required ValueFailure<dynamic> failure,
  }) = Error;

  bool isInitial() => this is Initial;

  bool isLoading() => this is Loading;

  bool isLoaded() => this is Loaded;

  bool isError() => this is Error;

  Initial asInitial() => this as Initial;

  Loading asLoading() => this as Loading;

  Loaded asLoaded() => this as Loaded;

  Error asError() => this as Error;

  Initial? asInitialOrNull() {
    final barcodeCameraScannerState = this;
    return barcodeCameraScannerState is Initial
        ? barcodeCameraScannerState
        : null;
  }

  Loading? asLoadingOrNull() {
    final barcodeCameraScannerState = this;
    return barcodeCameraScannerState is Loading
        ? barcodeCameraScannerState
        : null;
  }

  Loaded? asLoadedOrNull() {
    final barcodeCameraScannerState = this;
    return barcodeCameraScannerState is Loaded
        ? barcodeCameraScannerState
        : null;
  }

  Error? asErrorOrNull() {
    final barcodeCameraScannerState = this;
    return barcodeCameraScannerState is Error
        ? barcodeCameraScannerState
        : null;
  }

  R when<R extends Object?>({
    required R Function() initial,
    required R Function() loading,
    required R Function(Loaded loaded) loaded,
    required R Function(Error error) error,
  }) {
    final barcodeCameraScannerState = this;
    if (barcodeCameraScannerState is Initial) {
      return initial();
    } else if (barcodeCameraScannerState is Loading) {
      return loading();
    } else if (barcodeCameraScannerState is Loaded) {
      return loaded(barcodeCameraScannerState);
    } else if (barcodeCameraScannerState is Error) {
      return error(barcodeCameraScannerState);
    } else {
      throw AssertionError();
    }
  }

  R whenOrElse<R extends Object?>({
    R Function()? initial,
    R Function()? loading,
    R Function(Loaded loaded)? loaded,
    R Function(Error error)? error,
    required R Function(BarcodeCameraScannerState barcodeCameraScannerState)
        orElse,
  }) {
    final barcodeCameraScannerState = this;
    if (barcodeCameraScannerState is Initial) {
      return initial != null ? initial() : orElse(barcodeCameraScannerState);
    } else if (barcodeCameraScannerState is Loading) {
      return loading != null ? loading() : orElse(barcodeCameraScannerState);
    } else if (barcodeCameraScannerState is Loaded) {
      return loaded != null
          ? loaded(barcodeCameraScannerState)
          : orElse(barcodeCameraScannerState);
    } else if (barcodeCameraScannerState is Error) {
      return error != null
          ? error(barcodeCameraScannerState)
          : orElse(barcodeCameraScannerState);
    } else {
      throw AssertionError();
    }
  }

  R whenOrDefault<R extends Object?>({
    R Function()? initial,
    R Function()? loading,
    R Function(Loaded loaded)? loaded,
    R Function(Error error)? error,
    required R orDefault,
  }) {
    final barcodeCameraScannerState = this;
    if (barcodeCameraScannerState is Initial) {
      return initial != null ? initial() : orDefault;
    } else if (barcodeCameraScannerState is Loading) {
      return loading != null ? loading() : orDefault;
    } else if (barcodeCameraScannerState is Loaded) {
      return loaded != null ? loaded(barcodeCameraScannerState) : orDefault;
    } else if (barcodeCameraScannerState is Error) {
      return error != null ? error(barcodeCameraScannerState) : orDefault;
    } else {
      throw AssertionError();
    }
  }

  R? whenOrNull<R extends Object?>({
    R Function()? initial,
    R Function()? loading,
    R Function(Loaded loaded)? loaded,
    R Function(Error error)? error,
  }) {
    final barcodeCameraScannerState = this;
    if (barcodeCameraScannerState is Initial) {
      return initial?.call();
    } else if (barcodeCameraScannerState is Loading) {
      return loading?.call();
    } else if (barcodeCameraScannerState is Loaded) {
      return loaded?.call(barcodeCameraScannerState);
    } else if (barcodeCameraScannerState is Error) {
      return error?.call(barcodeCameraScannerState);
    } else {
      throw AssertionError();
    }
  }

  R whenOrThrow<R extends Object?>({
    R Function()? initial,
    R Function()? loading,
    R Function(Loaded loaded)? loaded,
    R Function(Error error)? error,
  }) {
    final barcodeCameraScannerState = this;
    if (barcodeCameraScannerState is Initial && initial != null) {
      return initial();
    } else if (barcodeCameraScannerState is Loading && loading != null) {
      return loading();
    } else if (barcodeCameraScannerState is Loaded && loaded != null) {
      return loaded(barcodeCameraScannerState);
    } else if (barcodeCameraScannerState is Error && error != null) {
      return error(barcodeCameraScannerState);
    } else {
      throw AssertionError();
    }
  }

  void whenPartial({
    void Function()? initial,
    void Function()? loading,
    void Function(Loaded loaded)? loaded,
    void Function(Error error)? error,
  }) {
    final barcodeCameraScannerState = this;
    if (barcodeCameraScannerState is Initial) {
      initial?.call();
    } else if (barcodeCameraScannerState is Loading) {
      loading?.call();
    } else if (barcodeCameraScannerState is Loaded) {
      loaded?.call(barcodeCameraScannerState);
    } else if (barcodeCameraScannerState is Error) {
      error?.call(barcodeCameraScannerState);
    } else {
      throw AssertionError();
    }
  }
}

/// (([Initial] : [BarcodeCameraScannerState]) initial){}
///
/// with data equality
///
/// with wrap
@immutable
class Initial extends BarcodeCameraScannerState with EquatableMixin {
  const Initial() : super._internal();

  @override
  String toString() => 'BarcodeCameraScannerState.initial()';

  @override
  List<Object?> get props => [];
}

/// (([Loading] : [BarcodeCameraScannerState]) loading){}
///
/// with data equality
///
/// with wrap
@immutable
class Loading extends BarcodeCameraScannerState with EquatableMixin {
  const Loading() : super._internal();

  @override
  String toString() => 'BarcodeCameraScannerState.loading()';

  @override
  List<Object?> get props => [];
}

/// (([Loaded] : [BarcodeCameraScannerState]) loaded){[Barcode] barcode}
///
/// with data equality
@immutable
class Loaded extends BarcodeCameraScannerState with EquatableMixin {
  const Loaded({
    required this.barcode,
  }) : super._internal();

  final Barcode barcode;

  @override
  String toString() => 'BarcodeCameraScannerState.loaded(barcode: $barcode)';

  @override
  List<Object?> get props => [
        barcode,
      ];
}

/// (([Error] : [BarcodeCameraScannerState]) error){[ValueFailure<dynamic>] failure}
///
/// with data equality
@immutable
class Error extends BarcodeCameraScannerState with EquatableMixin {
  const Error({
    required this.failure,
  }) : super._internal();

  final ValueFailure<dynamic> failure;

  @override
  String toString() => 'BarcodeCameraScannerState.error(failure: $failure)';

  @override
  List<Object?> get props => [
        failure,
      ];
}
