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
// @WithName('ToggleFlashlight')
// void toggleFlashlight();
//
// @WithWrap()
// @WithEquality(Equality.data)
// @WithName('ToggleCamera')
// void toggleCamera();
//
// @WithWrap()
// @WithEquality(Equality.data)
// @WithName('OpenGallery')
// void openGallery();
//
// @WithWrap()
// @WithEquality(Equality.data)
// @WithName('TogglePause')
// void togglePause();
//
// @WithWrap()
// @WithEquality(Equality.data)
// @WithName('Exit')
// void exit();
// }

/// [BarcodeCameraScannerEvent] {
///
/// ([ToggleFlashlight] toggleFlashlight){} with data equality with wrap
///
/// ([ToggleCamera] toggleCamera){} with data equality with wrap
///
/// ([OpenGallery] openGallery){} with data equality with wrap
///
/// ([TogglePause] togglePause){} with data equality with wrap
///
/// ([Exit] exit){} with data equality with wrap
///
/// }
@immutable
abstract class BarcodeCameraScannerEvent {
  const BarcodeCameraScannerEvent._internal();

  const factory BarcodeCameraScannerEvent.toggleFlashlight() = ToggleFlashlight;

  const factory BarcodeCameraScannerEvent.toggleCamera() = ToggleCamera;

  const factory BarcodeCameraScannerEvent.openGallery() = OpenGallery;

  const factory BarcodeCameraScannerEvent.togglePause() = TogglePause;

  const factory BarcodeCameraScannerEvent.exit() = Exit;

  bool isToggleFlashlight() => this is ToggleFlashlight;

  bool isToggleCamera() => this is ToggleCamera;

  bool isOpenGallery() => this is OpenGallery;

  bool isTogglePause() => this is TogglePause;

  bool isExit() => this is Exit;

  ToggleFlashlight asToggleFlashlight() => this as ToggleFlashlight;

  ToggleCamera asToggleCamera() => this as ToggleCamera;

  OpenGallery asOpenGallery() => this as OpenGallery;

  TogglePause asTogglePause() => this as TogglePause;

  Exit asExit() => this as Exit;

  ToggleFlashlight? asToggleFlashlightOrNull() {
    final barcodeCameraScannerEvent = this;
    return barcodeCameraScannerEvent is ToggleFlashlight
        ? barcodeCameraScannerEvent
        : null;
  }

  ToggleCamera? asToggleCameraOrNull() {
    final barcodeCameraScannerEvent = this;
    return barcodeCameraScannerEvent is ToggleCamera
        ? barcodeCameraScannerEvent
        : null;
  }

  OpenGallery? asOpenGalleryOrNull() {
    final barcodeCameraScannerEvent = this;
    return barcodeCameraScannerEvent is OpenGallery
        ? barcodeCameraScannerEvent
        : null;
  }

  TogglePause? asTogglePauseOrNull() {
    final barcodeCameraScannerEvent = this;
    return barcodeCameraScannerEvent is TogglePause
        ? barcodeCameraScannerEvent
        : null;
  }

  Exit? asExitOrNull() {
    final barcodeCameraScannerEvent = this;
    return barcodeCameraScannerEvent is Exit ? barcodeCameraScannerEvent : null;
  }

  R when<R extends Object?>({
    required R Function() toggleFlashlight,
    required R Function() toggleCamera,
    required R Function() openGallery,
    required R Function() togglePause,
    required R Function() exit,
  }) {
    final barcodeCameraScannerEvent = this;
    if (barcodeCameraScannerEvent is ToggleFlashlight) {
      return toggleFlashlight();
    } else if (barcodeCameraScannerEvent is ToggleCamera) {
      return toggleCamera();
    } else if (barcodeCameraScannerEvent is OpenGallery) {
      return openGallery();
    } else if (barcodeCameraScannerEvent is TogglePause) {
      return togglePause();
    } else if (barcodeCameraScannerEvent is Exit) {
      return exit();
    } else {
      throw AssertionError();
    }
  }

  R whenOrElse<R extends Object?>({
    R Function()? toggleFlashlight,
    R Function()? toggleCamera,
    R Function()? openGallery,
    R Function()? togglePause,
    R Function()? exit,
    required R Function(BarcodeCameraScannerEvent barcodeCameraScannerEvent)
        orElse,
  }) {
    final barcodeCameraScannerEvent = this;
    if (barcodeCameraScannerEvent is ToggleFlashlight) {
      return toggleFlashlight != null
          ? toggleFlashlight()
          : orElse(barcodeCameraScannerEvent);
    } else if (barcodeCameraScannerEvent is ToggleCamera) {
      return toggleCamera != null
          ? toggleCamera()
          : orElse(barcodeCameraScannerEvent);
    } else if (barcodeCameraScannerEvent is OpenGallery) {
      return openGallery != null
          ? openGallery()
          : orElse(barcodeCameraScannerEvent);
    } else if (barcodeCameraScannerEvent is TogglePause) {
      return togglePause != null
          ? togglePause()
          : orElse(barcodeCameraScannerEvent);
    } else if (barcodeCameraScannerEvent is Exit) {
      return exit != null ? exit() : orElse(barcodeCameraScannerEvent);
    } else {
      throw AssertionError();
    }
  }

  R whenOrDefault<R extends Object?>({
    R Function()? toggleFlashlight,
    R Function()? toggleCamera,
    R Function()? openGallery,
    R Function()? togglePause,
    R Function()? exit,
    required R orDefault,
  }) {
    final barcodeCameraScannerEvent = this;
    if (barcodeCameraScannerEvent is ToggleFlashlight) {
      return toggleFlashlight != null ? toggleFlashlight() : orDefault;
    } else if (barcodeCameraScannerEvent is ToggleCamera) {
      return toggleCamera != null ? toggleCamera() : orDefault;
    } else if (barcodeCameraScannerEvent is OpenGallery) {
      return openGallery != null ? openGallery() : orDefault;
    } else if (barcodeCameraScannerEvent is TogglePause) {
      return togglePause != null ? togglePause() : orDefault;
    } else if (barcodeCameraScannerEvent is Exit) {
      return exit != null ? exit() : orDefault;
    } else {
      throw AssertionError();
    }
  }

  R? whenOrNull<R extends Object?>({
    R Function()? toggleFlashlight,
    R Function()? toggleCamera,
    R Function()? openGallery,
    R Function()? togglePause,
    R Function()? exit,
  }) {
    final barcodeCameraScannerEvent = this;
    if (barcodeCameraScannerEvent is ToggleFlashlight) {
      return toggleFlashlight?.call();
    } else if (barcodeCameraScannerEvent is ToggleCamera) {
      return toggleCamera?.call();
    } else if (barcodeCameraScannerEvent is OpenGallery) {
      return openGallery?.call();
    } else if (barcodeCameraScannerEvent is TogglePause) {
      return togglePause?.call();
    } else if (barcodeCameraScannerEvent is Exit) {
      return exit?.call();
    } else {
      throw AssertionError();
    }
  }

  R whenOrThrow<R extends Object?>({
    R Function()? toggleFlashlight,
    R Function()? toggleCamera,
    R Function()? openGallery,
    R Function()? togglePause,
    R Function()? exit,
  }) {
    final barcodeCameraScannerEvent = this;
    if (barcodeCameraScannerEvent is ToggleFlashlight &&
        toggleFlashlight != null) {
      return toggleFlashlight();
    } else if (barcodeCameraScannerEvent is ToggleCamera &&
        toggleCamera != null) {
      return toggleCamera();
    } else if (barcodeCameraScannerEvent is OpenGallery &&
        openGallery != null) {
      return openGallery();
    } else if (barcodeCameraScannerEvent is TogglePause &&
        togglePause != null) {
      return togglePause();
    } else if (barcodeCameraScannerEvent is Exit && exit != null) {
      return exit();
    } else {
      throw AssertionError();
    }
  }

  void whenPartial({
    void Function()? toggleFlashlight,
    void Function()? toggleCamera,
    void Function()? openGallery,
    void Function()? togglePause,
    void Function()? exit,
  }) {
    final barcodeCameraScannerEvent = this;
    if (barcodeCameraScannerEvent is ToggleFlashlight) {
      toggleFlashlight?.call();
    } else if (barcodeCameraScannerEvent is ToggleCamera) {
      toggleCamera?.call();
    } else if (barcodeCameraScannerEvent is OpenGallery) {
      openGallery?.call();
    } else if (barcodeCameraScannerEvent is TogglePause) {
      togglePause?.call();
    } else if (barcodeCameraScannerEvent is Exit) {
      exit?.call();
    } else {
      throw AssertionError();
    }
  }
}

/// (([ToggleFlashlight] : [BarcodeCameraScannerEvent]) toggleFlashlight){}
///
/// with data equality
///
/// with wrap
@immutable
class ToggleFlashlight extends BarcodeCameraScannerEvent with EquatableMixin {
  const ToggleFlashlight() : super._internal();

  @override
  String toString() => 'BarcodeCameraScannerEvent.toggleFlashlight()';

  @override
  List<Object?> get props => [];
}

/// (([ToggleCamera] : [BarcodeCameraScannerEvent]) toggleCamera){}
///
/// with data equality
///
/// with wrap
@immutable
class ToggleCamera extends BarcodeCameraScannerEvent with EquatableMixin {
  const ToggleCamera() : super._internal();

  @override
  String toString() => 'BarcodeCameraScannerEvent.toggleCamera()';

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

/// (([TogglePause] : [BarcodeCameraScannerEvent]) togglePause){}
///
/// with data equality
///
/// with wrap
@immutable
class TogglePause extends BarcodeCameraScannerEvent with EquatableMixin {
  const TogglePause() : super._internal();

  @override
  String toString() => 'BarcodeCameraScannerEvent.togglePause()';

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
