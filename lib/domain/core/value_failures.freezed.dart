// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'value_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CoreValueFailureTearOff {
  const _$CoreValueFailureTearOff();

  ListTooLong<T> listTooLong<T>(
      {required T failedValue, required int maxLength}) {
    return ListTooLong<T>(
      failedValue: failedValue,
      maxLength: maxLength,
    );
  }

  ListTooShort<T> listTooShort<T>(
      {required T failedValue, required int minLength}) {
    return ListTooShort<T>(
      failedValue: failedValue,
      minLength: minLength,
    );
  }

  ExceedingLength<T> exceedingLength<T>(
      {required T failedValue, required int maxLength}) {
    return ExceedingLength<T>(
      failedValue: failedValue,
      maxLength: maxLength,
    );
  }

  StringTooShort<T> stringTooShort<T>(
      {required T failedValue, required int minLength}) {
    return StringTooShort<T>(
      failedValue: failedValue,
      minLength: minLength,
    );
  }

  StringDoesntContainKeyword<T> stringDoesntContainKeyword<T>(
      {required T failedValue, required String missingKeyword}) {
    return StringDoesntContainKeyword<T>(
      failedValue: failedValue,
      missingKeyword: missingKeyword,
    );
  }

  Empty<T> empty<T>({required T failedValue}) {
    return Empty<T>(
      failedValue: failedValue,
    );
  }

  Multiline<T> multiline<T>({required T failedValue}) {
    return Multiline<T>(
      failedValue: failedValue,
    );
  }

  NonNumeric<T> nonNumeric<T>({required T failedValue}) {
    return NonNumeric<T>(
      failedValue: failedValue,
    );
  }

  NoNumericValuePresent<T> noNumericValuePresent<T>({required T failedValue}) {
    return NoNumericValuePresent<T>(
      failedValue: failedValue,
    );
  }

  NonPositive<T> nonPositive<T>({required T failedValue}) {
    return NonPositive<T>(
      failedValue: failedValue,
    );
  }

  NumberOutsideInterval<T> numberOutsideInterval<T>(
      {required T failedValue, required num min, required num max}) {
    return NumberOutsideInterval<T>(
      failedValue: failedValue,
      min: min,
      max: max,
    );
  }

  ImageTooBig<T> imageTooBig<T>(
      {required T failedValue, required int maxHeight, required int maxWidth}) {
    return ImageTooBig<T>(
      failedValue: failedValue,
      maxHeight: maxHeight,
      maxWidth: maxWidth,
    );
  }

  ImageTooSmall<T> imageTooSmall<T>(
      {required T failedValue, required int minHeight, required int minWidth}) {
    return ImageTooSmall<T>(
      failedValue: failedValue,
      minHeight: minHeight,
      minWidth: minWidth,
    );
  }

  IncorrectPostalCode<T> incorrectPostalCode<T>({required T failedValue}) {
    return IncorrectPostalCode<T>(
      failedValue: failedValue,
    );
  }

  NoAddressNumber<T> noAddressNumber<T>({required T failedValue}) {
    return NoAddressNumber<T>(
      failedValue: failedValue,
    );
  }

  NoInternetConnection<T> noInternetConnection<T>() {
    return NoInternetConnection<T>();
  }
}

/// @nodoc
const $CoreValueFailure = _$CoreValueFailureTearOff();

/// @nodoc
mixin _$CoreValueFailure<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int maxLength) listTooLong,
    required TResult Function(T failedValue, int minLength) listTooShort,
    required TResult Function(T failedValue, int maxLength) exceedingLength,
    required TResult Function(T failedValue, int minLength) stringTooShort,
    required TResult Function(T failedValue, String missingKeyword)
        stringDoesntContainKeyword,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) multiline,
    required TResult Function(T failedValue) nonNumeric,
    required TResult Function(T failedValue) noNumericValuePresent,
    required TResult Function(T failedValue) nonPositive,
    required TResult Function(T failedValue, num min, num max)
        numberOutsideInterval,
    required TResult Function(T failedValue, int maxHeight, int maxWidth)
        imageTooBig,
    required TResult Function(T failedValue, int minHeight, int minWidth)
        imageTooSmall,
    required TResult Function(T failedValue) incorrectPostalCode,
    required TResult Function(T failedValue) noAddressNumber,
    required TResult Function() noInternetConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue, int maxLength)? listTooLong,
    TResult Function(T failedValue, int minLength)? listTooShort,
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue, int minLength)? stringTooShort,
    TResult Function(T failedValue, String missingKeyword)?
        stringDoesntContainKeyword,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue)? nonNumeric,
    TResult Function(T failedValue)? noNumericValuePresent,
    TResult Function(T failedValue)? nonPositive,
    TResult Function(T failedValue, num min, num max)? numberOutsideInterval,
    TResult Function(T failedValue, int maxHeight, int maxWidth)? imageTooBig,
    TResult Function(T failedValue, int minHeight, int minWidth)? imageTooSmall,
    TResult Function(T failedValue)? incorrectPostalCode,
    TResult Function(T failedValue)? noAddressNumber,
    TResult Function()? noInternetConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int maxLength)? listTooLong,
    TResult Function(T failedValue, int minLength)? listTooShort,
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue, int minLength)? stringTooShort,
    TResult Function(T failedValue, String missingKeyword)?
        stringDoesntContainKeyword,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue)? nonNumeric,
    TResult Function(T failedValue)? noNumericValuePresent,
    TResult Function(T failedValue)? nonPositive,
    TResult Function(T failedValue, num min, num max)? numberOutsideInterval,
    TResult Function(T failedValue, int maxHeight, int maxWidth)? imageTooBig,
    TResult Function(T failedValue, int minHeight, int minWidth)? imageTooSmall,
    TResult Function(T failedValue)? incorrectPostalCode,
    TResult Function(T failedValue)? noAddressNumber,
    TResult Function()? noInternetConnection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ListTooLong<T> value) listTooLong,
    required TResult Function(ListTooShort<T> value) listTooShort,
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(StringTooShort<T> value) stringTooShort,
    required TResult Function(StringDoesntContainKeyword<T> value)
        stringDoesntContainKeyword,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(NonNumeric<T> value) nonNumeric,
    required TResult Function(NoNumericValuePresent<T> value)
        noNumericValuePresent,
    required TResult Function(NonPositive<T> value) nonPositive,
    required TResult Function(NumberOutsideInterval<T> value)
        numberOutsideInterval,
    required TResult Function(ImageTooBig<T> value) imageTooBig,
    required TResult Function(ImageTooSmall<T> value) imageTooSmall,
    required TResult Function(IncorrectPostalCode<T> value) incorrectPostalCode,
    required TResult Function(NoAddressNumber<T> value) noAddressNumber,
    required TResult Function(NoInternetConnection<T> value)
        noInternetConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(ListTooShort<T> value)? listTooShort,
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(StringTooShort<T> value)? stringTooShort,
    TResult Function(StringDoesntContainKeyword<T> value)?
        stringDoesntContainKeyword,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(NonNumeric<T> value)? nonNumeric,
    TResult Function(NoNumericValuePresent<T> value)? noNumericValuePresent,
    TResult Function(NonPositive<T> value)? nonPositive,
    TResult Function(NumberOutsideInterval<T> value)? numberOutsideInterval,
    TResult Function(ImageTooBig<T> value)? imageTooBig,
    TResult Function(ImageTooSmall<T> value)? imageTooSmall,
    TResult Function(IncorrectPostalCode<T> value)? incorrectPostalCode,
    TResult Function(NoAddressNumber<T> value)? noAddressNumber,
    TResult Function(NoInternetConnection<T> value)? noInternetConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(ListTooShort<T> value)? listTooShort,
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(StringTooShort<T> value)? stringTooShort,
    TResult Function(StringDoesntContainKeyword<T> value)?
        stringDoesntContainKeyword,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(NonNumeric<T> value)? nonNumeric,
    TResult Function(NoNumericValuePresent<T> value)? noNumericValuePresent,
    TResult Function(NonPositive<T> value)? nonPositive,
    TResult Function(NumberOutsideInterval<T> value)? numberOutsideInterval,
    TResult Function(ImageTooBig<T> value)? imageTooBig,
    TResult Function(ImageTooSmall<T> value)? imageTooSmall,
    TResult Function(IncorrectPostalCode<T> value)? incorrectPostalCode,
    TResult Function(NoAddressNumber<T> value)? noAddressNumber,
    TResult Function(NoInternetConnection<T> value)? noInternetConnection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoreValueFailureCopyWith<T, $Res> {
  factory $CoreValueFailureCopyWith(
          CoreValueFailure<T> value, $Res Function(CoreValueFailure<T>) then) =
      _$CoreValueFailureCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$CoreValueFailureCopyWithImpl<T, $Res>
    implements $CoreValueFailureCopyWith<T, $Res> {
  _$CoreValueFailureCopyWithImpl(this._value, this._then);

  final CoreValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(CoreValueFailure<T>) _then;
}

/// @nodoc
abstract class $ListTooLongCopyWith<T, $Res> {
  factory $ListTooLongCopyWith(
          ListTooLong<T> value, $Res Function(ListTooLong<T>) then) =
      _$ListTooLongCopyWithImpl<T, $Res>;
  $Res call({T failedValue, int maxLength});
}

/// @nodoc
class _$ListTooLongCopyWithImpl<T, $Res>
    extends _$CoreValueFailureCopyWithImpl<T, $Res>
    implements $ListTooLongCopyWith<T, $Res> {
  _$ListTooLongCopyWithImpl(
      ListTooLong<T> _value, $Res Function(ListTooLong<T>) _then)
      : super(_value, (v) => _then(v as ListTooLong<T>));

  @override
  ListTooLong<T> get _value => super._value as ListTooLong<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
    Object? maxLength = freezed,
  }) {
    return _then(ListTooLong<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
      maxLength: maxLength == freezed
          ? _value.maxLength
          : maxLength // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ListTooLong<T> implements ListTooLong<T> {
  const _$ListTooLong({required this.failedValue, required this.maxLength});

  @override
  final T failedValue;
  @override
  final int maxLength;

  @override
  String toString() {
    return 'CoreValueFailure<$T>.listTooLong(failedValue: $failedValue, maxLength: $maxLength)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ListTooLong<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue) &&
            const DeepCollectionEquality().equals(other.maxLength, maxLength));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(failedValue),
      const DeepCollectionEquality().hash(maxLength));

  @JsonKey(ignore: true)
  @override
  $ListTooLongCopyWith<T, ListTooLong<T>> get copyWith =>
      _$ListTooLongCopyWithImpl<T, ListTooLong<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int maxLength) listTooLong,
    required TResult Function(T failedValue, int minLength) listTooShort,
    required TResult Function(T failedValue, int maxLength) exceedingLength,
    required TResult Function(T failedValue, int minLength) stringTooShort,
    required TResult Function(T failedValue, String missingKeyword)
        stringDoesntContainKeyword,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) multiline,
    required TResult Function(T failedValue) nonNumeric,
    required TResult Function(T failedValue) noNumericValuePresent,
    required TResult Function(T failedValue) nonPositive,
    required TResult Function(T failedValue, num min, num max)
        numberOutsideInterval,
    required TResult Function(T failedValue, int maxHeight, int maxWidth)
        imageTooBig,
    required TResult Function(T failedValue, int minHeight, int minWidth)
        imageTooSmall,
    required TResult Function(T failedValue) incorrectPostalCode,
    required TResult Function(T failedValue) noAddressNumber,
    required TResult Function() noInternetConnection,
  }) {
    return listTooLong(failedValue, maxLength);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue, int maxLength)? listTooLong,
    TResult Function(T failedValue, int minLength)? listTooShort,
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue, int minLength)? stringTooShort,
    TResult Function(T failedValue, String missingKeyword)?
        stringDoesntContainKeyword,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue)? nonNumeric,
    TResult Function(T failedValue)? noNumericValuePresent,
    TResult Function(T failedValue)? nonPositive,
    TResult Function(T failedValue, num min, num max)? numberOutsideInterval,
    TResult Function(T failedValue, int maxHeight, int maxWidth)? imageTooBig,
    TResult Function(T failedValue, int minHeight, int minWidth)? imageTooSmall,
    TResult Function(T failedValue)? incorrectPostalCode,
    TResult Function(T failedValue)? noAddressNumber,
    TResult Function()? noInternetConnection,
  }) {
    return listTooLong?.call(failedValue, maxLength);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int maxLength)? listTooLong,
    TResult Function(T failedValue, int minLength)? listTooShort,
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue, int minLength)? stringTooShort,
    TResult Function(T failedValue, String missingKeyword)?
        stringDoesntContainKeyword,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue)? nonNumeric,
    TResult Function(T failedValue)? noNumericValuePresent,
    TResult Function(T failedValue)? nonPositive,
    TResult Function(T failedValue, num min, num max)? numberOutsideInterval,
    TResult Function(T failedValue, int maxHeight, int maxWidth)? imageTooBig,
    TResult Function(T failedValue, int minHeight, int minWidth)? imageTooSmall,
    TResult Function(T failedValue)? incorrectPostalCode,
    TResult Function(T failedValue)? noAddressNumber,
    TResult Function()? noInternetConnection,
    required TResult orElse(),
  }) {
    if (listTooLong != null) {
      return listTooLong(failedValue, maxLength);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ListTooLong<T> value) listTooLong,
    required TResult Function(ListTooShort<T> value) listTooShort,
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(StringTooShort<T> value) stringTooShort,
    required TResult Function(StringDoesntContainKeyword<T> value)
        stringDoesntContainKeyword,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(NonNumeric<T> value) nonNumeric,
    required TResult Function(NoNumericValuePresent<T> value)
        noNumericValuePresent,
    required TResult Function(NonPositive<T> value) nonPositive,
    required TResult Function(NumberOutsideInterval<T> value)
        numberOutsideInterval,
    required TResult Function(ImageTooBig<T> value) imageTooBig,
    required TResult Function(ImageTooSmall<T> value) imageTooSmall,
    required TResult Function(IncorrectPostalCode<T> value) incorrectPostalCode,
    required TResult Function(NoAddressNumber<T> value) noAddressNumber,
    required TResult Function(NoInternetConnection<T> value)
        noInternetConnection,
  }) {
    return listTooLong(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(ListTooShort<T> value)? listTooShort,
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(StringTooShort<T> value)? stringTooShort,
    TResult Function(StringDoesntContainKeyword<T> value)?
        stringDoesntContainKeyword,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(NonNumeric<T> value)? nonNumeric,
    TResult Function(NoNumericValuePresent<T> value)? noNumericValuePresent,
    TResult Function(NonPositive<T> value)? nonPositive,
    TResult Function(NumberOutsideInterval<T> value)? numberOutsideInterval,
    TResult Function(ImageTooBig<T> value)? imageTooBig,
    TResult Function(ImageTooSmall<T> value)? imageTooSmall,
    TResult Function(IncorrectPostalCode<T> value)? incorrectPostalCode,
    TResult Function(NoAddressNumber<T> value)? noAddressNumber,
    TResult Function(NoInternetConnection<T> value)? noInternetConnection,
  }) {
    return listTooLong?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(ListTooShort<T> value)? listTooShort,
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(StringTooShort<T> value)? stringTooShort,
    TResult Function(StringDoesntContainKeyword<T> value)?
        stringDoesntContainKeyword,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(NonNumeric<T> value)? nonNumeric,
    TResult Function(NoNumericValuePresent<T> value)? noNumericValuePresent,
    TResult Function(NonPositive<T> value)? nonPositive,
    TResult Function(NumberOutsideInterval<T> value)? numberOutsideInterval,
    TResult Function(ImageTooBig<T> value)? imageTooBig,
    TResult Function(ImageTooSmall<T> value)? imageTooSmall,
    TResult Function(IncorrectPostalCode<T> value)? incorrectPostalCode,
    TResult Function(NoAddressNumber<T> value)? noAddressNumber,
    TResult Function(NoInternetConnection<T> value)? noInternetConnection,
    required TResult orElse(),
  }) {
    if (listTooLong != null) {
      return listTooLong(this);
    }
    return orElse();
  }
}

abstract class ListTooLong<T> implements CoreValueFailure<T> {
  const factory ListTooLong({required T failedValue, required int maxLength}) =
      _$ListTooLong<T>;

  T get failedValue;
  int get maxLength;
  @JsonKey(ignore: true)
  $ListTooLongCopyWith<T, ListTooLong<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListTooShortCopyWith<T, $Res> {
  factory $ListTooShortCopyWith(
          ListTooShort<T> value, $Res Function(ListTooShort<T>) then) =
      _$ListTooShortCopyWithImpl<T, $Res>;
  $Res call({T failedValue, int minLength});
}

/// @nodoc
class _$ListTooShortCopyWithImpl<T, $Res>
    extends _$CoreValueFailureCopyWithImpl<T, $Res>
    implements $ListTooShortCopyWith<T, $Res> {
  _$ListTooShortCopyWithImpl(
      ListTooShort<T> _value, $Res Function(ListTooShort<T>) _then)
      : super(_value, (v) => _then(v as ListTooShort<T>));

  @override
  ListTooShort<T> get _value => super._value as ListTooShort<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
    Object? minLength = freezed,
  }) {
    return _then(ListTooShort<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
      minLength: minLength == freezed
          ? _value.minLength
          : minLength // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ListTooShort<T> implements ListTooShort<T> {
  const _$ListTooShort({required this.failedValue, required this.minLength});

  @override
  final T failedValue;
  @override
  final int minLength;

  @override
  String toString() {
    return 'CoreValueFailure<$T>.listTooShort(failedValue: $failedValue, minLength: $minLength)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ListTooShort<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue) &&
            const DeepCollectionEquality().equals(other.minLength, minLength));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(failedValue),
      const DeepCollectionEquality().hash(minLength));

  @JsonKey(ignore: true)
  @override
  $ListTooShortCopyWith<T, ListTooShort<T>> get copyWith =>
      _$ListTooShortCopyWithImpl<T, ListTooShort<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int maxLength) listTooLong,
    required TResult Function(T failedValue, int minLength) listTooShort,
    required TResult Function(T failedValue, int maxLength) exceedingLength,
    required TResult Function(T failedValue, int minLength) stringTooShort,
    required TResult Function(T failedValue, String missingKeyword)
        stringDoesntContainKeyword,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) multiline,
    required TResult Function(T failedValue) nonNumeric,
    required TResult Function(T failedValue) noNumericValuePresent,
    required TResult Function(T failedValue) nonPositive,
    required TResult Function(T failedValue, num min, num max)
        numberOutsideInterval,
    required TResult Function(T failedValue, int maxHeight, int maxWidth)
        imageTooBig,
    required TResult Function(T failedValue, int minHeight, int minWidth)
        imageTooSmall,
    required TResult Function(T failedValue) incorrectPostalCode,
    required TResult Function(T failedValue) noAddressNumber,
    required TResult Function() noInternetConnection,
  }) {
    return listTooShort(failedValue, minLength);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue, int maxLength)? listTooLong,
    TResult Function(T failedValue, int minLength)? listTooShort,
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue, int minLength)? stringTooShort,
    TResult Function(T failedValue, String missingKeyword)?
        stringDoesntContainKeyword,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue)? nonNumeric,
    TResult Function(T failedValue)? noNumericValuePresent,
    TResult Function(T failedValue)? nonPositive,
    TResult Function(T failedValue, num min, num max)? numberOutsideInterval,
    TResult Function(T failedValue, int maxHeight, int maxWidth)? imageTooBig,
    TResult Function(T failedValue, int minHeight, int minWidth)? imageTooSmall,
    TResult Function(T failedValue)? incorrectPostalCode,
    TResult Function(T failedValue)? noAddressNumber,
    TResult Function()? noInternetConnection,
  }) {
    return listTooShort?.call(failedValue, minLength);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int maxLength)? listTooLong,
    TResult Function(T failedValue, int minLength)? listTooShort,
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue, int minLength)? stringTooShort,
    TResult Function(T failedValue, String missingKeyword)?
        stringDoesntContainKeyword,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue)? nonNumeric,
    TResult Function(T failedValue)? noNumericValuePresent,
    TResult Function(T failedValue)? nonPositive,
    TResult Function(T failedValue, num min, num max)? numberOutsideInterval,
    TResult Function(T failedValue, int maxHeight, int maxWidth)? imageTooBig,
    TResult Function(T failedValue, int minHeight, int minWidth)? imageTooSmall,
    TResult Function(T failedValue)? incorrectPostalCode,
    TResult Function(T failedValue)? noAddressNumber,
    TResult Function()? noInternetConnection,
    required TResult orElse(),
  }) {
    if (listTooShort != null) {
      return listTooShort(failedValue, minLength);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ListTooLong<T> value) listTooLong,
    required TResult Function(ListTooShort<T> value) listTooShort,
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(StringTooShort<T> value) stringTooShort,
    required TResult Function(StringDoesntContainKeyword<T> value)
        stringDoesntContainKeyword,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(NonNumeric<T> value) nonNumeric,
    required TResult Function(NoNumericValuePresent<T> value)
        noNumericValuePresent,
    required TResult Function(NonPositive<T> value) nonPositive,
    required TResult Function(NumberOutsideInterval<T> value)
        numberOutsideInterval,
    required TResult Function(ImageTooBig<T> value) imageTooBig,
    required TResult Function(ImageTooSmall<T> value) imageTooSmall,
    required TResult Function(IncorrectPostalCode<T> value) incorrectPostalCode,
    required TResult Function(NoAddressNumber<T> value) noAddressNumber,
    required TResult Function(NoInternetConnection<T> value)
        noInternetConnection,
  }) {
    return listTooShort(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(ListTooShort<T> value)? listTooShort,
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(StringTooShort<T> value)? stringTooShort,
    TResult Function(StringDoesntContainKeyword<T> value)?
        stringDoesntContainKeyword,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(NonNumeric<T> value)? nonNumeric,
    TResult Function(NoNumericValuePresent<T> value)? noNumericValuePresent,
    TResult Function(NonPositive<T> value)? nonPositive,
    TResult Function(NumberOutsideInterval<T> value)? numberOutsideInterval,
    TResult Function(ImageTooBig<T> value)? imageTooBig,
    TResult Function(ImageTooSmall<T> value)? imageTooSmall,
    TResult Function(IncorrectPostalCode<T> value)? incorrectPostalCode,
    TResult Function(NoAddressNumber<T> value)? noAddressNumber,
    TResult Function(NoInternetConnection<T> value)? noInternetConnection,
  }) {
    return listTooShort?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(ListTooShort<T> value)? listTooShort,
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(StringTooShort<T> value)? stringTooShort,
    TResult Function(StringDoesntContainKeyword<T> value)?
        stringDoesntContainKeyword,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(NonNumeric<T> value)? nonNumeric,
    TResult Function(NoNumericValuePresent<T> value)? noNumericValuePresent,
    TResult Function(NonPositive<T> value)? nonPositive,
    TResult Function(NumberOutsideInterval<T> value)? numberOutsideInterval,
    TResult Function(ImageTooBig<T> value)? imageTooBig,
    TResult Function(ImageTooSmall<T> value)? imageTooSmall,
    TResult Function(IncorrectPostalCode<T> value)? incorrectPostalCode,
    TResult Function(NoAddressNumber<T> value)? noAddressNumber,
    TResult Function(NoInternetConnection<T> value)? noInternetConnection,
    required TResult orElse(),
  }) {
    if (listTooShort != null) {
      return listTooShort(this);
    }
    return orElse();
  }
}

abstract class ListTooShort<T> implements CoreValueFailure<T> {
  const factory ListTooShort({required T failedValue, required int minLength}) =
      _$ListTooShort<T>;

  T get failedValue;
  int get minLength;
  @JsonKey(ignore: true)
  $ListTooShortCopyWith<T, ListTooShort<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExceedingLengthCopyWith<T, $Res> {
  factory $ExceedingLengthCopyWith(
          ExceedingLength<T> value, $Res Function(ExceedingLength<T>) then) =
      _$ExceedingLengthCopyWithImpl<T, $Res>;
  $Res call({T failedValue, int maxLength});
}

/// @nodoc
class _$ExceedingLengthCopyWithImpl<T, $Res>
    extends _$CoreValueFailureCopyWithImpl<T, $Res>
    implements $ExceedingLengthCopyWith<T, $Res> {
  _$ExceedingLengthCopyWithImpl(
      ExceedingLength<T> _value, $Res Function(ExceedingLength<T>) _then)
      : super(_value, (v) => _then(v as ExceedingLength<T>));

  @override
  ExceedingLength<T> get _value => super._value as ExceedingLength<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
    Object? maxLength = freezed,
  }) {
    return _then(ExceedingLength<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
      maxLength: maxLength == freezed
          ? _value.maxLength
          : maxLength // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ExceedingLength<T> implements ExceedingLength<T> {
  const _$ExceedingLength({required this.failedValue, required this.maxLength});

  @override
  final T failedValue;
  @override
  final int maxLength;

  @override
  String toString() {
    return 'CoreValueFailure<$T>.exceedingLength(failedValue: $failedValue, maxLength: $maxLength)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ExceedingLength<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue) &&
            const DeepCollectionEquality().equals(other.maxLength, maxLength));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(failedValue),
      const DeepCollectionEquality().hash(maxLength));

  @JsonKey(ignore: true)
  @override
  $ExceedingLengthCopyWith<T, ExceedingLength<T>> get copyWith =>
      _$ExceedingLengthCopyWithImpl<T, ExceedingLength<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int maxLength) listTooLong,
    required TResult Function(T failedValue, int minLength) listTooShort,
    required TResult Function(T failedValue, int maxLength) exceedingLength,
    required TResult Function(T failedValue, int minLength) stringTooShort,
    required TResult Function(T failedValue, String missingKeyword)
        stringDoesntContainKeyword,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) multiline,
    required TResult Function(T failedValue) nonNumeric,
    required TResult Function(T failedValue) noNumericValuePresent,
    required TResult Function(T failedValue) nonPositive,
    required TResult Function(T failedValue, num min, num max)
        numberOutsideInterval,
    required TResult Function(T failedValue, int maxHeight, int maxWidth)
        imageTooBig,
    required TResult Function(T failedValue, int minHeight, int minWidth)
        imageTooSmall,
    required TResult Function(T failedValue) incorrectPostalCode,
    required TResult Function(T failedValue) noAddressNumber,
    required TResult Function() noInternetConnection,
  }) {
    return exceedingLength(failedValue, maxLength);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue, int maxLength)? listTooLong,
    TResult Function(T failedValue, int minLength)? listTooShort,
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue, int minLength)? stringTooShort,
    TResult Function(T failedValue, String missingKeyword)?
        stringDoesntContainKeyword,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue)? nonNumeric,
    TResult Function(T failedValue)? noNumericValuePresent,
    TResult Function(T failedValue)? nonPositive,
    TResult Function(T failedValue, num min, num max)? numberOutsideInterval,
    TResult Function(T failedValue, int maxHeight, int maxWidth)? imageTooBig,
    TResult Function(T failedValue, int minHeight, int minWidth)? imageTooSmall,
    TResult Function(T failedValue)? incorrectPostalCode,
    TResult Function(T failedValue)? noAddressNumber,
    TResult Function()? noInternetConnection,
  }) {
    return exceedingLength?.call(failedValue, maxLength);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int maxLength)? listTooLong,
    TResult Function(T failedValue, int minLength)? listTooShort,
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue, int minLength)? stringTooShort,
    TResult Function(T failedValue, String missingKeyword)?
        stringDoesntContainKeyword,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue)? nonNumeric,
    TResult Function(T failedValue)? noNumericValuePresent,
    TResult Function(T failedValue)? nonPositive,
    TResult Function(T failedValue, num min, num max)? numberOutsideInterval,
    TResult Function(T failedValue, int maxHeight, int maxWidth)? imageTooBig,
    TResult Function(T failedValue, int minHeight, int minWidth)? imageTooSmall,
    TResult Function(T failedValue)? incorrectPostalCode,
    TResult Function(T failedValue)? noAddressNumber,
    TResult Function()? noInternetConnection,
    required TResult orElse(),
  }) {
    if (exceedingLength != null) {
      return exceedingLength(failedValue, maxLength);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ListTooLong<T> value) listTooLong,
    required TResult Function(ListTooShort<T> value) listTooShort,
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(StringTooShort<T> value) stringTooShort,
    required TResult Function(StringDoesntContainKeyword<T> value)
        stringDoesntContainKeyword,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(NonNumeric<T> value) nonNumeric,
    required TResult Function(NoNumericValuePresent<T> value)
        noNumericValuePresent,
    required TResult Function(NonPositive<T> value) nonPositive,
    required TResult Function(NumberOutsideInterval<T> value)
        numberOutsideInterval,
    required TResult Function(ImageTooBig<T> value) imageTooBig,
    required TResult Function(ImageTooSmall<T> value) imageTooSmall,
    required TResult Function(IncorrectPostalCode<T> value) incorrectPostalCode,
    required TResult Function(NoAddressNumber<T> value) noAddressNumber,
    required TResult Function(NoInternetConnection<T> value)
        noInternetConnection,
  }) {
    return exceedingLength(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(ListTooShort<T> value)? listTooShort,
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(StringTooShort<T> value)? stringTooShort,
    TResult Function(StringDoesntContainKeyword<T> value)?
        stringDoesntContainKeyword,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(NonNumeric<T> value)? nonNumeric,
    TResult Function(NoNumericValuePresent<T> value)? noNumericValuePresent,
    TResult Function(NonPositive<T> value)? nonPositive,
    TResult Function(NumberOutsideInterval<T> value)? numberOutsideInterval,
    TResult Function(ImageTooBig<T> value)? imageTooBig,
    TResult Function(ImageTooSmall<T> value)? imageTooSmall,
    TResult Function(IncorrectPostalCode<T> value)? incorrectPostalCode,
    TResult Function(NoAddressNumber<T> value)? noAddressNumber,
    TResult Function(NoInternetConnection<T> value)? noInternetConnection,
  }) {
    return exceedingLength?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(ListTooShort<T> value)? listTooShort,
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(StringTooShort<T> value)? stringTooShort,
    TResult Function(StringDoesntContainKeyword<T> value)?
        stringDoesntContainKeyword,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(NonNumeric<T> value)? nonNumeric,
    TResult Function(NoNumericValuePresent<T> value)? noNumericValuePresent,
    TResult Function(NonPositive<T> value)? nonPositive,
    TResult Function(NumberOutsideInterval<T> value)? numberOutsideInterval,
    TResult Function(ImageTooBig<T> value)? imageTooBig,
    TResult Function(ImageTooSmall<T> value)? imageTooSmall,
    TResult Function(IncorrectPostalCode<T> value)? incorrectPostalCode,
    TResult Function(NoAddressNumber<T> value)? noAddressNumber,
    TResult Function(NoInternetConnection<T> value)? noInternetConnection,
    required TResult orElse(),
  }) {
    if (exceedingLength != null) {
      return exceedingLength(this);
    }
    return orElse();
  }
}

abstract class ExceedingLength<T> implements CoreValueFailure<T> {
  const factory ExceedingLength(
      {required T failedValue, required int maxLength}) = _$ExceedingLength<T>;

  T get failedValue;
  int get maxLength;
  @JsonKey(ignore: true)
  $ExceedingLengthCopyWith<T, ExceedingLength<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StringTooShortCopyWith<T, $Res> {
  factory $StringTooShortCopyWith(
          StringTooShort<T> value, $Res Function(StringTooShort<T>) then) =
      _$StringTooShortCopyWithImpl<T, $Res>;
  $Res call({T failedValue, int minLength});
}

/// @nodoc
class _$StringTooShortCopyWithImpl<T, $Res>
    extends _$CoreValueFailureCopyWithImpl<T, $Res>
    implements $StringTooShortCopyWith<T, $Res> {
  _$StringTooShortCopyWithImpl(
      StringTooShort<T> _value, $Res Function(StringTooShort<T>) _then)
      : super(_value, (v) => _then(v as StringTooShort<T>));

  @override
  StringTooShort<T> get _value => super._value as StringTooShort<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
    Object? minLength = freezed,
  }) {
    return _then(StringTooShort<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
      minLength: minLength == freezed
          ? _value.minLength
          : minLength // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$StringTooShort<T> implements StringTooShort<T> {
  const _$StringTooShort({required this.failedValue, required this.minLength});

  @override
  final T failedValue;
  @override
  final int minLength;

  @override
  String toString() {
    return 'CoreValueFailure<$T>.stringTooShort(failedValue: $failedValue, minLength: $minLength)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StringTooShort<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue) &&
            const DeepCollectionEquality().equals(other.minLength, minLength));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(failedValue),
      const DeepCollectionEquality().hash(minLength));

  @JsonKey(ignore: true)
  @override
  $StringTooShortCopyWith<T, StringTooShort<T>> get copyWith =>
      _$StringTooShortCopyWithImpl<T, StringTooShort<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int maxLength) listTooLong,
    required TResult Function(T failedValue, int minLength) listTooShort,
    required TResult Function(T failedValue, int maxLength) exceedingLength,
    required TResult Function(T failedValue, int minLength) stringTooShort,
    required TResult Function(T failedValue, String missingKeyword)
        stringDoesntContainKeyword,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) multiline,
    required TResult Function(T failedValue) nonNumeric,
    required TResult Function(T failedValue) noNumericValuePresent,
    required TResult Function(T failedValue) nonPositive,
    required TResult Function(T failedValue, num min, num max)
        numberOutsideInterval,
    required TResult Function(T failedValue, int maxHeight, int maxWidth)
        imageTooBig,
    required TResult Function(T failedValue, int minHeight, int minWidth)
        imageTooSmall,
    required TResult Function(T failedValue) incorrectPostalCode,
    required TResult Function(T failedValue) noAddressNumber,
    required TResult Function() noInternetConnection,
  }) {
    return stringTooShort(failedValue, minLength);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue, int maxLength)? listTooLong,
    TResult Function(T failedValue, int minLength)? listTooShort,
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue, int minLength)? stringTooShort,
    TResult Function(T failedValue, String missingKeyword)?
        stringDoesntContainKeyword,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue)? nonNumeric,
    TResult Function(T failedValue)? noNumericValuePresent,
    TResult Function(T failedValue)? nonPositive,
    TResult Function(T failedValue, num min, num max)? numberOutsideInterval,
    TResult Function(T failedValue, int maxHeight, int maxWidth)? imageTooBig,
    TResult Function(T failedValue, int minHeight, int minWidth)? imageTooSmall,
    TResult Function(T failedValue)? incorrectPostalCode,
    TResult Function(T failedValue)? noAddressNumber,
    TResult Function()? noInternetConnection,
  }) {
    return stringTooShort?.call(failedValue, minLength);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int maxLength)? listTooLong,
    TResult Function(T failedValue, int minLength)? listTooShort,
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue, int minLength)? stringTooShort,
    TResult Function(T failedValue, String missingKeyword)?
        stringDoesntContainKeyword,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue)? nonNumeric,
    TResult Function(T failedValue)? noNumericValuePresent,
    TResult Function(T failedValue)? nonPositive,
    TResult Function(T failedValue, num min, num max)? numberOutsideInterval,
    TResult Function(T failedValue, int maxHeight, int maxWidth)? imageTooBig,
    TResult Function(T failedValue, int minHeight, int minWidth)? imageTooSmall,
    TResult Function(T failedValue)? incorrectPostalCode,
    TResult Function(T failedValue)? noAddressNumber,
    TResult Function()? noInternetConnection,
    required TResult orElse(),
  }) {
    if (stringTooShort != null) {
      return stringTooShort(failedValue, minLength);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ListTooLong<T> value) listTooLong,
    required TResult Function(ListTooShort<T> value) listTooShort,
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(StringTooShort<T> value) stringTooShort,
    required TResult Function(StringDoesntContainKeyword<T> value)
        stringDoesntContainKeyword,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(NonNumeric<T> value) nonNumeric,
    required TResult Function(NoNumericValuePresent<T> value)
        noNumericValuePresent,
    required TResult Function(NonPositive<T> value) nonPositive,
    required TResult Function(NumberOutsideInterval<T> value)
        numberOutsideInterval,
    required TResult Function(ImageTooBig<T> value) imageTooBig,
    required TResult Function(ImageTooSmall<T> value) imageTooSmall,
    required TResult Function(IncorrectPostalCode<T> value) incorrectPostalCode,
    required TResult Function(NoAddressNumber<T> value) noAddressNumber,
    required TResult Function(NoInternetConnection<T> value)
        noInternetConnection,
  }) {
    return stringTooShort(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(ListTooShort<T> value)? listTooShort,
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(StringTooShort<T> value)? stringTooShort,
    TResult Function(StringDoesntContainKeyword<T> value)?
        stringDoesntContainKeyword,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(NonNumeric<T> value)? nonNumeric,
    TResult Function(NoNumericValuePresent<T> value)? noNumericValuePresent,
    TResult Function(NonPositive<T> value)? nonPositive,
    TResult Function(NumberOutsideInterval<T> value)? numberOutsideInterval,
    TResult Function(ImageTooBig<T> value)? imageTooBig,
    TResult Function(ImageTooSmall<T> value)? imageTooSmall,
    TResult Function(IncorrectPostalCode<T> value)? incorrectPostalCode,
    TResult Function(NoAddressNumber<T> value)? noAddressNumber,
    TResult Function(NoInternetConnection<T> value)? noInternetConnection,
  }) {
    return stringTooShort?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(ListTooShort<T> value)? listTooShort,
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(StringTooShort<T> value)? stringTooShort,
    TResult Function(StringDoesntContainKeyword<T> value)?
        stringDoesntContainKeyword,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(NonNumeric<T> value)? nonNumeric,
    TResult Function(NoNumericValuePresent<T> value)? noNumericValuePresent,
    TResult Function(NonPositive<T> value)? nonPositive,
    TResult Function(NumberOutsideInterval<T> value)? numberOutsideInterval,
    TResult Function(ImageTooBig<T> value)? imageTooBig,
    TResult Function(ImageTooSmall<T> value)? imageTooSmall,
    TResult Function(IncorrectPostalCode<T> value)? incorrectPostalCode,
    TResult Function(NoAddressNumber<T> value)? noAddressNumber,
    TResult Function(NoInternetConnection<T> value)? noInternetConnection,
    required TResult orElse(),
  }) {
    if (stringTooShort != null) {
      return stringTooShort(this);
    }
    return orElse();
  }
}

abstract class StringTooShort<T> implements CoreValueFailure<T> {
  const factory StringTooShort(
      {required T failedValue, required int minLength}) = _$StringTooShort<T>;

  T get failedValue;
  int get minLength;
  @JsonKey(ignore: true)
  $StringTooShortCopyWith<T, StringTooShort<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StringDoesntContainKeywordCopyWith<T, $Res> {
  factory $StringDoesntContainKeywordCopyWith(
          StringDoesntContainKeyword<T> value,
          $Res Function(StringDoesntContainKeyword<T>) then) =
      _$StringDoesntContainKeywordCopyWithImpl<T, $Res>;
  $Res call({T failedValue, String missingKeyword});
}

/// @nodoc
class _$StringDoesntContainKeywordCopyWithImpl<T, $Res>
    extends _$CoreValueFailureCopyWithImpl<T, $Res>
    implements $StringDoesntContainKeywordCopyWith<T, $Res> {
  _$StringDoesntContainKeywordCopyWithImpl(StringDoesntContainKeyword<T> _value,
      $Res Function(StringDoesntContainKeyword<T>) _then)
      : super(_value, (v) => _then(v as StringDoesntContainKeyword<T>));

  @override
  StringDoesntContainKeyword<T> get _value =>
      super._value as StringDoesntContainKeyword<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
    Object? missingKeyword = freezed,
  }) {
    return _then(StringDoesntContainKeyword<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
      missingKeyword: missingKeyword == freezed
          ? _value.missingKeyword
          : missingKeyword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StringDoesntContainKeyword<T> implements StringDoesntContainKeyword<T> {
  const _$StringDoesntContainKeyword(
      {required this.failedValue, required this.missingKeyword});

  @override
  final T failedValue;
  @override
  final String missingKeyword;

  @override
  String toString() {
    return 'CoreValueFailure<$T>.stringDoesntContainKeyword(failedValue: $failedValue, missingKeyword: $missingKeyword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StringDoesntContainKeyword<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue) &&
            const DeepCollectionEquality()
                .equals(other.missingKeyword, missingKeyword));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(failedValue),
      const DeepCollectionEquality().hash(missingKeyword));

  @JsonKey(ignore: true)
  @override
  $StringDoesntContainKeywordCopyWith<T, StringDoesntContainKeyword<T>>
      get copyWith => _$StringDoesntContainKeywordCopyWithImpl<T,
          StringDoesntContainKeyword<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int maxLength) listTooLong,
    required TResult Function(T failedValue, int minLength) listTooShort,
    required TResult Function(T failedValue, int maxLength) exceedingLength,
    required TResult Function(T failedValue, int minLength) stringTooShort,
    required TResult Function(T failedValue, String missingKeyword)
        stringDoesntContainKeyword,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) multiline,
    required TResult Function(T failedValue) nonNumeric,
    required TResult Function(T failedValue) noNumericValuePresent,
    required TResult Function(T failedValue) nonPositive,
    required TResult Function(T failedValue, num min, num max)
        numberOutsideInterval,
    required TResult Function(T failedValue, int maxHeight, int maxWidth)
        imageTooBig,
    required TResult Function(T failedValue, int minHeight, int minWidth)
        imageTooSmall,
    required TResult Function(T failedValue) incorrectPostalCode,
    required TResult Function(T failedValue) noAddressNumber,
    required TResult Function() noInternetConnection,
  }) {
    return stringDoesntContainKeyword(failedValue, missingKeyword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue, int maxLength)? listTooLong,
    TResult Function(T failedValue, int minLength)? listTooShort,
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue, int minLength)? stringTooShort,
    TResult Function(T failedValue, String missingKeyword)?
        stringDoesntContainKeyword,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue)? nonNumeric,
    TResult Function(T failedValue)? noNumericValuePresent,
    TResult Function(T failedValue)? nonPositive,
    TResult Function(T failedValue, num min, num max)? numberOutsideInterval,
    TResult Function(T failedValue, int maxHeight, int maxWidth)? imageTooBig,
    TResult Function(T failedValue, int minHeight, int minWidth)? imageTooSmall,
    TResult Function(T failedValue)? incorrectPostalCode,
    TResult Function(T failedValue)? noAddressNumber,
    TResult Function()? noInternetConnection,
  }) {
    return stringDoesntContainKeyword?.call(failedValue, missingKeyword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int maxLength)? listTooLong,
    TResult Function(T failedValue, int minLength)? listTooShort,
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue, int minLength)? stringTooShort,
    TResult Function(T failedValue, String missingKeyword)?
        stringDoesntContainKeyword,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue)? nonNumeric,
    TResult Function(T failedValue)? noNumericValuePresent,
    TResult Function(T failedValue)? nonPositive,
    TResult Function(T failedValue, num min, num max)? numberOutsideInterval,
    TResult Function(T failedValue, int maxHeight, int maxWidth)? imageTooBig,
    TResult Function(T failedValue, int minHeight, int minWidth)? imageTooSmall,
    TResult Function(T failedValue)? incorrectPostalCode,
    TResult Function(T failedValue)? noAddressNumber,
    TResult Function()? noInternetConnection,
    required TResult orElse(),
  }) {
    if (stringDoesntContainKeyword != null) {
      return stringDoesntContainKeyword(failedValue, missingKeyword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ListTooLong<T> value) listTooLong,
    required TResult Function(ListTooShort<T> value) listTooShort,
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(StringTooShort<T> value) stringTooShort,
    required TResult Function(StringDoesntContainKeyword<T> value)
        stringDoesntContainKeyword,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(NonNumeric<T> value) nonNumeric,
    required TResult Function(NoNumericValuePresent<T> value)
        noNumericValuePresent,
    required TResult Function(NonPositive<T> value) nonPositive,
    required TResult Function(NumberOutsideInterval<T> value)
        numberOutsideInterval,
    required TResult Function(ImageTooBig<T> value) imageTooBig,
    required TResult Function(ImageTooSmall<T> value) imageTooSmall,
    required TResult Function(IncorrectPostalCode<T> value) incorrectPostalCode,
    required TResult Function(NoAddressNumber<T> value) noAddressNumber,
    required TResult Function(NoInternetConnection<T> value)
        noInternetConnection,
  }) {
    return stringDoesntContainKeyword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(ListTooShort<T> value)? listTooShort,
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(StringTooShort<T> value)? stringTooShort,
    TResult Function(StringDoesntContainKeyword<T> value)?
        stringDoesntContainKeyword,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(NonNumeric<T> value)? nonNumeric,
    TResult Function(NoNumericValuePresent<T> value)? noNumericValuePresent,
    TResult Function(NonPositive<T> value)? nonPositive,
    TResult Function(NumberOutsideInterval<T> value)? numberOutsideInterval,
    TResult Function(ImageTooBig<T> value)? imageTooBig,
    TResult Function(ImageTooSmall<T> value)? imageTooSmall,
    TResult Function(IncorrectPostalCode<T> value)? incorrectPostalCode,
    TResult Function(NoAddressNumber<T> value)? noAddressNumber,
    TResult Function(NoInternetConnection<T> value)? noInternetConnection,
  }) {
    return stringDoesntContainKeyword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(ListTooShort<T> value)? listTooShort,
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(StringTooShort<T> value)? stringTooShort,
    TResult Function(StringDoesntContainKeyword<T> value)?
        stringDoesntContainKeyword,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(NonNumeric<T> value)? nonNumeric,
    TResult Function(NoNumericValuePresent<T> value)? noNumericValuePresent,
    TResult Function(NonPositive<T> value)? nonPositive,
    TResult Function(NumberOutsideInterval<T> value)? numberOutsideInterval,
    TResult Function(ImageTooBig<T> value)? imageTooBig,
    TResult Function(ImageTooSmall<T> value)? imageTooSmall,
    TResult Function(IncorrectPostalCode<T> value)? incorrectPostalCode,
    TResult Function(NoAddressNumber<T> value)? noAddressNumber,
    TResult Function(NoInternetConnection<T> value)? noInternetConnection,
    required TResult orElse(),
  }) {
    if (stringDoesntContainKeyword != null) {
      return stringDoesntContainKeyword(this);
    }
    return orElse();
  }
}

abstract class StringDoesntContainKeyword<T> implements CoreValueFailure<T> {
  const factory StringDoesntContainKeyword(
      {required T failedValue,
      required String missingKeyword}) = _$StringDoesntContainKeyword<T>;

  T get failedValue;
  String get missingKeyword;
  @JsonKey(ignore: true)
  $StringDoesntContainKeywordCopyWith<T, StringDoesntContainKeyword<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmptyCopyWith<T, $Res> {
  factory $EmptyCopyWith(Empty<T> value, $Res Function(Empty<T>) then) =
      _$EmptyCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class _$EmptyCopyWithImpl<T, $Res>
    extends _$CoreValueFailureCopyWithImpl<T, $Res>
    implements $EmptyCopyWith<T, $Res> {
  _$EmptyCopyWithImpl(Empty<T> _value, $Res Function(Empty<T>) _then)
      : super(_value, (v) => _then(v as Empty<T>));

  @override
  Empty<T> get _value => super._value as Empty<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(Empty<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$Empty<T> implements Empty<T> {
  const _$Empty({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'CoreValueFailure<$T>.empty(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Empty<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  $EmptyCopyWith<T, Empty<T>> get copyWith =>
      _$EmptyCopyWithImpl<T, Empty<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int maxLength) listTooLong,
    required TResult Function(T failedValue, int minLength) listTooShort,
    required TResult Function(T failedValue, int maxLength) exceedingLength,
    required TResult Function(T failedValue, int minLength) stringTooShort,
    required TResult Function(T failedValue, String missingKeyword)
        stringDoesntContainKeyword,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) multiline,
    required TResult Function(T failedValue) nonNumeric,
    required TResult Function(T failedValue) noNumericValuePresent,
    required TResult Function(T failedValue) nonPositive,
    required TResult Function(T failedValue, num min, num max)
        numberOutsideInterval,
    required TResult Function(T failedValue, int maxHeight, int maxWidth)
        imageTooBig,
    required TResult Function(T failedValue, int minHeight, int minWidth)
        imageTooSmall,
    required TResult Function(T failedValue) incorrectPostalCode,
    required TResult Function(T failedValue) noAddressNumber,
    required TResult Function() noInternetConnection,
  }) {
    return empty(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue, int maxLength)? listTooLong,
    TResult Function(T failedValue, int minLength)? listTooShort,
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue, int minLength)? stringTooShort,
    TResult Function(T failedValue, String missingKeyword)?
        stringDoesntContainKeyword,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue)? nonNumeric,
    TResult Function(T failedValue)? noNumericValuePresent,
    TResult Function(T failedValue)? nonPositive,
    TResult Function(T failedValue, num min, num max)? numberOutsideInterval,
    TResult Function(T failedValue, int maxHeight, int maxWidth)? imageTooBig,
    TResult Function(T failedValue, int minHeight, int minWidth)? imageTooSmall,
    TResult Function(T failedValue)? incorrectPostalCode,
    TResult Function(T failedValue)? noAddressNumber,
    TResult Function()? noInternetConnection,
  }) {
    return empty?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int maxLength)? listTooLong,
    TResult Function(T failedValue, int minLength)? listTooShort,
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue, int minLength)? stringTooShort,
    TResult Function(T failedValue, String missingKeyword)?
        stringDoesntContainKeyword,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue)? nonNumeric,
    TResult Function(T failedValue)? noNumericValuePresent,
    TResult Function(T failedValue)? nonPositive,
    TResult Function(T failedValue, num min, num max)? numberOutsideInterval,
    TResult Function(T failedValue, int maxHeight, int maxWidth)? imageTooBig,
    TResult Function(T failedValue, int minHeight, int minWidth)? imageTooSmall,
    TResult Function(T failedValue)? incorrectPostalCode,
    TResult Function(T failedValue)? noAddressNumber,
    TResult Function()? noInternetConnection,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ListTooLong<T> value) listTooLong,
    required TResult Function(ListTooShort<T> value) listTooShort,
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(StringTooShort<T> value) stringTooShort,
    required TResult Function(StringDoesntContainKeyword<T> value)
        stringDoesntContainKeyword,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(NonNumeric<T> value) nonNumeric,
    required TResult Function(NoNumericValuePresent<T> value)
        noNumericValuePresent,
    required TResult Function(NonPositive<T> value) nonPositive,
    required TResult Function(NumberOutsideInterval<T> value)
        numberOutsideInterval,
    required TResult Function(ImageTooBig<T> value) imageTooBig,
    required TResult Function(ImageTooSmall<T> value) imageTooSmall,
    required TResult Function(IncorrectPostalCode<T> value) incorrectPostalCode,
    required TResult Function(NoAddressNumber<T> value) noAddressNumber,
    required TResult Function(NoInternetConnection<T> value)
        noInternetConnection,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(ListTooShort<T> value)? listTooShort,
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(StringTooShort<T> value)? stringTooShort,
    TResult Function(StringDoesntContainKeyword<T> value)?
        stringDoesntContainKeyword,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(NonNumeric<T> value)? nonNumeric,
    TResult Function(NoNumericValuePresent<T> value)? noNumericValuePresent,
    TResult Function(NonPositive<T> value)? nonPositive,
    TResult Function(NumberOutsideInterval<T> value)? numberOutsideInterval,
    TResult Function(ImageTooBig<T> value)? imageTooBig,
    TResult Function(ImageTooSmall<T> value)? imageTooSmall,
    TResult Function(IncorrectPostalCode<T> value)? incorrectPostalCode,
    TResult Function(NoAddressNumber<T> value)? noAddressNumber,
    TResult Function(NoInternetConnection<T> value)? noInternetConnection,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(ListTooShort<T> value)? listTooShort,
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(StringTooShort<T> value)? stringTooShort,
    TResult Function(StringDoesntContainKeyword<T> value)?
        stringDoesntContainKeyword,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(NonNumeric<T> value)? nonNumeric,
    TResult Function(NoNumericValuePresent<T> value)? noNumericValuePresent,
    TResult Function(NonPositive<T> value)? nonPositive,
    TResult Function(NumberOutsideInterval<T> value)? numberOutsideInterval,
    TResult Function(ImageTooBig<T> value)? imageTooBig,
    TResult Function(ImageTooSmall<T> value)? imageTooSmall,
    TResult Function(IncorrectPostalCode<T> value)? incorrectPostalCode,
    TResult Function(NoAddressNumber<T> value)? noAddressNumber,
    TResult Function(NoInternetConnection<T> value)? noInternetConnection,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class Empty<T> implements CoreValueFailure<T> {
  const factory Empty({required T failedValue}) = _$Empty<T>;

  T get failedValue;
  @JsonKey(ignore: true)
  $EmptyCopyWith<T, Empty<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MultilineCopyWith<T, $Res> {
  factory $MultilineCopyWith(
          Multiline<T> value, $Res Function(Multiline<T>) then) =
      _$MultilineCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class _$MultilineCopyWithImpl<T, $Res>
    extends _$CoreValueFailureCopyWithImpl<T, $Res>
    implements $MultilineCopyWith<T, $Res> {
  _$MultilineCopyWithImpl(
      Multiline<T> _value, $Res Function(Multiline<T>) _then)
      : super(_value, (v) => _then(v as Multiline<T>));

  @override
  Multiline<T> get _value => super._value as Multiline<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(Multiline<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$Multiline<T> implements Multiline<T> {
  const _$Multiline({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'CoreValueFailure<$T>.multiline(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Multiline<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  $MultilineCopyWith<T, Multiline<T>> get copyWith =>
      _$MultilineCopyWithImpl<T, Multiline<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int maxLength) listTooLong,
    required TResult Function(T failedValue, int minLength) listTooShort,
    required TResult Function(T failedValue, int maxLength) exceedingLength,
    required TResult Function(T failedValue, int minLength) stringTooShort,
    required TResult Function(T failedValue, String missingKeyword)
        stringDoesntContainKeyword,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) multiline,
    required TResult Function(T failedValue) nonNumeric,
    required TResult Function(T failedValue) noNumericValuePresent,
    required TResult Function(T failedValue) nonPositive,
    required TResult Function(T failedValue, num min, num max)
        numberOutsideInterval,
    required TResult Function(T failedValue, int maxHeight, int maxWidth)
        imageTooBig,
    required TResult Function(T failedValue, int minHeight, int minWidth)
        imageTooSmall,
    required TResult Function(T failedValue) incorrectPostalCode,
    required TResult Function(T failedValue) noAddressNumber,
    required TResult Function() noInternetConnection,
  }) {
    return multiline(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue, int maxLength)? listTooLong,
    TResult Function(T failedValue, int minLength)? listTooShort,
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue, int minLength)? stringTooShort,
    TResult Function(T failedValue, String missingKeyword)?
        stringDoesntContainKeyword,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue)? nonNumeric,
    TResult Function(T failedValue)? noNumericValuePresent,
    TResult Function(T failedValue)? nonPositive,
    TResult Function(T failedValue, num min, num max)? numberOutsideInterval,
    TResult Function(T failedValue, int maxHeight, int maxWidth)? imageTooBig,
    TResult Function(T failedValue, int minHeight, int minWidth)? imageTooSmall,
    TResult Function(T failedValue)? incorrectPostalCode,
    TResult Function(T failedValue)? noAddressNumber,
    TResult Function()? noInternetConnection,
  }) {
    return multiline?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int maxLength)? listTooLong,
    TResult Function(T failedValue, int minLength)? listTooShort,
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue, int minLength)? stringTooShort,
    TResult Function(T failedValue, String missingKeyword)?
        stringDoesntContainKeyword,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue)? nonNumeric,
    TResult Function(T failedValue)? noNumericValuePresent,
    TResult Function(T failedValue)? nonPositive,
    TResult Function(T failedValue, num min, num max)? numberOutsideInterval,
    TResult Function(T failedValue, int maxHeight, int maxWidth)? imageTooBig,
    TResult Function(T failedValue, int minHeight, int minWidth)? imageTooSmall,
    TResult Function(T failedValue)? incorrectPostalCode,
    TResult Function(T failedValue)? noAddressNumber,
    TResult Function()? noInternetConnection,
    required TResult orElse(),
  }) {
    if (multiline != null) {
      return multiline(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ListTooLong<T> value) listTooLong,
    required TResult Function(ListTooShort<T> value) listTooShort,
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(StringTooShort<T> value) stringTooShort,
    required TResult Function(StringDoesntContainKeyword<T> value)
        stringDoesntContainKeyword,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(NonNumeric<T> value) nonNumeric,
    required TResult Function(NoNumericValuePresent<T> value)
        noNumericValuePresent,
    required TResult Function(NonPositive<T> value) nonPositive,
    required TResult Function(NumberOutsideInterval<T> value)
        numberOutsideInterval,
    required TResult Function(ImageTooBig<T> value) imageTooBig,
    required TResult Function(ImageTooSmall<T> value) imageTooSmall,
    required TResult Function(IncorrectPostalCode<T> value) incorrectPostalCode,
    required TResult Function(NoAddressNumber<T> value) noAddressNumber,
    required TResult Function(NoInternetConnection<T> value)
        noInternetConnection,
  }) {
    return multiline(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(ListTooShort<T> value)? listTooShort,
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(StringTooShort<T> value)? stringTooShort,
    TResult Function(StringDoesntContainKeyword<T> value)?
        stringDoesntContainKeyword,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(NonNumeric<T> value)? nonNumeric,
    TResult Function(NoNumericValuePresent<T> value)? noNumericValuePresent,
    TResult Function(NonPositive<T> value)? nonPositive,
    TResult Function(NumberOutsideInterval<T> value)? numberOutsideInterval,
    TResult Function(ImageTooBig<T> value)? imageTooBig,
    TResult Function(ImageTooSmall<T> value)? imageTooSmall,
    TResult Function(IncorrectPostalCode<T> value)? incorrectPostalCode,
    TResult Function(NoAddressNumber<T> value)? noAddressNumber,
    TResult Function(NoInternetConnection<T> value)? noInternetConnection,
  }) {
    return multiline?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(ListTooShort<T> value)? listTooShort,
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(StringTooShort<T> value)? stringTooShort,
    TResult Function(StringDoesntContainKeyword<T> value)?
        stringDoesntContainKeyword,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(NonNumeric<T> value)? nonNumeric,
    TResult Function(NoNumericValuePresent<T> value)? noNumericValuePresent,
    TResult Function(NonPositive<T> value)? nonPositive,
    TResult Function(NumberOutsideInterval<T> value)? numberOutsideInterval,
    TResult Function(ImageTooBig<T> value)? imageTooBig,
    TResult Function(ImageTooSmall<T> value)? imageTooSmall,
    TResult Function(IncorrectPostalCode<T> value)? incorrectPostalCode,
    TResult Function(NoAddressNumber<T> value)? noAddressNumber,
    TResult Function(NoInternetConnection<T> value)? noInternetConnection,
    required TResult orElse(),
  }) {
    if (multiline != null) {
      return multiline(this);
    }
    return orElse();
  }
}

abstract class Multiline<T> implements CoreValueFailure<T> {
  const factory Multiline({required T failedValue}) = _$Multiline<T>;

  T get failedValue;
  @JsonKey(ignore: true)
  $MultilineCopyWith<T, Multiline<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NonNumericCopyWith<T, $Res> {
  factory $NonNumericCopyWith(
          NonNumeric<T> value, $Res Function(NonNumeric<T>) then) =
      _$NonNumericCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class _$NonNumericCopyWithImpl<T, $Res>
    extends _$CoreValueFailureCopyWithImpl<T, $Res>
    implements $NonNumericCopyWith<T, $Res> {
  _$NonNumericCopyWithImpl(
      NonNumeric<T> _value, $Res Function(NonNumeric<T>) _then)
      : super(_value, (v) => _then(v as NonNumeric<T>));

  @override
  NonNumeric<T> get _value => super._value as NonNumeric<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(NonNumeric<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$NonNumeric<T> implements NonNumeric<T> {
  const _$NonNumeric({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'CoreValueFailure<$T>.nonNumeric(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NonNumeric<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  $NonNumericCopyWith<T, NonNumeric<T>> get copyWith =>
      _$NonNumericCopyWithImpl<T, NonNumeric<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int maxLength) listTooLong,
    required TResult Function(T failedValue, int minLength) listTooShort,
    required TResult Function(T failedValue, int maxLength) exceedingLength,
    required TResult Function(T failedValue, int minLength) stringTooShort,
    required TResult Function(T failedValue, String missingKeyword)
        stringDoesntContainKeyword,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) multiline,
    required TResult Function(T failedValue) nonNumeric,
    required TResult Function(T failedValue) noNumericValuePresent,
    required TResult Function(T failedValue) nonPositive,
    required TResult Function(T failedValue, num min, num max)
        numberOutsideInterval,
    required TResult Function(T failedValue, int maxHeight, int maxWidth)
        imageTooBig,
    required TResult Function(T failedValue, int minHeight, int minWidth)
        imageTooSmall,
    required TResult Function(T failedValue) incorrectPostalCode,
    required TResult Function(T failedValue) noAddressNumber,
    required TResult Function() noInternetConnection,
  }) {
    return nonNumeric(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue, int maxLength)? listTooLong,
    TResult Function(T failedValue, int minLength)? listTooShort,
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue, int minLength)? stringTooShort,
    TResult Function(T failedValue, String missingKeyword)?
        stringDoesntContainKeyword,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue)? nonNumeric,
    TResult Function(T failedValue)? noNumericValuePresent,
    TResult Function(T failedValue)? nonPositive,
    TResult Function(T failedValue, num min, num max)? numberOutsideInterval,
    TResult Function(T failedValue, int maxHeight, int maxWidth)? imageTooBig,
    TResult Function(T failedValue, int minHeight, int minWidth)? imageTooSmall,
    TResult Function(T failedValue)? incorrectPostalCode,
    TResult Function(T failedValue)? noAddressNumber,
    TResult Function()? noInternetConnection,
  }) {
    return nonNumeric?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int maxLength)? listTooLong,
    TResult Function(T failedValue, int minLength)? listTooShort,
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue, int minLength)? stringTooShort,
    TResult Function(T failedValue, String missingKeyword)?
        stringDoesntContainKeyword,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue)? nonNumeric,
    TResult Function(T failedValue)? noNumericValuePresent,
    TResult Function(T failedValue)? nonPositive,
    TResult Function(T failedValue, num min, num max)? numberOutsideInterval,
    TResult Function(T failedValue, int maxHeight, int maxWidth)? imageTooBig,
    TResult Function(T failedValue, int minHeight, int minWidth)? imageTooSmall,
    TResult Function(T failedValue)? incorrectPostalCode,
    TResult Function(T failedValue)? noAddressNumber,
    TResult Function()? noInternetConnection,
    required TResult orElse(),
  }) {
    if (nonNumeric != null) {
      return nonNumeric(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ListTooLong<T> value) listTooLong,
    required TResult Function(ListTooShort<T> value) listTooShort,
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(StringTooShort<T> value) stringTooShort,
    required TResult Function(StringDoesntContainKeyword<T> value)
        stringDoesntContainKeyword,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(NonNumeric<T> value) nonNumeric,
    required TResult Function(NoNumericValuePresent<T> value)
        noNumericValuePresent,
    required TResult Function(NonPositive<T> value) nonPositive,
    required TResult Function(NumberOutsideInterval<T> value)
        numberOutsideInterval,
    required TResult Function(ImageTooBig<T> value) imageTooBig,
    required TResult Function(ImageTooSmall<T> value) imageTooSmall,
    required TResult Function(IncorrectPostalCode<T> value) incorrectPostalCode,
    required TResult Function(NoAddressNumber<T> value) noAddressNumber,
    required TResult Function(NoInternetConnection<T> value)
        noInternetConnection,
  }) {
    return nonNumeric(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(ListTooShort<T> value)? listTooShort,
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(StringTooShort<T> value)? stringTooShort,
    TResult Function(StringDoesntContainKeyword<T> value)?
        stringDoesntContainKeyword,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(NonNumeric<T> value)? nonNumeric,
    TResult Function(NoNumericValuePresent<T> value)? noNumericValuePresent,
    TResult Function(NonPositive<T> value)? nonPositive,
    TResult Function(NumberOutsideInterval<T> value)? numberOutsideInterval,
    TResult Function(ImageTooBig<T> value)? imageTooBig,
    TResult Function(ImageTooSmall<T> value)? imageTooSmall,
    TResult Function(IncorrectPostalCode<T> value)? incorrectPostalCode,
    TResult Function(NoAddressNumber<T> value)? noAddressNumber,
    TResult Function(NoInternetConnection<T> value)? noInternetConnection,
  }) {
    return nonNumeric?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(ListTooShort<T> value)? listTooShort,
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(StringTooShort<T> value)? stringTooShort,
    TResult Function(StringDoesntContainKeyword<T> value)?
        stringDoesntContainKeyword,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(NonNumeric<T> value)? nonNumeric,
    TResult Function(NoNumericValuePresent<T> value)? noNumericValuePresent,
    TResult Function(NonPositive<T> value)? nonPositive,
    TResult Function(NumberOutsideInterval<T> value)? numberOutsideInterval,
    TResult Function(ImageTooBig<T> value)? imageTooBig,
    TResult Function(ImageTooSmall<T> value)? imageTooSmall,
    TResult Function(IncorrectPostalCode<T> value)? incorrectPostalCode,
    TResult Function(NoAddressNumber<T> value)? noAddressNumber,
    TResult Function(NoInternetConnection<T> value)? noInternetConnection,
    required TResult orElse(),
  }) {
    if (nonNumeric != null) {
      return nonNumeric(this);
    }
    return orElse();
  }
}

abstract class NonNumeric<T> implements CoreValueFailure<T> {
  const factory NonNumeric({required T failedValue}) = _$NonNumeric<T>;

  T get failedValue;
  @JsonKey(ignore: true)
  $NonNumericCopyWith<T, NonNumeric<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoNumericValuePresentCopyWith<T, $Res> {
  factory $NoNumericValuePresentCopyWith(NoNumericValuePresent<T> value,
          $Res Function(NoNumericValuePresent<T>) then) =
      _$NoNumericValuePresentCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class _$NoNumericValuePresentCopyWithImpl<T, $Res>
    extends _$CoreValueFailureCopyWithImpl<T, $Res>
    implements $NoNumericValuePresentCopyWith<T, $Res> {
  _$NoNumericValuePresentCopyWithImpl(NoNumericValuePresent<T> _value,
      $Res Function(NoNumericValuePresent<T>) _then)
      : super(_value, (v) => _then(v as NoNumericValuePresent<T>));

  @override
  NoNumericValuePresent<T> get _value =>
      super._value as NoNumericValuePresent<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(NoNumericValuePresent<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$NoNumericValuePresent<T> implements NoNumericValuePresent<T> {
  const _$NoNumericValuePresent({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'CoreValueFailure<$T>.noNumericValuePresent(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NoNumericValuePresent<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  $NoNumericValuePresentCopyWith<T, NoNumericValuePresent<T>> get copyWith =>
      _$NoNumericValuePresentCopyWithImpl<T, NoNumericValuePresent<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int maxLength) listTooLong,
    required TResult Function(T failedValue, int minLength) listTooShort,
    required TResult Function(T failedValue, int maxLength) exceedingLength,
    required TResult Function(T failedValue, int minLength) stringTooShort,
    required TResult Function(T failedValue, String missingKeyword)
        stringDoesntContainKeyword,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) multiline,
    required TResult Function(T failedValue) nonNumeric,
    required TResult Function(T failedValue) noNumericValuePresent,
    required TResult Function(T failedValue) nonPositive,
    required TResult Function(T failedValue, num min, num max)
        numberOutsideInterval,
    required TResult Function(T failedValue, int maxHeight, int maxWidth)
        imageTooBig,
    required TResult Function(T failedValue, int minHeight, int minWidth)
        imageTooSmall,
    required TResult Function(T failedValue) incorrectPostalCode,
    required TResult Function(T failedValue) noAddressNumber,
    required TResult Function() noInternetConnection,
  }) {
    return noNumericValuePresent(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue, int maxLength)? listTooLong,
    TResult Function(T failedValue, int minLength)? listTooShort,
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue, int minLength)? stringTooShort,
    TResult Function(T failedValue, String missingKeyword)?
        stringDoesntContainKeyword,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue)? nonNumeric,
    TResult Function(T failedValue)? noNumericValuePresent,
    TResult Function(T failedValue)? nonPositive,
    TResult Function(T failedValue, num min, num max)? numberOutsideInterval,
    TResult Function(T failedValue, int maxHeight, int maxWidth)? imageTooBig,
    TResult Function(T failedValue, int minHeight, int minWidth)? imageTooSmall,
    TResult Function(T failedValue)? incorrectPostalCode,
    TResult Function(T failedValue)? noAddressNumber,
    TResult Function()? noInternetConnection,
  }) {
    return noNumericValuePresent?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int maxLength)? listTooLong,
    TResult Function(T failedValue, int minLength)? listTooShort,
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue, int minLength)? stringTooShort,
    TResult Function(T failedValue, String missingKeyword)?
        stringDoesntContainKeyword,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue)? nonNumeric,
    TResult Function(T failedValue)? noNumericValuePresent,
    TResult Function(T failedValue)? nonPositive,
    TResult Function(T failedValue, num min, num max)? numberOutsideInterval,
    TResult Function(T failedValue, int maxHeight, int maxWidth)? imageTooBig,
    TResult Function(T failedValue, int minHeight, int minWidth)? imageTooSmall,
    TResult Function(T failedValue)? incorrectPostalCode,
    TResult Function(T failedValue)? noAddressNumber,
    TResult Function()? noInternetConnection,
    required TResult orElse(),
  }) {
    if (noNumericValuePresent != null) {
      return noNumericValuePresent(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ListTooLong<T> value) listTooLong,
    required TResult Function(ListTooShort<T> value) listTooShort,
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(StringTooShort<T> value) stringTooShort,
    required TResult Function(StringDoesntContainKeyword<T> value)
        stringDoesntContainKeyword,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(NonNumeric<T> value) nonNumeric,
    required TResult Function(NoNumericValuePresent<T> value)
        noNumericValuePresent,
    required TResult Function(NonPositive<T> value) nonPositive,
    required TResult Function(NumberOutsideInterval<T> value)
        numberOutsideInterval,
    required TResult Function(ImageTooBig<T> value) imageTooBig,
    required TResult Function(ImageTooSmall<T> value) imageTooSmall,
    required TResult Function(IncorrectPostalCode<T> value) incorrectPostalCode,
    required TResult Function(NoAddressNumber<T> value) noAddressNumber,
    required TResult Function(NoInternetConnection<T> value)
        noInternetConnection,
  }) {
    return noNumericValuePresent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(ListTooShort<T> value)? listTooShort,
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(StringTooShort<T> value)? stringTooShort,
    TResult Function(StringDoesntContainKeyword<T> value)?
        stringDoesntContainKeyword,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(NonNumeric<T> value)? nonNumeric,
    TResult Function(NoNumericValuePresent<T> value)? noNumericValuePresent,
    TResult Function(NonPositive<T> value)? nonPositive,
    TResult Function(NumberOutsideInterval<T> value)? numberOutsideInterval,
    TResult Function(ImageTooBig<T> value)? imageTooBig,
    TResult Function(ImageTooSmall<T> value)? imageTooSmall,
    TResult Function(IncorrectPostalCode<T> value)? incorrectPostalCode,
    TResult Function(NoAddressNumber<T> value)? noAddressNumber,
    TResult Function(NoInternetConnection<T> value)? noInternetConnection,
  }) {
    return noNumericValuePresent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(ListTooShort<T> value)? listTooShort,
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(StringTooShort<T> value)? stringTooShort,
    TResult Function(StringDoesntContainKeyword<T> value)?
        stringDoesntContainKeyword,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(NonNumeric<T> value)? nonNumeric,
    TResult Function(NoNumericValuePresent<T> value)? noNumericValuePresent,
    TResult Function(NonPositive<T> value)? nonPositive,
    TResult Function(NumberOutsideInterval<T> value)? numberOutsideInterval,
    TResult Function(ImageTooBig<T> value)? imageTooBig,
    TResult Function(ImageTooSmall<T> value)? imageTooSmall,
    TResult Function(IncorrectPostalCode<T> value)? incorrectPostalCode,
    TResult Function(NoAddressNumber<T> value)? noAddressNumber,
    TResult Function(NoInternetConnection<T> value)? noInternetConnection,
    required TResult orElse(),
  }) {
    if (noNumericValuePresent != null) {
      return noNumericValuePresent(this);
    }
    return orElse();
  }
}

abstract class NoNumericValuePresent<T> implements CoreValueFailure<T> {
  const factory NoNumericValuePresent({required T failedValue}) =
      _$NoNumericValuePresent<T>;

  T get failedValue;
  @JsonKey(ignore: true)
  $NoNumericValuePresentCopyWith<T, NoNumericValuePresent<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NonPositiveCopyWith<T, $Res> {
  factory $NonPositiveCopyWith(
          NonPositive<T> value, $Res Function(NonPositive<T>) then) =
      _$NonPositiveCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class _$NonPositiveCopyWithImpl<T, $Res>
    extends _$CoreValueFailureCopyWithImpl<T, $Res>
    implements $NonPositiveCopyWith<T, $Res> {
  _$NonPositiveCopyWithImpl(
      NonPositive<T> _value, $Res Function(NonPositive<T>) _then)
      : super(_value, (v) => _then(v as NonPositive<T>));

  @override
  NonPositive<T> get _value => super._value as NonPositive<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(NonPositive<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$NonPositive<T> implements NonPositive<T> {
  const _$NonPositive({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'CoreValueFailure<$T>.nonPositive(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NonPositive<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  $NonPositiveCopyWith<T, NonPositive<T>> get copyWith =>
      _$NonPositiveCopyWithImpl<T, NonPositive<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int maxLength) listTooLong,
    required TResult Function(T failedValue, int minLength) listTooShort,
    required TResult Function(T failedValue, int maxLength) exceedingLength,
    required TResult Function(T failedValue, int minLength) stringTooShort,
    required TResult Function(T failedValue, String missingKeyword)
        stringDoesntContainKeyword,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) multiline,
    required TResult Function(T failedValue) nonNumeric,
    required TResult Function(T failedValue) noNumericValuePresent,
    required TResult Function(T failedValue) nonPositive,
    required TResult Function(T failedValue, num min, num max)
        numberOutsideInterval,
    required TResult Function(T failedValue, int maxHeight, int maxWidth)
        imageTooBig,
    required TResult Function(T failedValue, int minHeight, int minWidth)
        imageTooSmall,
    required TResult Function(T failedValue) incorrectPostalCode,
    required TResult Function(T failedValue) noAddressNumber,
    required TResult Function() noInternetConnection,
  }) {
    return nonPositive(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue, int maxLength)? listTooLong,
    TResult Function(T failedValue, int minLength)? listTooShort,
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue, int minLength)? stringTooShort,
    TResult Function(T failedValue, String missingKeyword)?
        stringDoesntContainKeyword,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue)? nonNumeric,
    TResult Function(T failedValue)? noNumericValuePresent,
    TResult Function(T failedValue)? nonPositive,
    TResult Function(T failedValue, num min, num max)? numberOutsideInterval,
    TResult Function(T failedValue, int maxHeight, int maxWidth)? imageTooBig,
    TResult Function(T failedValue, int minHeight, int minWidth)? imageTooSmall,
    TResult Function(T failedValue)? incorrectPostalCode,
    TResult Function(T failedValue)? noAddressNumber,
    TResult Function()? noInternetConnection,
  }) {
    return nonPositive?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int maxLength)? listTooLong,
    TResult Function(T failedValue, int minLength)? listTooShort,
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue, int minLength)? stringTooShort,
    TResult Function(T failedValue, String missingKeyword)?
        stringDoesntContainKeyword,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue)? nonNumeric,
    TResult Function(T failedValue)? noNumericValuePresent,
    TResult Function(T failedValue)? nonPositive,
    TResult Function(T failedValue, num min, num max)? numberOutsideInterval,
    TResult Function(T failedValue, int maxHeight, int maxWidth)? imageTooBig,
    TResult Function(T failedValue, int minHeight, int minWidth)? imageTooSmall,
    TResult Function(T failedValue)? incorrectPostalCode,
    TResult Function(T failedValue)? noAddressNumber,
    TResult Function()? noInternetConnection,
    required TResult orElse(),
  }) {
    if (nonPositive != null) {
      return nonPositive(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ListTooLong<T> value) listTooLong,
    required TResult Function(ListTooShort<T> value) listTooShort,
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(StringTooShort<T> value) stringTooShort,
    required TResult Function(StringDoesntContainKeyword<T> value)
        stringDoesntContainKeyword,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(NonNumeric<T> value) nonNumeric,
    required TResult Function(NoNumericValuePresent<T> value)
        noNumericValuePresent,
    required TResult Function(NonPositive<T> value) nonPositive,
    required TResult Function(NumberOutsideInterval<T> value)
        numberOutsideInterval,
    required TResult Function(ImageTooBig<T> value) imageTooBig,
    required TResult Function(ImageTooSmall<T> value) imageTooSmall,
    required TResult Function(IncorrectPostalCode<T> value) incorrectPostalCode,
    required TResult Function(NoAddressNumber<T> value) noAddressNumber,
    required TResult Function(NoInternetConnection<T> value)
        noInternetConnection,
  }) {
    return nonPositive(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(ListTooShort<T> value)? listTooShort,
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(StringTooShort<T> value)? stringTooShort,
    TResult Function(StringDoesntContainKeyword<T> value)?
        stringDoesntContainKeyword,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(NonNumeric<T> value)? nonNumeric,
    TResult Function(NoNumericValuePresent<T> value)? noNumericValuePresent,
    TResult Function(NonPositive<T> value)? nonPositive,
    TResult Function(NumberOutsideInterval<T> value)? numberOutsideInterval,
    TResult Function(ImageTooBig<T> value)? imageTooBig,
    TResult Function(ImageTooSmall<T> value)? imageTooSmall,
    TResult Function(IncorrectPostalCode<T> value)? incorrectPostalCode,
    TResult Function(NoAddressNumber<T> value)? noAddressNumber,
    TResult Function(NoInternetConnection<T> value)? noInternetConnection,
  }) {
    return nonPositive?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(ListTooShort<T> value)? listTooShort,
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(StringTooShort<T> value)? stringTooShort,
    TResult Function(StringDoesntContainKeyword<T> value)?
        stringDoesntContainKeyword,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(NonNumeric<T> value)? nonNumeric,
    TResult Function(NoNumericValuePresent<T> value)? noNumericValuePresent,
    TResult Function(NonPositive<T> value)? nonPositive,
    TResult Function(NumberOutsideInterval<T> value)? numberOutsideInterval,
    TResult Function(ImageTooBig<T> value)? imageTooBig,
    TResult Function(ImageTooSmall<T> value)? imageTooSmall,
    TResult Function(IncorrectPostalCode<T> value)? incorrectPostalCode,
    TResult Function(NoAddressNumber<T> value)? noAddressNumber,
    TResult Function(NoInternetConnection<T> value)? noInternetConnection,
    required TResult orElse(),
  }) {
    if (nonPositive != null) {
      return nonPositive(this);
    }
    return orElse();
  }
}

abstract class NonPositive<T> implements CoreValueFailure<T> {
  const factory NonPositive({required T failedValue}) = _$NonPositive<T>;

  T get failedValue;
  @JsonKey(ignore: true)
  $NonPositiveCopyWith<T, NonPositive<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NumberOutsideIntervalCopyWith<T, $Res> {
  factory $NumberOutsideIntervalCopyWith(NumberOutsideInterval<T> value,
          $Res Function(NumberOutsideInterval<T>) then) =
      _$NumberOutsideIntervalCopyWithImpl<T, $Res>;
  $Res call({T failedValue, num min, num max});
}

/// @nodoc
class _$NumberOutsideIntervalCopyWithImpl<T, $Res>
    extends _$CoreValueFailureCopyWithImpl<T, $Res>
    implements $NumberOutsideIntervalCopyWith<T, $Res> {
  _$NumberOutsideIntervalCopyWithImpl(NumberOutsideInterval<T> _value,
      $Res Function(NumberOutsideInterval<T>) _then)
      : super(_value, (v) => _then(v as NumberOutsideInterval<T>));

  @override
  NumberOutsideInterval<T> get _value =>
      super._value as NumberOutsideInterval<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
    Object? min = freezed,
    Object? max = freezed,
  }) {
    return _then(NumberOutsideInterval<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
      min: min == freezed
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as num,
      max: max == freezed
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc

class _$NumberOutsideInterval<T> implements NumberOutsideInterval<T> {
  const _$NumberOutsideInterval(
      {required this.failedValue, required this.min, required this.max});

  @override
  final T failedValue;
  @override
  final num min;
  @override
  final num max;

  @override
  String toString() {
    return 'CoreValueFailure<$T>.numberOutsideInterval(failedValue: $failedValue, min: $min, max: $max)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NumberOutsideInterval<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue) &&
            const DeepCollectionEquality().equals(other.min, min) &&
            const DeepCollectionEquality().equals(other.max, max));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(failedValue),
      const DeepCollectionEquality().hash(min),
      const DeepCollectionEquality().hash(max));

  @JsonKey(ignore: true)
  @override
  $NumberOutsideIntervalCopyWith<T, NumberOutsideInterval<T>> get copyWith =>
      _$NumberOutsideIntervalCopyWithImpl<T, NumberOutsideInterval<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int maxLength) listTooLong,
    required TResult Function(T failedValue, int minLength) listTooShort,
    required TResult Function(T failedValue, int maxLength) exceedingLength,
    required TResult Function(T failedValue, int minLength) stringTooShort,
    required TResult Function(T failedValue, String missingKeyword)
        stringDoesntContainKeyword,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) multiline,
    required TResult Function(T failedValue) nonNumeric,
    required TResult Function(T failedValue) noNumericValuePresent,
    required TResult Function(T failedValue) nonPositive,
    required TResult Function(T failedValue, num min, num max)
        numberOutsideInterval,
    required TResult Function(T failedValue, int maxHeight, int maxWidth)
        imageTooBig,
    required TResult Function(T failedValue, int minHeight, int minWidth)
        imageTooSmall,
    required TResult Function(T failedValue) incorrectPostalCode,
    required TResult Function(T failedValue) noAddressNumber,
    required TResult Function() noInternetConnection,
  }) {
    return numberOutsideInterval(failedValue, min, max);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue, int maxLength)? listTooLong,
    TResult Function(T failedValue, int minLength)? listTooShort,
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue, int minLength)? stringTooShort,
    TResult Function(T failedValue, String missingKeyword)?
        stringDoesntContainKeyword,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue)? nonNumeric,
    TResult Function(T failedValue)? noNumericValuePresent,
    TResult Function(T failedValue)? nonPositive,
    TResult Function(T failedValue, num min, num max)? numberOutsideInterval,
    TResult Function(T failedValue, int maxHeight, int maxWidth)? imageTooBig,
    TResult Function(T failedValue, int minHeight, int minWidth)? imageTooSmall,
    TResult Function(T failedValue)? incorrectPostalCode,
    TResult Function(T failedValue)? noAddressNumber,
    TResult Function()? noInternetConnection,
  }) {
    return numberOutsideInterval?.call(failedValue, min, max);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int maxLength)? listTooLong,
    TResult Function(T failedValue, int minLength)? listTooShort,
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue, int minLength)? stringTooShort,
    TResult Function(T failedValue, String missingKeyword)?
        stringDoesntContainKeyword,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue)? nonNumeric,
    TResult Function(T failedValue)? noNumericValuePresent,
    TResult Function(T failedValue)? nonPositive,
    TResult Function(T failedValue, num min, num max)? numberOutsideInterval,
    TResult Function(T failedValue, int maxHeight, int maxWidth)? imageTooBig,
    TResult Function(T failedValue, int minHeight, int minWidth)? imageTooSmall,
    TResult Function(T failedValue)? incorrectPostalCode,
    TResult Function(T failedValue)? noAddressNumber,
    TResult Function()? noInternetConnection,
    required TResult orElse(),
  }) {
    if (numberOutsideInterval != null) {
      return numberOutsideInterval(failedValue, min, max);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ListTooLong<T> value) listTooLong,
    required TResult Function(ListTooShort<T> value) listTooShort,
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(StringTooShort<T> value) stringTooShort,
    required TResult Function(StringDoesntContainKeyword<T> value)
        stringDoesntContainKeyword,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(NonNumeric<T> value) nonNumeric,
    required TResult Function(NoNumericValuePresent<T> value)
        noNumericValuePresent,
    required TResult Function(NonPositive<T> value) nonPositive,
    required TResult Function(NumberOutsideInterval<T> value)
        numberOutsideInterval,
    required TResult Function(ImageTooBig<T> value) imageTooBig,
    required TResult Function(ImageTooSmall<T> value) imageTooSmall,
    required TResult Function(IncorrectPostalCode<T> value) incorrectPostalCode,
    required TResult Function(NoAddressNumber<T> value) noAddressNumber,
    required TResult Function(NoInternetConnection<T> value)
        noInternetConnection,
  }) {
    return numberOutsideInterval(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(ListTooShort<T> value)? listTooShort,
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(StringTooShort<T> value)? stringTooShort,
    TResult Function(StringDoesntContainKeyword<T> value)?
        stringDoesntContainKeyword,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(NonNumeric<T> value)? nonNumeric,
    TResult Function(NoNumericValuePresent<T> value)? noNumericValuePresent,
    TResult Function(NonPositive<T> value)? nonPositive,
    TResult Function(NumberOutsideInterval<T> value)? numberOutsideInterval,
    TResult Function(ImageTooBig<T> value)? imageTooBig,
    TResult Function(ImageTooSmall<T> value)? imageTooSmall,
    TResult Function(IncorrectPostalCode<T> value)? incorrectPostalCode,
    TResult Function(NoAddressNumber<T> value)? noAddressNumber,
    TResult Function(NoInternetConnection<T> value)? noInternetConnection,
  }) {
    return numberOutsideInterval?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(ListTooShort<T> value)? listTooShort,
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(StringTooShort<T> value)? stringTooShort,
    TResult Function(StringDoesntContainKeyword<T> value)?
        stringDoesntContainKeyword,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(NonNumeric<T> value)? nonNumeric,
    TResult Function(NoNumericValuePresent<T> value)? noNumericValuePresent,
    TResult Function(NonPositive<T> value)? nonPositive,
    TResult Function(NumberOutsideInterval<T> value)? numberOutsideInterval,
    TResult Function(ImageTooBig<T> value)? imageTooBig,
    TResult Function(ImageTooSmall<T> value)? imageTooSmall,
    TResult Function(IncorrectPostalCode<T> value)? incorrectPostalCode,
    TResult Function(NoAddressNumber<T> value)? noAddressNumber,
    TResult Function(NoInternetConnection<T> value)? noInternetConnection,
    required TResult orElse(),
  }) {
    if (numberOutsideInterval != null) {
      return numberOutsideInterval(this);
    }
    return orElse();
  }
}

abstract class NumberOutsideInterval<T> implements CoreValueFailure<T> {
  const factory NumberOutsideInterval(
      {required T failedValue,
      required num min,
      required num max}) = _$NumberOutsideInterval<T>;

  T get failedValue;
  num get min;
  num get max;
  @JsonKey(ignore: true)
  $NumberOutsideIntervalCopyWith<T, NumberOutsideInterval<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageTooBigCopyWith<T, $Res> {
  factory $ImageTooBigCopyWith(
          ImageTooBig<T> value, $Res Function(ImageTooBig<T>) then) =
      _$ImageTooBigCopyWithImpl<T, $Res>;
  $Res call({T failedValue, int maxHeight, int maxWidth});
}

/// @nodoc
class _$ImageTooBigCopyWithImpl<T, $Res>
    extends _$CoreValueFailureCopyWithImpl<T, $Res>
    implements $ImageTooBigCopyWith<T, $Res> {
  _$ImageTooBigCopyWithImpl(
      ImageTooBig<T> _value, $Res Function(ImageTooBig<T>) _then)
      : super(_value, (v) => _then(v as ImageTooBig<T>));

  @override
  ImageTooBig<T> get _value => super._value as ImageTooBig<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
    Object? maxHeight = freezed,
    Object? maxWidth = freezed,
  }) {
    return _then(ImageTooBig<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
      maxHeight: maxHeight == freezed
          ? _value.maxHeight
          : maxHeight // ignore: cast_nullable_to_non_nullable
              as int,
      maxWidth: maxWidth == freezed
          ? _value.maxWidth
          : maxWidth // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ImageTooBig<T> implements ImageTooBig<T> {
  const _$ImageTooBig(
      {required this.failedValue,
      required this.maxHeight,
      required this.maxWidth});

  @override
  final T failedValue;
  @override
  final int maxHeight;
  @override
  final int maxWidth;

  @override
  String toString() {
    return 'CoreValueFailure<$T>.imageTooBig(failedValue: $failedValue, maxHeight: $maxHeight, maxWidth: $maxWidth)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ImageTooBig<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue) &&
            const DeepCollectionEquality().equals(other.maxHeight, maxHeight) &&
            const DeepCollectionEquality().equals(other.maxWidth, maxWidth));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(failedValue),
      const DeepCollectionEquality().hash(maxHeight),
      const DeepCollectionEquality().hash(maxWidth));

  @JsonKey(ignore: true)
  @override
  $ImageTooBigCopyWith<T, ImageTooBig<T>> get copyWith =>
      _$ImageTooBigCopyWithImpl<T, ImageTooBig<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int maxLength) listTooLong,
    required TResult Function(T failedValue, int minLength) listTooShort,
    required TResult Function(T failedValue, int maxLength) exceedingLength,
    required TResult Function(T failedValue, int minLength) stringTooShort,
    required TResult Function(T failedValue, String missingKeyword)
        stringDoesntContainKeyword,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) multiline,
    required TResult Function(T failedValue) nonNumeric,
    required TResult Function(T failedValue) noNumericValuePresent,
    required TResult Function(T failedValue) nonPositive,
    required TResult Function(T failedValue, num min, num max)
        numberOutsideInterval,
    required TResult Function(T failedValue, int maxHeight, int maxWidth)
        imageTooBig,
    required TResult Function(T failedValue, int minHeight, int minWidth)
        imageTooSmall,
    required TResult Function(T failedValue) incorrectPostalCode,
    required TResult Function(T failedValue) noAddressNumber,
    required TResult Function() noInternetConnection,
  }) {
    return imageTooBig(failedValue, maxHeight, maxWidth);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue, int maxLength)? listTooLong,
    TResult Function(T failedValue, int minLength)? listTooShort,
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue, int minLength)? stringTooShort,
    TResult Function(T failedValue, String missingKeyword)?
        stringDoesntContainKeyword,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue)? nonNumeric,
    TResult Function(T failedValue)? noNumericValuePresent,
    TResult Function(T failedValue)? nonPositive,
    TResult Function(T failedValue, num min, num max)? numberOutsideInterval,
    TResult Function(T failedValue, int maxHeight, int maxWidth)? imageTooBig,
    TResult Function(T failedValue, int minHeight, int minWidth)? imageTooSmall,
    TResult Function(T failedValue)? incorrectPostalCode,
    TResult Function(T failedValue)? noAddressNumber,
    TResult Function()? noInternetConnection,
  }) {
    return imageTooBig?.call(failedValue, maxHeight, maxWidth);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int maxLength)? listTooLong,
    TResult Function(T failedValue, int minLength)? listTooShort,
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue, int minLength)? stringTooShort,
    TResult Function(T failedValue, String missingKeyword)?
        stringDoesntContainKeyword,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue)? nonNumeric,
    TResult Function(T failedValue)? noNumericValuePresent,
    TResult Function(T failedValue)? nonPositive,
    TResult Function(T failedValue, num min, num max)? numberOutsideInterval,
    TResult Function(T failedValue, int maxHeight, int maxWidth)? imageTooBig,
    TResult Function(T failedValue, int minHeight, int minWidth)? imageTooSmall,
    TResult Function(T failedValue)? incorrectPostalCode,
    TResult Function(T failedValue)? noAddressNumber,
    TResult Function()? noInternetConnection,
    required TResult orElse(),
  }) {
    if (imageTooBig != null) {
      return imageTooBig(failedValue, maxHeight, maxWidth);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ListTooLong<T> value) listTooLong,
    required TResult Function(ListTooShort<T> value) listTooShort,
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(StringTooShort<T> value) stringTooShort,
    required TResult Function(StringDoesntContainKeyword<T> value)
        stringDoesntContainKeyword,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(NonNumeric<T> value) nonNumeric,
    required TResult Function(NoNumericValuePresent<T> value)
        noNumericValuePresent,
    required TResult Function(NonPositive<T> value) nonPositive,
    required TResult Function(NumberOutsideInterval<T> value)
        numberOutsideInterval,
    required TResult Function(ImageTooBig<T> value) imageTooBig,
    required TResult Function(ImageTooSmall<T> value) imageTooSmall,
    required TResult Function(IncorrectPostalCode<T> value) incorrectPostalCode,
    required TResult Function(NoAddressNumber<T> value) noAddressNumber,
    required TResult Function(NoInternetConnection<T> value)
        noInternetConnection,
  }) {
    return imageTooBig(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(ListTooShort<T> value)? listTooShort,
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(StringTooShort<T> value)? stringTooShort,
    TResult Function(StringDoesntContainKeyword<T> value)?
        stringDoesntContainKeyword,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(NonNumeric<T> value)? nonNumeric,
    TResult Function(NoNumericValuePresent<T> value)? noNumericValuePresent,
    TResult Function(NonPositive<T> value)? nonPositive,
    TResult Function(NumberOutsideInterval<T> value)? numberOutsideInterval,
    TResult Function(ImageTooBig<T> value)? imageTooBig,
    TResult Function(ImageTooSmall<T> value)? imageTooSmall,
    TResult Function(IncorrectPostalCode<T> value)? incorrectPostalCode,
    TResult Function(NoAddressNumber<T> value)? noAddressNumber,
    TResult Function(NoInternetConnection<T> value)? noInternetConnection,
  }) {
    return imageTooBig?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(ListTooShort<T> value)? listTooShort,
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(StringTooShort<T> value)? stringTooShort,
    TResult Function(StringDoesntContainKeyword<T> value)?
        stringDoesntContainKeyword,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(NonNumeric<T> value)? nonNumeric,
    TResult Function(NoNumericValuePresent<T> value)? noNumericValuePresent,
    TResult Function(NonPositive<T> value)? nonPositive,
    TResult Function(NumberOutsideInterval<T> value)? numberOutsideInterval,
    TResult Function(ImageTooBig<T> value)? imageTooBig,
    TResult Function(ImageTooSmall<T> value)? imageTooSmall,
    TResult Function(IncorrectPostalCode<T> value)? incorrectPostalCode,
    TResult Function(NoAddressNumber<T> value)? noAddressNumber,
    TResult Function(NoInternetConnection<T> value)? noInternetConnection,
    required TResult orElse(),
  }) {
    if (imageTooBig != null) {
      return imageTooBig(this);
    }
    return orElse();
  }
}

abstract class ImageTooBig<T> implements CoreValueFailure<T> {
  const factory ImageTooBig(
      {required T failedValue,
      required int maxHeight,
      required int maxWidth}) = _$ImageTooBig<T>;

  T get failedValue;
  int get maxHeight;
  int get maxWidth;
  @JsonKey(ignore: true)
  $ImageTooBigCopyWith<T, ImageTooBig<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageTooSmallCopyWith<T, $Res> {
  factory $ImageTooSmallCopyWith(
          ImageTooSmall<T> value, $Res Function(ImageTooSmall<T>) then) =
      _$ImageTooSmallCopyWithImpl<T, $Res>;
  $Res call({T failedValue, int minHeight, int minWidth});
}

/// @nodoc
class _$ImageTooSmallCopyWithImpl<T, $Res>
    extends _$CoreValueFailureCopyWithImpl<T, $Res>
    implements $ImageTooSmallCopyWith<T, $Res> {
  _$ImageTooSmallCopyWithImpl(
      ImageTooSmall<T> _value, $Res Function(ImageTooSmall<T>) _then)
      : super(_value, (v) => _then(v as ImageTooSmall<T>));

  @override
  ImageTooSmall<T> get _value => super._value as ImageTooSmall<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
    Object? minHeight = freezed,
    Object? minWidth = freezed,
  }) {
    return _then(ImageTooSmall<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
      minHeight: minHeight == freezed
          ? _value.minHeight
          : minHeight // ignore: cast_nullable_to_non_nullable
              as int,
      minWidth: minWidth == freezed
          ? _value.minWidth
          : minWidth // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ImageTooSmall<T> implements ImageTooSmall<T> {
  const _$ImageTooSmall(
      {required this.failedValue,
      required this.minHeight,
      required this.minWidth});

  @override
  final T failedValue;
  @override
  final int minHeight;
  @override
  final int minWidth;

  @override
  String toString() {
    return 'CoreValueFailure<$T>.imageTooSmall(failedValue: $failedValue, minHeight: $minHeight, minWidth: $minWidth)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ImageTooSmall<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue) &&
            const DeepCollectionEquality().equals(other.minHeight, minHeight) &&
            const DeepCollectionEquality().equals(other.minWidth, minWidth));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(failedValue),
      const DeepCollectionEquality().hash(minHeight),
      const DeepCollectionEquality().hash(minWidth));

  @JsonKey(ignore: true)
  @override
  $ImageTooSmallCopyWith<T, ImageTooSmall<T>> get copyWith =>
      _$ImageTooSmallCopyWithImpl<T, ImageTooSmall<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int maxLength) listTooLong,
    required TResult Function(T failedValue, int minLength) listTooShort,
    required TResult Function(T failedValue, int maxLength) exceedingLength,
    required TResult Function(T failedValue, int minLength) stringTooShort,
    required TResult Function(T failedValue, String missingKeyword)
        stringDoesntContainKeyword,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) multiline,
    required TResult Function(T failedValue) nonNumeric,
    required TResult Function(T failedValue) noNumericValuePresent,
    required TResult Function(T failedValue) nonPositive,
    required TResult Function(T failedValue, num min, num max)
        numberOutsideInterval,
    required TResult Function(T failedValue, int maxHeight, int maxWidth)
        imageTooBig,
    required TResult Function(T failedValue, int minHeight, int minWidth)
        imageTooSmall,
    required TResult Function(T failedValue) incorrectPostalCode,
    required TResult Function(T failedValue) noAddressNumber,
    required TResult Function() noInternetConnection,
  }) {
    return imageTooSmall(failedValue, minHeight, minWidth);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue, int maxLength)? listTooLong,
    TResult Function(T failedValue, int minLength)? listTooShort,
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue, int minLength)? stringTooShort,
    TResult Function(T failedValue, String missingKeyword)?
        stringDoesntContainKeyword,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue)? nonNumeric,
    TResult Function(T failedValue)? noNumericValuePresent,
    TResult Function(T failedValue)? nonPositive,
    TResult Function(T failedValue, num min, num max)? numberOutsideInterval,
    TResult Function(T failedValue, int maxHeight, int maxWidth)? imageTooBig,
    TResult Function(T failedValue, int minHeight, int minWidth)? imageTooSmall,
    TResult Function(T failedValue)? incorrectPostalCode,
    TResult Function(T failedValue)? noAddressNumber,
    TResult Function()? noInternetConnection,
  }) {
    return imageTooSmall?.call(failedValue, minHeight, minWidth);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int maxLength)? listTooLong,
    TResult Function(T failedValue, int minLength)? listTooShort,
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue, int minLength)? stringTooShort,
    TResult Function(T failedValue, String missingKeyword)?
        stringDoesntContainKeyword,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue)? nonNumeric,
    TResult Function(T failedValue)? noNumericValuePresent,
    TResult Function(T failedValue)? nonPositive,
    TResult Function(T failedValue, num min, num max)? numberOutsideInterval,
    TResult Function(T failedValue, int maxHeight, int maxWidth)? imageTooBig,
    TResult Function(T failedValue, int minHeight, int minWidth)? imageTooSmall,
    TResult Function(T failedValue)? incorrectPostalCode,
    TResult Function(T failedValue)? noAddressNumber,
    TResult Function()? noInternetConnection,
    required TResult orElse(),
  }) {
    if (imageTooSmall != null) {
      return imageTooSmall(failedValue, minHeight, minWidth);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ListTooLong<T> value) listTooLong,
    required TResult Function(ListTooShort<T> value) listTooShort,
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(StringTooShort<T> value) stringTooShort,
    required TResult Function(StringDoesntContainKeyword<T> value)
        stringDoesntContainKeyword,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(NonNumeric<T> value) nonNumeric,
    required TResult Function(NoNumericValuePresent<T> value)
        noNumericValuePresent,
    required TResult Function(NonPositive<T> value) nonPositive,
    required TResult Function(NumberOutsideInterval<T> value)
        numberOutsideInterval,
    required TResult Function(ImageTooBig<T> value) imageTooBig,
    required TResult Function(ImageTooSmall<T> value) imageTooSmall,
    required TResult Function(IncorrectPostalCode<T> value) incorrectPostalCode,
    required TResult Function(NoAddressNumber<T> value) noAddressNumber,
    required TResult Function(NoInternetConnection<T> value)
        noInternetConnection,
  }) {
    return imageTooSmall(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(ListTooShort<T> value)? listTooShort,
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(StringTooShort<T> value)? stringTooShort,
    TResult Function(StringDoesntContainKeyword<T> value)?
        stringDoesntContainKeyword,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(NonNumeric<T> value)? nonNumeric,
    TResult Function(NoNumericValuePresent<T> value)? noNumericValuePresent,
    TResult Function(NonPositive<T> value)? nonPositive,
    TResult Function(NumberOutsideInterval<T> value)? numberOutsideInterval,
    TResult Function(ImageTooBig<T> value)? imageTooBig,
    TResult Function(ImageTooSmall<T> value)? imageTooSmall,
    TResult Function(IncorrectPostalCode<T> value)? incorrectPostalCode,
    TResult Function(NoAddressNumber<T> value)? noAddressNumber,
    TResult Function(NoInternetConnection<T> value)? noInternetConnection,
  }) {
    return imageTooSmall?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(ListTooShort<T> value)? listTooShort,
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(StringTooShort<T> value)? stringTooShort,
    TResult Function(StringDoesntContainKeyword<T> value)?
        stringDoesntContainKeyword,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(NonNumeric<T> value)? nonNumeric,
    TResult Function(NoNumericValuePresent<T> value)? noNumericValuePresent,
    TResult Function(NonPositive<T> value)? nonPositive,
    TResult Function(NumberOutsideInterval<T> value)? numberOutsideInterval,
    TResult Function(ImageTooBig<T> value)? imageTooBig,
    TResult Function(ImageTooSmall<T> value)? imageTooSmall,
    TResult Function(IncorrectPostalCode<T> value)? incorrectPostalCode,
    TResult Function(NoAddressNumber<T> value)? noAddressNumber,
    TResult Function(NoInternetConnection<T> value)? noInternetConnection,
    required TResult orElse(),
  }) {
    if (imageTooSmall != null) {
      return imageTooSmall(this);
    }
    return orElse();
  }
}

abstract class ImageTooSmall<T> implements CoreValueFailure<T> {
  const factory ImageTooSmall(
      {required T failedValue,
      required int minHeight,
      required int minWidth}) = _$ImageTooSmall<T>;

  T get failedValue;
  int get minHeight;
  int get minWidth;
  @JsonKey(ignore: true)
  $ImageTooSmallCopyWith<T, ImageTooSmall<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IncorrectPostalCodeCopyWith<T, $Res> {
  factory $IncorrectPostalCodeCopyWith(IncorrectPostalCode<T> value,
          $Res Function(IncorrectPostalCode<T>) then) =
      _$IncorrectPostalCodeCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class _$IncorrectPostalCodeCopyWithImpl<T, $Res>
    extends _$CoreValueFailureCopyWithImpl<T, $Res>
    implements $IncorrectPostalCodeCopyWith<T, $Res> {
  _$IncorrectPostalCodeCopyWithImpl(IncorrectPostalCode<T> _value,
      $Res Function(IncorrectPostalCode<T>) _then)
      : super(_value, (v) => _then(v as IncorrectPostalCode<T>));

  @override
  IncorrectPostalCode<T> get _value => super._value as IncorrectPostalCode<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(IncorrectPostalCode<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$IncorrectPostalCode<T> implements IncorrectPostalCode<T> {
  const _$IncorrectPostalCode({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'CoreValueFailure<$T>.incorrectPostalCode(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is IncorrectPostalCode<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  $IncorrectPostalCodeCopyWith<T, IncorrectPostalCode<T>> get copyWith =>
      _$IncorrectPostalCodeCopyWithImpl<T, IncorrectPostalCode<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int maxLength) listTooLong,
    required TResult Function(T failedValue, int minLength) listTooShort,
    required TResult Function(T failedValue, int maxLength) exceedingLength,
    required TResult Function(T failedValue, int minLength) stringTooShort,
    required TResult Function(T failedValue, String missingKeyword)
        stringDoesntContainKeyword,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) multiline,
    required TResult Function(T failedValue) nonNumeric,
    required TResult Function(T failedValue) noNumericValuePresent,
    required TResult Function(T failedValue) nonPositive,
    required TResult Function(T failedValue, num min, num max)
        numberOutsideInterval,
    required TResult Function(T failedValue, int maxHeight, int maxWidth)
        imageTooBig,
    required TResult Function(T failedValue, int minHeight, int minWidth)
        imageTooSmall,
    required TResult Function(T failedValue) incorrectPostalCode,
    required TResult Function(T failedValue) noAddressNumber,
    required TResult Function() noInternetConnection,
  }) {
    return incorrectPostalCode(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue, int maxLength)? listTooLong,
    TResult Function(T failedValue, int minLength)? listTooShort,
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue, int minLength)? stringTooShort,
    TResult Function(T failedValue, String missingKeyword)?
        stringDoesntContainKeyword,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue)? nonNumeric,
    TResult Function(T failedValue)? noNumericValuePresent,
    TResult Function(T failedValue)? nonPositive,
    TResult Function(T failedValue, num min, num max)? numberOutsideInterval,
    TResult Function(T failedValue, int maxHeight, int maxWidth)? imageTooBig,
    TResult Function(T failedValue, int minHeight, int minWidth)? imageTooSmall,
    TResult Function(T failedValue)? incorrectPostalCode,
    TResult Function(T failedValue)? noAddressNumber,
    TResult Function()? noInternetConnection,
  }) {
    return incorrectPostalCode?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int maxLength)? listTooLong,
    TResult Function(T failedValue, int minLength)? listTooShort,
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue, int minLength)? stringTooShort,
    TResult Function(T failedValue, String missingKeyword)?
        stringDoesntContainKeyword,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue)? nonNumeric,
    TResult Function(T failedValue)? noNumericValuePresent,
    TResult Function(T failedValue)? nonPositive,
    TResult Function(T failedValue, num min, num max)? numberOutsideInterval,
    TResult Function(T failedValue, int maxHeight, int maxWidth)? imageTooBig,
    TResult Function(T failedValue, int minHeight, int minWidth)? imageTooSmall,
    TResult Function(T failedValue)? incorrectPostalCode,
    TResult Function(T failedValue)? noAddressNumber,
    TResult Function()? noInternetConnection,
    required TResult orElse(),
  }) {
    if (incorrectPostalCode != null) {
      return incorrectPostalCode(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ListTooLong<T> value) listTooLong,
    required TResult Function(ListTooShort<T> value) listTooShort,
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(StringTooShort<T> value) stringTooShort,
    required TResult Function(StringDoesntContainKeyword<T> value)
        stringDoesntContainKeyword,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(NonNumeric<T> value) nonNumeric,
    required TResult Function(NoNumericValuePresent<T> value)
        noNumericValuePresent,
    required TResult Function(NonPositive<T> value) nonPositive,
    required TResult Function(NumberOutsideInterval<T> value)
        numberOutsideInterval,
    required TResult Function(ImageTooBig<T> value) imageTooBig,
    required TResult Function(ImageTooSmall<T> value) imageTooSmall,
    required TResult Function(IncorrectPostalCode<T> value) incorrectPostalCode,
    required TResult Function(NoAddressNumber<T> value) noAddressNumber,
    required TResult Function(NoInternetConnection<T> value)
        noInternetConnection,
  }) {
    return incorrectPostalCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(ListTooShort<T> value)? listTooShort,
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(StringTooShort<T> value)? stringTooShort,
    TResult Function(StringDoesntContainKeyword<T> value)?
        stringDoesntContainKeyword,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(NonNumeric<T> value)? nonNumeric,
    TResult Function(NoNumericValuePresent<T> value)? noNumericValuePresent,
    TResult Function(NonPositive<T> value)? nonPositive,
    TResult Function(NumberOutsideInterval<T> value)? numberOutsideInterval,
    TResult Function(ImageTooBig<T> value)? imageTooBig,
    TResult Function(ImageTooSmall<T> value)? imageTooSmall,
    TResult Function(IncorrectPostalCode<T> value)? incorrectPostalCode,
    TResult Function(NoAddressNumber<T> value)? noAddressNumber,
    TResult Function(NoInternetConnection<T> value)? noInternetConnection,
  }) {
    return incorrectPostalCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(ListTooShort<T> value)? listTooShort,
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(StringTooShort<T> value)? stringTooShort,
    TResult Function(StringDoesntContainKeyword<T> value)?
        stringDoesntContainKeyword,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(NonNumeric<T> value)? nonNumeric,
    TResult Function(NoNumericValuePresent<T> value)? noNumericValuePresent,
    TResult Function(NonPositive<T> value)? nonPositive,
    TResult Function(NumberOutsideInterval<T> value)? numberOutsideInterval,
    TResult Function(ImageTooBig<T> value)? imageTooBig,
    TResult Function(ImageTooSmall<T> value)? imageTooSmall,
    TResult Function(IncorrectPostalCode<T> value)? incorrectPostalCode,
    TResult Function(NoAddressNumber<T> value)? noAddressNumber,
    TResult Function(NoInternetConnection<T> value)? noInternetConnection,
    required TResult orElse(),
  }) {
    if (incorrectPostalCode != null) {
      return incorrectPostalCode(this);
    }
    return orElse();
  }
}

abstract class IncorrectPostalCode<T> implements CoreValueFailure<T> {
  const factory IncorrectPostalCode({required T failedValue}) =
      _$IncorrectPostalCode<T>;

  T get failedValue;
  @JsonKey(ignore: true)
  $IncorrectPostalCodeCopyWith<T, IncorrectPostalCode<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoAddressNumberCopyWith<T, $Res> {
  factory $NoAddressNumberCopyWith(
          NoAddressNumber<T> value, $Res Function(NoAddressNumber<T>) then) =
      _$NoAddressNumberCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class _$NoAddressNumberCopyWithImpl<T, $Res>
    extends _$CoreValueFailureCopyWithImpl<T, $Res>
    implements $NoAddressNumberCopyWith<T, $Res> {
  _$NoAddressNumberCopyWithImpl(
      NoAddressNumber<T> _value, $Res Function(NoAddressNumber<T>) _then)
      : super(_value, (v) => _then(v as NoAddressNumber<T>));

  @override
  NoAddressNumber<T> get _value => super._value as NoAddressNumber<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(NoAddressNumber<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$NoAddressNumber<T> implements NoAddressNumber<T> {
  const _$NoAddressNumber({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'CoreValueFailure<$T>.noAddressNumber(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NoAddressNumber<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  $NoAddressNumberCopyWith<T, NoAddressNumber<T>> get copyWith =>
      _$NoAddressNumberCopyWithImpl<T, NoAddressNumber<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int maxLength) listTooLong,
    required TResult Function(T failedValue, int minLength) listTooShort,
    required TResult Function(T failedValue, int maxLength) exceedingLength,
    required TResult Function(T failedValue, int minLength) stringTooShort,
    required TResult Function(T failedValue, String missingKeyword)
        stringDoesntContainKeyword,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) multiline,
    required TResult Function(T failedValue) nonNumeric,
    required TResult Function(T failedValue) noNumericValuePresent,
    required TResult Function(T failedValue) nonPositive,
    required TResult Function(T failedValue, num min, num max)
        numberOutsideInterval,
    required TResult Function(T failedValue, int maxHeight, int maxWidth)
        imageTooBig,
    required TResult Function(T failedValue, int minHeight, int minWidth)
        imageTooSmall,
    required TResult Function(T failedValue) incorrectPostalCode,
    required TResult Function(T failedValue) noAddressNumber,
    required TResult Function() noInternetConnection,
  }) {
    return noAddressNumber(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue, int maxLength)? listTooLong,
    TResult Function(T failedValue, int minLength)? listTooShort,
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue, int minLength)? stringTooShort,
    TResult Function(T failedValue, String missingKeyword)?
        stringDoesntContainKeyword,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue)? nonNumeric,
    TResult Function(T failedValue)? noNumericValuePresent,
    TResult Function(T failedValue)? nonPositive,
    TResult Function(T failedValue, num min, num max)? numberOutsideInterval,
    TResult Function(T failedValue, int maxHeight, int maxWidth)? imageTooBig,
    TResult Function(T failedValue, int minHeight, int minWidth)? imageTooSmall,
    TResult Function(T failedValue)? incorrectPostalCode,
    TResult Function(T failedValue)? noAddressNumber,
    TResult Function()? noInternetConnection,
  }) {
    return noAddressNumber?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int maxLength)? listTooLong,
    TResult Function(T failedValue, int minLength)? listTooShort,
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue, int minLength)? stringTooShort,
    TResult Function(T failedValue, String missingKeyword)?
        stringDoesntContainKeyword,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue)? nonNumeric,
    TResult Function(T failedValue)? noNumericValuePresent,
    TResult Function(T failedValue)? nonPositive,
    TResult Function(T failedValue, num min, num max)? numberOutsideInterval,
    TResult Function(T failedValue, int maxHeight, int maxWidth)? imageTooBig,
    TResult Function(T failedValue, int minHeight, int minWidth)? imageTooSmall,
    TResult Function(T failedValue)? incorrectPostalCode,
    TResult Function(T failedValue)? noAddressNumber,
    TResult Function()? noInternetConnection,
    required TResult orElse(),
  }) {
    if (noAddressNumber != null) {
      return noAddressNumber(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ListTooLong<T> value) listTooLong,
    required TResult Function(ListTooShort<T> value) listTooShort,
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(StringTooShort<T> value) stringTooShort,
    required TResult Function(StringDoesntContainKeyword<T> value)
        stringDoesntContainKeyword,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(NonNumeric<T> value) nonNumeric,
    required TResult Function(NoNumericValuePresent<T> value)
        noNumericValuePresent,
    required TResult Function(NonPositive<T> value) nonPositive,
    required TResult Function(NumberOutsideInterval<T> value)
        numberOutsideInterval,
    required TResult Function(ImageTooBig<T> value) imageTooBig,
    required TResult Function(ImageTooSmall<T> value) imageTooSmall,
    required TResult Function(IncorrectPostalCode<T> value) incorrectPostalCode,
    required TResult Function(NoAddressNumber<T> value) noAddressNumber,
    required TResult Function(NoInternetConnection<T> value)
        noInternetConnection,
  }) {
    return noAddressNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(ListTooShort<T> value)? listTooShort,
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(StringTooShort<T> value)? stringTooShort,
    TResult Function(StringDoesntContainKeyword<T> value)?
        stringDoesntContainKeyword,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(NonNumeric<T> value)? nonNumeric,
    TResult Function(NoNumericValuePresent<T> value)? noNumericValuePresent,
    TResult Function(NonPositive<T> value)? nonPositive,
    TResult Function(NumberOutsideInterval<T> value)? numberOutsideInterval,
    TResult Function(ImageTooBig<T> value)? imageTooBig,
    TResult Function(ImageTooSmall<T> value)? imageTooSmall,
    TResult Function(IncorrectPostalCode<T> value)? incorrectPostalCode,
    TResult Function(NoAddressNumber<T> value)? noAddressNumber,
    TResult Function(NoInternetConnection<T> value)? noInternetConnection,
  }) {
    return noAddressNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(ListTooShort<T> value)? listTooShort,
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(StringTooShort<T> value)? stringTooShort,
    TResult Function(StringDoesntContainKeyword<T> value)?
        stringDoesntContainKeyword,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(NonNumeric<T> value)? nonNumeric,
    TResult Function(NoNumericValuePresent<T> value)? noNumericValuePresent,
    TResult Function(NonPositive<T> value)? nonPositive,
    TResult Function(NumberOutsideInterval<T> value)? numberOutsideInterval,
    TResult Function(ImageTooBig<T> value)? imageTooBig,
    TResult Function(ImageTooSmall<T> value)? imageTooSmall,
    TResult Function(IncorrectPostalCode<T> value)? incorrectPostalCode,
    TResult Function(NoAddressNumber<T> value)? noAddressNumber,
    TResult Function(NoInternetConnection<T> value)? noInternetConnection,
    required TResult orElse(),
  }) {
    if (noAddressNumber != null) {
      return noAddressNumber(this);
    }
    return orElse();
  }
}

abstract class NoAddressNumber<T> implements CoreValueFailure<T> {
  const factory NoAddressNumber({required T failedValue}) =
      _$NoAddressNumber<T>;

  T get failedValue;
  @JsonKey(ignore: true)
  $NoAddressNumberCopyWith<T, NoAddressNumber<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoInternetConnectionCopyWith<T, $Res> {
  factory $NoInternetConnectionCopyWith(NoInternetConnection<T> value,
          $Res Function(NoInternetConnection<T>) then) =
      _$NoInternetConnectionCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$NoInternetConnectionCopyWithImpl<T, $Res>
    extends _$CoreValueFailureCopyWithImpl<T, $Res>
    implements $NoInternetConnectionCopyWith<T, $Res> {
  _$NoInternetConnectionCopyWithImpl(NoInternetConnection<T> _value,
      $Res Function(NoInternetConnection<T>) _then)
      : super(_value, (v) => _then(v as NoInternetConnection<T>));

  @override
  NoInternetConnection<T> get _value => super._value as NoInternetConnection<T>;
}

/// @nodoc

class _$NoInternetConnection<T> implements NoInternetConnection<T> {
  const _$NoInternetConnection();

  @override
  String toString() {
    return 'CoreValueFailure<$T>.noInternetConnection()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is NoInternetConnection<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int maxLength) listTooLong,
    required TResult Function(T failedValue, int minLength) listTooShort,
    required TResult Function(T failedValue, int maxLength) exceedingLength,
    required TResult Function(T failedValue, int minLength) stringTooShort,
    required TResult Function(T failedValue, String missingKeyword)
        stringDoesntContainKeyword,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) multiline,
    required TResult Function(T failedValue) nonNumeric,
    required TResult Function(T failedValue) noNumericValuePresent,
    required TResult Function(T failedValue) nonPositive,
    required TResult Function(T failedValue, num min, num max)
        numberOutsideInterval,
    required TResult Function(T failedValue, int maxHeight, int maxWidth)
        imageTooBig,
    required TResult Function(T failedValue, int minHeight, int minWidth)
        imageTooSmall,
    required TResult Function(T failedValue) incorrectPostalCode,
    required TResult Function(T failedValue) noAddressNumber,
    required TResult Function() noInternetConnection,
  }) {
    return noInternetConnection();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue, int maxLength)? listTooLong,
    TResult Function(T failedValue, int minLength)? listTooShort,
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue, int minLength)? stringTooShort,
    TResult Function(T failedValue, String missingKeyword)?
        stringDoesntContainKeyword,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue)? nonNumeric,
    TResult Function(T failedValue)? noNumericValuePresent,
    TResult Function(T failedValue)? nonPositive,
    TResult Function(T failedValue, num min, num max)? numberOutsideInterval,
    TResult Function(T failedValue, int maxHeight, int maxWidth)? imageTooBig,
    TResult Function(T failedValue, int minHeight, int minWidth)? imageTooSmall,
    TResult Function(T failedValue)? incorrectPostalCode,
    TResult Function(T failedValue)? noAddressNumber,
    TResult Function()? noInternetConnection,
  }) {
    return noInternetConnection?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int maxLength)? listTooLong,
    TResult Function(T failedValue, int minLength)? listTooShort,
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue, int minLength)? stringTooShort,
    TResult Function(T failedValue, String missingKeyword)?
        stringDoesntContainKeyword,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue)? nonNumeric,
    TResult Function(T failedValue)? noNumericValuePresent,
    TResult Function(T failedValue)? nonPositive,
    TResult Function(T failedValue, num min, num max)? numberOutsideInterval,
    TResult Function(T failedValue, int maxHeight, int maxWidth)? imageTooBig,
    TResult Function(T failedValue, int minHeight, int minWidth)? imageTooSmall,
    TResult Function(T failedValue)? incorrectPostalCode,
    TResult Function(T failedValue)? noAddressNumber,
    TResult Function()? noInternetConnection,
    required TResult orElse(),
  }) {
    if (noInternetConnection != null) {
      return noInternetConnection();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ListTooLong<T> value) listTooLong,
    required TResult Function(ListTooShort<T> value) listTooShort,
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(StringTooShort<T> value) stringTooShort,
    required TResult Function(StringDoesntContainKeyword<T> value)
        stringDoesntContainKeyword,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(NonNumeric<T> value) nonNumeric,
    required TResult Function(NoNumericValuePresent<T> value)
        noNumericValuePresent,
    required TResult Function(NonPositive<T> value) nonPositive,
    required TResult Function(NumberOutsideInterval<T> value)
        numberOutsideInterval,
    required TResult Function(ImageTooBig<T> value) imageTooBig,
    required TResult Function(ImageTooSmall<T> value) imageTooSmall,
    required TResult Function(IncorrectPostalCode<T> value) incorrectPostalCode,
    required TResult Function(NoAddressNumber<T> value) noAddressNumber,
    required TResult Function(NoInternetConnection<T> value)
        noInternetConnection,
  }) {
    return noInternetConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(ListTooShort<T> value)? listTooShort,
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(StringTooShort<T> value)? stringTooShort,
    TResult Function(StringDoesntContainKeyword<T> value)?
        stringDoesntContainKeyword,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(NonNumeric<T> value)? nonNumeric,
    TResult Function(NoNumericValuePresent<T> value)? noNumericValuePresent,
    TResult Function(NonPositive<T> value)? nonPositive,
    TResult Function(NumberOutsideInterval<T> value)? numberOutsideInterval,
    TResult Function(ImageTooBig<T> value)? imageTooBig,
    TResult Function(ImageTooSmall<T> value)? imageTooSmall,
    TResult Function(IncorrectPostalCode<T> value)? incorrectPostalCode,
    TResult Function(NoAddressNumber<T> value)? noAddressNumber,
    TResult Function(NoInternetConnection<T> value)? noInternetConnection,
  }) {
    return noInternetConnection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(ListTooShort<T> value)? listTooShort,
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(StringTooShort<T> value)? stringTooShort,
    TResult Function(StringDoesntContainKeyword<T> value)?
        stringDoesntContainKeyword,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(NonNumeric<T> value)? nonNumeric,
    TResult Function(NoNumericValuePresent<T> value)? noNumericValuePresent,
    TResult Function(NonPositive<T> value)? nonPositive,
    TResult Function(NumberOutsideInterval<T> value)? numberOutsideInterval,
    TResult Function(ImageTooBig<T> value)? imageTooBig,
    TResult Function(ImageTooSmall<T> value)? imageTooSmall,
    TResult Function(IncorrectPostalCode<T> value)? incorrectPostalCode,
    TResult Function(NoAddressNumber<T> value)? noAddressNumber,
    TResult Function(NoInternetConnection<T> value)? noInternetConnection,
    required TResult orElse(),
  }) {
    if (noInternetConnection != null) {
      return noInternetConnection(this);
    }
    return orElse();
  }
}

abstract class NoInternetConnection<T> implements CoreValueFailure<T> {
  const factory NoInternetConnection() = _$NoInternetConnection<T>;
}
