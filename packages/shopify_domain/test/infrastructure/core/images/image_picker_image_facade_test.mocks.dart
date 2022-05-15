// Mocks generated by Mockito 5.1.0 from annotations
// in shopify_domain/test/infrastructure/core/images/image_picker_image_facade_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i4;
import 'dart:convert' as _i5;
import 'dart:typed_data' as _i6;

import 'package:image_picker/image_picker.dart' as _i3;
import 'package:image_picker_platform_interface/image_picker_platform_interface.dart'
    as _i2;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

class _FakeLostData_0 extends _i1.Fake implements _i2.LostData {}

class _FakeLostDataResponse_1 extends _i1.Fake implements _i2.LostDataResponse {
}

class _FakeDateTime_2 extends _i1.Fake implements DateTime {}

/// A class which mocks [ImagePicker].
///
/// See the documentation for Mockito's code generation for more information.
class MockImagePicker extends _i1.Mock implements _i3.ImagePicker {
  MockImagePicker() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.PickedFile?> getImage(
          {_i2.ImageSource? source,
          double? maxWidth,
          double? maxHeight,
          int? imageQuality,
          _i2.CameraDevice? preferredCameraDevice = _i2.CameraDevice.rear}) =>
      (super.noSuchMethod(
              Invocation.method(#getImage, [], {
                #source: source,
                #maxWidth: maxWidth,
                #maxHeight: maxHeight,
                #imageQuality: imageQuality,
                #preferredCameraDevice: preferredCameraDevice
              }),
              returnValue: Future<_i2.PickedFile?>.value())
          as _i4.Future<_i2.PickedFile?>);
  @override
  _i4.Future<List<_i2.PickedFile>?> getMultiImage(
          {double? maxWidth, double? maxHeight, int? imageQuality}) =>
      (super.noSuchMethod(
              Invocation.method(#getMultiImage, [], {
                #maxWidth: maxWidth,
                #maxHeight: maxHeight,
                #imageQuality: imageQuality
              }),
              returnValue: Future<List<_i2.PickedFile>?>.value())
          as _i4.Future<List<_i2.PickedFile>?>);
  @override
  _i4.Future<_i2.PickedFile?> getVideo(
          {_i2.ImageSource? source,
          _i2.CameraDevice? preferredCameraDevice = _i2.CameraDevice.rear,
          Duration? maxDuration}) =>
      (super.noSuchMethod(
              Invocation.method(#getVideo, [], {
                #source: source,
                #preferredCameraDevice: preferredCameraDevice,
                #maxDuration: maxDuration
              }),
              returnValue: Future<_i2.PickedFile?>.value())
          as _i4.Future<_i2.PickedFile?>);
  @override
  _i4.Future<_i2.LostData> getLostData() =>
      (super.noSuchMethod(Invocation.method(#getLostData, []),
              returnValue: Future<_i2.LostData>.value(_FakeLostData_0()))
          as _i4.Future<_i2.LostData>);
  @override
  _i4.Future<_i2.XFile?> pickImage(
          {_i2.ImageSource? source,
          double? maxWidth,
          double? maxHeight,
          int? imageQuality,
          _i2.CameraDevice? preferredCameraDevice = _i2.CameraDevice.rear}) =>
      (super.noSuchMethod(
          Invocation.method(#pickImage, [], {
            #source: source,
            #maxWidth: maxWidth,
            #maxHeight: maxHeight,
            #imageQuality: imageQuality,
            #preferredCameraDevice: preferredCameraDevice
          }),
          returnValue: Future<_i2.XFile?>.value()) as _i4.Future<_i2.XFile?>);
  @override
  _i4.Future<List<_i2.XFile>?> pickMultiImage(
          {double? maxWidth, double? maxHeight, int? imageQuality}) =>
      (super.noSuchMethod(
              Invocation.method(#pickMultiImage, [], {
                #maxWidth: maxWidth,
                #maxHeight: maxHeight,
                #imageQuality: imageQuality
              }),
              returnValue: Future<List<_i2.XFile>?>.value())
          as _i4.Future<List<_i2.XFile>?>);
  @override
  _i4.Future<_i2.XFile?> pickVideo(
          {_i2.ImageSource? source,
          _i2.CameraDevice? preferredCameraDevice = _i2.CameraDevice.rear,
          Duration? maxDuration}) =>
      (super.noSuchMethod(
          Invocation.method(#pickVideo, [], {
            #source: source,
            #preferredCameraDevice: preferredCameraDevice,
            #maxDuration: maxDuration
          }),
          returnValue: Future<_i2.XFile?>.value()) as _i4.Future<_i2.XFile?>);
  @override
  _i4.Future<_i2.LostDataResponse> retrieveLostData() =>
      (super.noSuchMethod(Invocation.method(#retrieveLostData, []),
              returnValue:
                  Future<_i2.LostDataResponse>.value(_FakeLostDataResponse_1()))
          as _i4.Future<_i2.LostDataResponse>);
}

/// A class which mocks [XFile].
///
/// See the documentation for Mockito's code generation for more information.
class MockXFile extends _i1.Mock implements _i2.XFile {
  MockXFile() {
    _i1.throwOnMissingStub(this);
  }

  @override
  String get path =>
      (super.noSuchMethod(Invocation.getter(#path), returnValue: '') as String);
  @override
  String get name =>
      (super.noSuchMethod(Invocation.getter(#name), returnValue: '') as String);
  @override
  _i4.Future<void> saveTo(String? path) =>
      (super.noSuchMethod(Invocation.method(#saveTo, [path]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i4.Future<void>);
  @override
  _i4.Future<int> length() =>
      (super.noSuchMethod(Invocation.method(#length, []),
          returnValue: Future<int>.value(0)) as _i4.Future<int>);
  @override
  _i4.Future<String> readAsString(
          {_i5.Encoding? encoding = const _i5.Utf8Codec()}) =>
      (super.noSuchMethod(
          Invocation.method(#readAsString, [], {#encoding: encoding}),
          returnValue: Future<String>.value('')) as _i4.Future<String>);
  @override
  _i4.Future<_i6.Uint8List> readAsBytes() =>
      (super.noSuchMethod(Invocation.method(#readAsBytes, []),
              returnValue: Future<_i6.Uint8List>.value(_i6.Uint8List(0)))
          as _i4.Future<_i6.Uint8List>);
  @override
  _i4.Stream<_i6.Uint8List> openRead([int? start, int? end]) =>
      (super.noSuchMethod(Invocation.method(#openRead, [start, end]),
              returnValue: Stream<_i6.Uint8List>.empty())
          as _i4.Stream<_i6.Uint8List>);
  @override
  _i4.Future<DateTime> lastModified() =>
      (super.noSuchMethod(Invocation.method(#lastModified, []),
              returnValue: Future<DateTime>.value(_FakeDateTime_2()))
          as _i4.Future<DateTime>);
}
