// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'barcode_camera_scanner_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BarcodeCameraScannerState {
  bool get flashlightOn => throw _privateConstructorUsedError;
  bool get paused => throw _privateConstructorUsedError;
  bool get rearCamera => throw _privateConstructorUsedError;
  Option<ValueFailure> get failureOption => throw _privateConstructorUsedError;
  Option<Barcode> get barcodeOption => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BarcodeCameraScannerStateCopyWith<BarcodeCameraScannerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BarcodeCameraScannerStateCopyWith<$Res> {
  factory $BarcodeCameraScannerStateCopyWith(BarcodeCameraScannerState value,
          $Res Function(BarcodeCameraScannerState) then) =
      _$BarcodeCameraScannerStateCopyWithImpl<$Res>;
  $Res call(
      {bool flashlightOn,
      bool paused,
      bool rearCamera,
      Option<ValueFailure> failureOption,
      Option<Barcode> barcodeOption});
}

/// @nodoc
class _$BarcodeCameraScannerStateCopyWithImpl<$Res>
    implements $BarcodeCameraScannerStateCopyWith<$Res> {
  _$BarcodeCameraScannerStateCopyWithImpl(this._value, this._then);

  final BarcodeCameraScannerState _value;
  // ignore: unused_field
  final $Res Function(BarcodeCameraScannerState) _then;

  @override
  $Res call({
    Object? flashlightOn = freezed,
    Object? paused = freezed,
    Object? rearCamera = freezed,
    Object? failureOption = freezed,
    Object? barcodeOption = freezed,
  }) {
    return _then(_value.copyWith(
      flashlightOn: flashlightOn == freezed
          ? _value.flashlightOn
          : flashlightOn // ignore: cast_nullable_to_non_nullable
              as bool,
      paused: paused == freezed
          ? _value.paused
          : paused // ignore: cast_nullable_to_non_nullable
              as bool,
      rearCamera: rearCamera == freezed
          ? _value.rearCamera
          : rearCamera // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOption: failureOption == freezed
          ? _value.failureOption
          : failureOption // ignore: cast_nullable_to_non_nullable
              as Option<ValueFailure>,
      barcodeOption: barcodeOption == freezed
          ? _value.barcodeOption
          : barcodeOption // ignore: cast_nullable_to_non_nullable
              as Option<Barcode>,
    ));
  }
}

/// @nodoc
abstract class _$$_BarcodeCameraScannerStateCopyWith<$Res>
    implements $BarcodeCameraScannerStateCopyWith<$Res> {
  factory _$$_BarcodeCameraScannerStateCopyWith(
          _$_BarcodeCameraScannerState value,
          $Res Function(_$_BarcodeCameraScannerState) then) =
      __$$_BarcodeCameraScannerStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool flashlightOn,
      bool paused,
      bool rearCamera,
      Option<ValueFailure> failureOption,
      Option<Barcode> barcodeOption});
}

/// @nodoc
class __$$_BarcodeCameraScannerStateCopyWithImpl<$Res>
    extends _$BarcodeCameraScannerStateCopyWithImpl<$Res>
    implements _$$_BarcodeCameraScannerStateCopyWith<$Res> {
  __$$_BarcodeCameraScannerStateCopyWithImpl(
      _$_BarcodeCameraScannerState _value,
      $Res Function(_$_BarcodeCameraScannerState) _then)
      : super(_value, (v) => _then(v as _$_BarcodeCameraScannerState));

  @override
  _$_BarcodeCameraScannerState get _value =>
      super._value as _$_BarcodeCameraScannerState;

  @override
  $Res call({
    Object? flashlightOn = freezed,
    Object? paused = freezed,
    Object? rearCamera = freezed,
    Object? failureOption = freezed,
    Object? barcodeOption = freezed,
  }) {
    return _then(_$_BarcodeCameraScannerState(
      flashlightOn: flashlightOn == freezed
          ? _value.flashlightOn
          : flashlightOn // ignore: cast_nullable_to_non_nullable
              as bool,
      paused: paused == freezed
          ? _value.paused
          : paused // ignore: cast_nullable_to_non_nullable
              as bool,
      rearCamera: rearCamera == freezed
          ? _value.rearCamera
          : rearCamera // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOption: failureOption == freezed
          ? _value.failureOption
          : failureOption // ignore: cast_nullable_to_non_nullable
              as Option<ValueFailure>,
      barcodeOption: barcodeOption == freezed
          ? _value.barcodeOption
          : barcodeOption // ignore: cast_nullable_to_non_nullable
              as Option<Barcode>,
    ));
  }
}

/// @nodoc

class _$_BarcodeCameraScannerState implements _BarcodeCameraScannerState {
  const _$_BarcodeCameraScannerState(
      {required this.flashlightOn,
      required this.paused,
      required this.rearCamera,
      required this.failureOption,
      required this.barcodeOption});

  @override
  final bool flashlightOn;
  @override
  final bool paused;
  @override
  final bool rearCamera;
  @override
  final Option<ValueFailure> failureOption;
  @override
  final Option<Barcode> barcodeOption;

  @override
  String toString() {
    return 'BarcodeCameraScannerState(flashlightOn: $flashlightOn, paused: $paused, rearCamera: $rearCamera, failureOption: $failureOption, barcodeOption: $barcodeOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BarcodeCameraScannerState &&
            const DeepCollectionEquality()
                .equals(other.flashlightOn, flashlightOn) &&
            const DeepCollectionEquality().equals(other.paused, paused) &&
            const DeepCollectionEquality()
                .equals(other.rearCamera, rearCamera) &&
            const DeepCollectionEquality()
                .equals(other.failureOption, failureOption) &&
            const DeepCollectionEquality()
                .equals(other.barcodeOption, barcodeOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(flashlightOn),
      const DeepCollectionEquality().hash(paused),
      const DeepCollectionEquality().hash(rearCamera),
      const DeepCollectionEquality().hash(failureOption),
      const DeepCollectionEquality().hash(barcodeOption));

  @JsonKey(ignore: true)
  @override
  _$$_BarcodeCameraScannerStateCopyWith<_$_BarcodeCameraScannerState>
      get copyWith => __$$_BarcodeCameraScannerStateCopyWithImpl<
          _$_BarcodeCameraScannerState>(this, _$identity);
}

abstract class _BarcodeCameraScannerState implements BarcodeCameraScannerState {
  const factory _BarcodeCameraScannerState(
          {required final bool flashlightOn,
          required final bool paused,
          required final bool rearCamera,
          required final Option<ValueFailure> failureOption,
          required final Option<Barcode> barcodeOption}) =
      _$_BarcodeCameraScannerState;

  @override
  bool get flashlightOn => throw _privateConstructorUsedError;
  @override
  bool get paused => throw _privateConstructorUsedError;
  @override
  bool get rearCamera => throw _privateConstructorUsedError;
  @override
  Option<ValueFailure> get failureOption => throw _privateConstructorUsedError;
  @override
  Option<Barcode> get barcodeOption => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_BarcodeCameraScannerStateCopyWith<_$_BarcodeCameraScannerState>
      get copyWith => throw _privateConstructorUsedError;
}
