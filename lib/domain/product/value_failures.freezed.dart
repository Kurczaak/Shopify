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
class _$ProductValueFailureTearOff {
  const _$ProductValueFailureTearOff();

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

  NoPhotoSelected<T> noPhotoSelected<T>({required T failedValue}) {
    return NoPhotoSelected<T>(
      failedValue: failedValue,
    );
  }

  NonPositivePrice<T> nonPositiveValue<T>({required T failedValue}) {
    return NonPositivePrice<T>(
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

  EmptyList<T> emptyList<T>({required T failedValue, required int minLength}) {
    return EmptyList<T>(
      failedValue: failedValue,
      minLength: minLength,
    );
  }
}

/// @nodoc
const $ProductValueFailure = _$ProductValueFailureTearOff();

/// @nodoc
mixin _$ProductValueFailure<T> {
  T get failedValue => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int maxLength) exceedingLength,
    required TResult Function(T failedValue, int minLength) stringTooShort,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) multiline,
    required TResult Function(T failedValue) noPhotoSelected,
    required TResult Function(T failedValue) nonPositiveValue,
    required TResult Function(T failedValue, num min, num max)
        numberOutsideInterval,
    required TResult Function(T failedValue, int maxLength) listTooLong,
    required TResult Function(T failedValue, int minLength) listTooShort,
    required TResult Function(T failedValue, int minLength) emptyList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue, int minLength)? stringTooShort,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue)? noPhotoSelected,
    TResult Function(T failedValue)? nonPositiveValue,
    TResult Function(T failedValue, num min, num max)? numberOutsideInterval,
    TResult Function(T failedValue, int maxLength)? listTooLong,
    TResult Function(T failedValue, int minLength)? listTooShort,
    TResult Function(T failedValue, int minLength)? emptyList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue, int minLength)? stringTooShort,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue)? noPhotoSelected,
    TResult Function(T failedValue)? nonPositiveValue,
    TResult Function(T failedValue, num min, num max)? numberOutsideInterval,
    TResult Function(T failedValue, int maxLength)? listTooLong,
    TResult Function(T failedValue, int minLength)? listTooShort,
    TResult Function(T failedValue, int minLength)? emptyList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(StringTooShort<T> value) stringTooShort,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(NoPhotoSelected<T> value) noPhotoSelected,
    required TResult Function(NonPositivePrice<T> value) nonPositiveValue,
    required TResult Function(NumberOutsideInterval<T> value)
        numberOutsideInterval,
    required TResult Function(ListTooLong<T> value) listTooLong,
    required TResult Function(ListTooShort<T> value) listTooShort,
    required TResult Function(EmptyList<T> value) emptyList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(StringTooShort<T> value)? stringTooShort,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(NoPhotoSelected<T> value)? noPhotoSelected,
    TResult Function(NonPositivePrice<T> value)? nonPositiveValue,
    TResult Function(NumberOutsideInterval<T> value)? numberOutsideInterval,
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(ListTooShort<T> value)? listTooShort,
    TResult Function(EmptyList<T> value)? emptyList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(StringTooShort<T> value)? stringTooShort,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(NoPhotoSelected<T> value)? noPhotoSelected,
    TResult Function(NonPositivePrice<T> value)? nonPositiveValue,
    TResult Function(NumberOutsideInterval<T> value)? numberOutsideInterval,
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(ListTooShort<T> value)? listTooShort,
    TResult Function(EmptyList<T> value)? emptyList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductValueFailureCopyWith<T, ProductValueFailure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductValueFailureCopyWith<T, $Res> {
  factory $ProductValueFailureCopyWith(ProductValueFailure<T> value,
          $Res Function(ProductValueFailure<T>) then) =
      _$ProductValueFailureCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class _$ProductValueFailureCopyWithImpl<T, $Res>
    implements $ProductValueFailureCopyWith<T, $Res> {
  _$ProductValueFailureCopyWithImpl(this._value, this._then);

  final ProductValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(ProductValueFailure<T>) _then;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_value.copyWith(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc
abstract class $ExceedingLengthCopyWith<T, $Res>
    implements $ProductValueFailureCopyWith<T, $Res> {
  factory $ExceedingLengthCopyWith(
          ExceedingLength<T> value, $Res Function(ExceedingLength<T>) then) =
      _$ExceedingLengthCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue, int maxLength});
}

/// @nodoc
class _$ExceedingLengthCopyWithImpl<T, $Res>
    extends _$ProductValueFailureCopyWithImpl<T, $Res>
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
    return 'ProductValueFailure<$T>.exceedingLength(failedValue: $failedValue, maxLength: $maxLength)';
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
    required TResult Function(T failedValue, int maxLength) exceedingLength,
    required TResult Function(T failedValue, int minLength) stringTooShort,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) multiline,
    required TResult Function(T failedValue) noPhotoSelected,
    required TResult Function(T failedValue) nonPositiveValue,
    required TResult Function(T failedValue, num min, num max)
        numberOutsideInterval,
    required TResult Function(T failedValue, int maxLength) listTooLong,
    required TResult Function(T failedValue, int minLength) listTooShort,
    required TResult Function(T failedValue, int minLength) emptyList,
  }) {
    return exceedingLength(failedValue, maxLength);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue, int minLength)? stringTooShort,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue)? noPhotoSelected,
    TResult Function(T failedValue)? nonPositiveValue,
    TResult Function(T failedValue, num min, num max)? numberOutsideInterval,
    TResult Function(T failedValue, int maxLength)? listTooLong,
    TResult Function(T failedValue, int minLength)? listTooShort,
    TResult Function(T failedValue, int minLength)? emptyList,
  }) {
    return exceedingLength?.call(failedValue, maxLength);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue, int minLength)? stringTooShort,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue)? noPhotoSelected,
    TResult Function(T failedValue)? nonPositiveValue,
    TResult Function(T failedValue, num min, num max)? numberOutsideInterval,
    TResult Function(T failedValue, int maxLength)? listTooLong,
    TResult Function(T failedValue, int minLength)? listTooShort,
    TResult Function(T failedValue, int minLength)? emptyList,
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
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(StringTooShort<T> value) stringTooShort,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(NoPhotoSelected<T> value) noPhotoSelected,
    required TResult Function(NonPositivePrice<T> value) nonPositiveValue,
    required TResult Function(NumberOutsideInterval<T> value)
        numberOutsideInterval,
    required TResult Function(ListTooLong<T> value) listTooLong,
    required TResult Function(ListTooShort<T> value) listTooShort,
    required TResult Function(EmptyList<T> value) emptyList,
  }) {
    return exceedingLength(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(StringTooShort<T> value)? stringTooShort,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(NoPhotoSelected<T> value)? noPhotoSelected,
    TResult Function(NonPositivePrice<T> value)? nonPositiveValue,
    TResult Function(NumberOutsideInterval<T> value)? numberOutsideInterval,
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(ListTooShort<T> value)? listTooShort,
    TResult Function(EmptyList<T> value)? emptyList,
  }) {
    return exceedingLength?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(StringTooShort<T> value)? stringTooShort,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(NoPhotoSelected<T> value)? noPhotoSelected,
    TResult Function(NonPositivePrice<T> value)? nonPositiveValue,
    TResult Function(NumberOutsideInterval<T> value)? numberOutsideInterval,
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(ListTooShort<T> value)? listTooShort,
    TResult Function(EmptyList<T> value)? emptyList,
    required TResult orElse(),
  }) {
    if (exceedingLength != null) {
      return exceedingLength(this);
    }
    return orElse();
  }
}

abstract class ExceedingLength<T> implements ProductValueFailure<T> {
  const factory ExceedingLength(
      {required T failedValue, required int maxLength}) = _$ExceedingLength<T>;

  @override
  T get failedValue;
  int get maxLength;
  @override
  @JsonKey(ignore: true)
  $ExceedingLengthCopyWith<T, ExceedingLength<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StringTooShortCopyWith<T, $Res>
    implements $ProductValueFailureCopyWith<T, $Res> {
  factory $StringTooShortCopyWith(
          StringTooShort<T> value, $Res Function(StringTooShort<T>) then) =
      _$StringTooShortCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue, int minLength});
}

/// @nodoc
class _$StringTooShortCopyWithImpl<T, $Res>
    extends _$ProductValueFailureCopyWithImpl<T, $Res>
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
    return 'ProductValueFailure<$T>.stringTooShort(failedValue: $failedValue, minLength: $minLength)';
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
    required TResult Function(T failedValue, int maxLength) exceedingLength,
    required TResult Function(T failedValue, int minLength) stringTooShort,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) multiline,
    required TResult Function(T failedValue) noPhotoSelected,
    required TResult Function(T failedValue) nonPositiveValue,
    required TResult Function(T failedValue, num min, num max)
        numberOutsideInterval,
    required TResult Function(T failedValue, int maxLength) listTooLong,
    required TResult Function(T failedValue, int minLength) listTooShort,
    required TResult Function(T failedValue, int minLength) emptyList,
  }) {
    return stringTooShort(failedValue, minLength);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue, int minLength)? stringTooShort,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue)? noPhotoSelected,
    TResult Function(T failedValue)? nonPositiveValue,
    TResult Function(T failedValue, num min, num max)? numberOutsideInterval,
    TResult Function(T failedValue, int maxLength)? listTooLong,
    TResult Function(T failedValue, int minLength)? listTooShort,
    TResult Function(T failedValue, int minLength)? emptyList,
  }) {
    return stringTooShort?.call(failedValue, minLength);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue, int minLength)? stringTooShort,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue)? noPhotoSelected,
    TResult Function(T failedValue)? nonPositiveValue,
    TResult Function(T failedValue, num min, num max)? numberOutsideInterval,
    TResult Function(T failedValue, int maxLength)? listTooLong,
    TResult Function(T failedValue, int minLength)? listTooShort,
    TResult Function(T failedValue, int minLength)? emptyList,
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
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(StringTooShort<T> value) stringTooShort,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(NoPhotoSelected<T> value) noPhotoSelected,
    required TResult Function(NonPositivePrice<T> value) nonPositiveValue,
    required TResult Function(NumberOutsideInterval<T> value)
        numberOutsideInterval,
    required TResult Function(ListTooLong<T> value) listTooLong,
    required TResult Function(ListTooShort<T> value) listTooShort,
    required TResult Function(EmptyList<T> value) emptyList,
  }) {
    return stringTooShort(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(StringTooShort<T> value)? stringTooShort,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(NoPhotoSelected<T> value)? noPhotoSelected,
    TResult Function(NonPositivePrice<T> value)? nonPositiveValue,
    TResult Function(NumberOutsideInterval<T> value)? numberOutsideInterval,
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(ListTooShort<T> value)? listTooShort,
    TResult Function(EmptyList<T> value)? emptyList,
  }) {
    return stringTooShort?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(StringTooShort<T> value)? stringTooShort,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(NoPhotoSelected<T> value)? noPhotoSelected,
    TResult Function(NonPositivePrice<T> value)? nonPositiveValue,
    TResult Function(NumberOutsideInterval<T> value)? numberOutsideInterval,
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(ListTooShort<T> value)? listTooShort,
    TResult Function(EmptyList<T> value)? emptyList,
    required TResult orElse(),
  }) {
    if (stringTooShort != null) {
      return stringTooShort(this);
    }
    return orElse();
  }
}

abstract class StringTooShort<T> implements ProductValueFailure<T> {
  const factory StringTooShort(
      {required T failedValue, required int minLength}) = _$StringTooShort<T>;

  @override
  T get failedValue;
  int get minLength;
  @override
  @JsonKey(ignore: true)
  $StringTooShortCopyWith<T, StringTooShort<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmptyCopyWith<T, $Res>
    implements $ProductValueFailureCopyWith<T, $Res> {
  factory $EmptyCopyWith(Empty<T> value, $Res Function(Empty<T>) then) =
      _$EmptyCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$EmptyCopyWithImpl<T, $Res>
    extends _$ProductValueFailureCopyWithImpl<T, $Res>
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
    return 'ProductValueFailure<$T>.empty(failedValue: $failedValue)';
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
    required TResult Function(T failedValue, int maxLength) exceedingLength,
    required TResult Function(T failedValue, int minLength) stringTooShort,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) multiline,
    required TResult Function(T failedValue) noPhotoSelected,
    required TResult Function(T failedValue) nonPositiveValue,
    required TResult Function(T failedValue, num min, num max)
        numberOutsideInterval,
    required TResult Function(T failedValue, int maxLength) listTooLong,
    required TResult Function(T failedValue, int minLength) listTooShort,
    required TResult Function(T failedValue, int minLength) emptyList,
  }) {
    return empty(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue, int minLength)? stringTooShort,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue)? noPhotoSelected,
    TResult Function(T failedValue)? nonPositiveValue,
    TResult Function(T failedValue, num min, num max)? numberOutsideInterval,
    TResult Function(T failedValue, int maxLength)? listTooLong,
    TResult Function(T failedValue, int minLength)? listTooShort,
    TResult Function(T failedValue, int minLength)? emptyList,
  }) {
    return empty?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue, int minLength)? stringTooShort,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue)? noPhotoSelected,
    TResult Function(T failedValue)? nonPositiveValue,
    TResult Function(T failedValue, num min, num max)? numberOutsideInterval,
    TResult Function(T failedValue, int maxLength)? listTooLong,
    TResult Function(T failedValue, int minLength)? listTooShort,
    TResult Function(T failedValue, int minLength)? emptyList,
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
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(StringTooShort<T> value) stringTooShort,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(NoPhotoSelected<T> value) noPhotoSelected,
    required TResult Function(NonPositivePrice<T> value) nonPositiveValue,
    required TResult Function(NumberOutsideInterval<T> value)
        numberOutsideInterval,
    required TResult Function(ListTooLong<T> value) listTooLong,
    required TResult Function(ListTooShort<T> value) listTooShort,
    required TResult Function(EmptyList<T> value) emptyList,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(StringTooShort<T> value)? stringTooShort,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(NoPhotoSelected<T> value)? noPhotoSelected,
    TResult Function(NonPositivePrice<T> value)? nonPositiveValue,
    TResult Function(NumberOutsideInterval<T> value)? numberOutsideInterval,
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(ListTooShort<T> value)? listTooShort,
    TResult Function(EmptyList<T> value)? emptyList,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(StringTooShort<T> value)? stringTooShort,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(NoPhotoSelected<T> value)? noPhotoSelected,
    TResult Function(NonPositivePrice<T> value)? nonPositiveValue,
    TResult Function(NumberOutsideInterval<T> value)? numberOutsideInterval,
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(ListTooShort<T> value)? listTooShort,
    TResult Function(EmptyList<T> value)? emptyList,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class Empty<T> implements ProductValueFailure<T> {
  const factory Empty({required T failedValue}) = _$Empty<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  $EmptyCopyWith<T, Empty<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MultilineCopyWith<T, $Res>
    implements $ProductValueFailureCopyWith<T, $Res> {
  factory $MultilineCopyWith(
          Multiline<T> value, $Res Function(Multiline<T>) then) =
      _$MultilineCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$MultilineCopyWithImpl<T, $Res>
    extends _$ProductValueFailureCopyWithImpl<T, $Res>
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
    return 'ProductValueFailure<$T>.multiline(failedValue: $failedValue)';
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
    required TResult Function(T failedValue, int maxLength) exceedingLength,
    required TResult Function(T failedValue, int minLength) stringTooShort,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) multiline,
    required TResult Function(T failedValue) noPhotoSelected,
    required TResult Function(T failedValue) nonPositiveValue,
    required TResult Function(T failedValue, num min, num max)
        numberOutsideInterval,
    required TResult Function(T failedValue, int maxLength) listTooLong,
    required TResult Function(T failedValue, int minLength) listTooShort,
    required TResult Function(T failedValue, int minLength) emptyList,
  }) {
    return multiline(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue, int minLength)? stringTooShort,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue)? noPhotoSelected,
    TResult Function(T failedValue)? nonPositiveValue,
    TResult Function(T failedValue, num min, num max)? numberOutsideInterval,
    TResult Function(T failedValue, int maxLength)? listTooLong,
    TResult Function(T failedValue, int minLength)? listTooShort,
    TResult Function(T failedValue, int minLength)? emptyList,
  }) {
    return multiline?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue, int minLength)? stringTooShort,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue)? noPhotoSelected,
    TResult Function(T failedValue)? nonPositiveValue,
    TResult Function(T failedValue, num min, num max)? numberOutsideInterval,
    TResult Function(T failedValue, int maxLength)? listTooLong,
    TResult Function(T failedValue, int minLength)? listTooShort,
    TResult Function(T failedValue, int minLength)? emptyList,
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
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(StringTooShort<T> value) stringTooShort,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(NoPhotoSelected<T> value) noPhotoSelected,
    required TResult Function(NonPositivePrice<T> value) nonPositiveValue,
    required TResult Function(NumberOutsideInterval<T> value)
        numberOutsideInterval,
    required TResult Function(ListTooLong<T> value) listTooLong,
    required TResult Function(ListTooShort<T> value) listTooShort,
    required TResult Function(EmptyList<T> value) emptyList,
  }) {
    return multiline(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(StringTooShort<T> value)? stringTooShort,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(NoPhotoSelected<T> value)? noPhotoSelected,
    TResult Function(NonPositivePrice<T> value)? nonPositiveValue,
    TResult Function(NumberOutsideInterval<T> value)? numberOutsideInterval,
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(ListTooShort<T> value)? listTooShort,
    TResult Function(EmptyList<T> value)? emptyList,
  }) {
    return multiline?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(StringTooShort<T> value)? stringTooShort,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(NoPhotoSelected<T> value)? noPhotoSelected,
    TResult Function(NonPositivePrice<T> value)? nonPositiveValue,
    TResult Function(NumberOutsideInterval<T> value)? numberOutsideInterval,
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(ListTooShort<T> value)? listTooShort,
    TResult Function(EmptyList<T> value)? emptyList,
    required TResult orElse(),
  }) {
    if (multiline != null) {
      return multiline(this);
    }
    return orElse();
  }
}

abstract class Multiline<T> implements ProductValueFailure<T> {
  const factory Multiline({required T failedValue}) = _$Multiline<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  $MultilineCopyWith<T, Multiline<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoPhotoSelectedCopyWith<T, $Res>
    implements $ProductValueFailureCopyWith<T, $Res> {
  factory $NoPhotoSelectedCopyWith(
          NoPhotoSelected<T> value, $Res Function(NoPhotoSelected<T>) then) =
      _$NoPhotoSelectedCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$NoPhotoSelectedCopyWithImpl<T, $Res>
    extends _$ProductValueFailureCopyWithImpl<T, $Res>
    implements $NoPhotoSelectedCopyWith<T, $Res> {
  _$NoPhotoSelectedCopyWithImpl(
      NoPhotoSelected<T> _value, $Res Function(NoPhotoSelected<T>) _then)
      : super(_value, (v) => _then(v as NoPhotoSelected<T>));

  @override
  NoPhotoSelected<T> get _value => super._value as NoPhotoSelected<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(NoPhotoSelected<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$NoPhotoSelected<T> implements NoPhotoSelected<T> {
  const _$NoPhotoSelected({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ProductValueFailure<$T>.noPhotoSelected(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NoPhotoSelected<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  $NoPhotoSelectedCopyWith<T, NoPhotoSelected<T>> get copyWith =>
      _$NoPhotoSelectedCopyWithImpl<T, NoPhotoSelected<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int maxLength) exceedingLength,
    required TResult Function(T failedValue, int minLength) stringTooShort,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) multiline,
    required TResult Function(T failedValue) noPhotoSelected,
    required TResult Function(T failedValue) nonPositiveValue,
    required TResult Function(T failedValue, num min, num max)
        numberOutsideInterval,
    required TResult Function(T failedValue, int maxLength) listTooLong,
    required TResult Function(T failedValue, int minLength) listTooShort,
    required TResult Function(T failedValue, int minLength) emptyList,
  }) {
    return noPhotoSelected(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue, int minLength)? stringTooShort,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue)? noPhotoSelected,
    TResult Function(T failedValue)? nonPositiveValue,
    TResult Function(T failedValue, num min, num max)? numberOutsideInterval,
    TResult Function(T failedValue, int maxLength)? listTooLong,
    TResult Function(T failedValue, int minLength)? listTooShort,
    TResult Function(T failedValue, int minLength)? emptyList,
  }) {
    return noPhotoSelected?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue, int minLength)? stringTooShort,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue)? noPhotoSelected,
    TResult Function(T failedValue)? nonPositiveValue,
    TResult Function(T failedValue, num min, num max)? numberOutsideInterval,
    TResult Function(T failedValue, int maxLength)? listTooLong,
    TResult Function(T failedValue, int minLength)? listTooShort,
    TResult Function(T failedValue, int minLength)? emptyList,
    required TResult orElse(),
  }) {
    if (noPhotoSelected != null) {
      return noPhotoSelected(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(StringTooShort<T> value) stringTooShort,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(NoPhotoSelected<T> value) noPhotoSelected,
    required TResult Function(NonPositivePrice<T> value) nonPositiveValue,
    required TResult Function(NumberOutsideInterval<T> value)
        numberOutsideInterval,
    required TResult Function(ListTooLong<T> value) listTooLong,
    required TResult Function(ListTooShort<T> value) listTooShort,
    required TResult Function(EmptyList<T> value) emptyList,
  }) {
    return noPhotoSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(StringTooShort<T> value)? stringTooShort,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(NoPhotoSelected<T> value)? noPhotoSelected,
    TResult Function(NonPositivePrice<T> value)? nonPositiveValue,
    TResult Function(NumberOutsideInterval<T> value)? numberOutsideInterval,
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(ListTooShort<T> value)? listTooShort,
    TResult Function(EmptyList<T> value)? emptyList,
  }) {
    return noPhotoSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(StringTooShort<T> value)? stringTooShort,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(NoPhotoSelected<T> value)? noPhotoSelected,
    TResult Function(NonPositivePrice<T> value)? nonPositiveValue,
    TResult Function(NumberOutsideInterval<T> value)? numberOutsideInterval,
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(ListTooShort<T> value)? listTooShort,
    TResult Function(EmptyList<T> value)? emptyList,
    required TResult orElse(),
  }) {
    if (noPhotoSelected != null) {
      return noPhotoSelected(this);
    }
    return orElse();
  }
}

abstract class NoPhotoSelected<T> implements ProductValueFailure<T> {
  const factory NoPhotoSelected({required T failedValue}) =
      _$NoPhotoSelected<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  $NoPhotoSelectedCopyWith<T, NoPhotoSelected<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NonPositivePriceCopyWith<T, $Res>
    implements $ProductValueFailureCopyWith<T, $Res> {
  factory $NonPositivePriceCopyWith(
          NonPositivePrice<T> value, $Res Function(NonPositivePrice<T>) then) =
      _$NonPositivePriceCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$NonPositivePriceCopyWithImpl<T, $Res>
    extends _$ProductValueFailureCopyWithImpl<T, $Res>
    implements $NonPositivePriceCopyWith<T, $Res> {
  _$NonPositivePriceCopyWithImpl(
      NonPositivePrice<T> _value, $Res Function(NonPositivePrice<T>) _then)
      : super(_value, (v) => _then(v as NonPositivePrice<T>));

  @override
  NonPositivePrice<T> get _value => super._value as NonPositivePrice<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(NonPositivePrice<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$NonPositivePrice<T> implements NonPositivePrice<T> {
  const _$NonPositivePrice({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ProductValueFailure<$T>.nonPositiveValue(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NonPositivePrice<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  $NonPositivePriceCopyWith<T, NonPositivePrice<T>> get copyWith =>
      _$NonPositivePriceCopyWithImpl<T, NonPositivePrice<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int maxLength) exceedingLength,
    required TResult Function(T failedValue, int minLength) stringTooShort,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) multiline,
    required TResult Function(T failedValue) noPhotoSelected,
    required TResult Function(T failedValue) nonPositiveValue,
    required TResult Function(T failedValue, num min, num max)
        numberOutsideInterval,
    required TResult Function(T failedValue, int maxLength) listTooLong,
    required TResult Function(T failedValue, int minLength) listTooShort,
    required TResult Function(T failedValue, int minLength) emptyList,
  }) {
    return nonPositiveValue(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue, int minLength)? stringTooShort,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue)? noPhotoSelected,
    TResult Function(T failedValue)? nonPositiveValue,
    TResult Function(T failedValue, num min, num max)? numberOutsideInterval,
    TResult Function(T failedValue, int maxLength)? listTooLong,
    TResult Function(T failedValue, int minLength)? listTooShort,
    TResult Function(T failedValue, int minLength)? emptyList,
  }) {
    return nonPositiveValue?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue, int minLength)? stringTooShort,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue)? noPhotoSelected,
    TResult Function(T failedValue)? nonPositiveValue,
    TResult Function(T failedValue, num min, num max)? numberOutsideInterval,
    TResult Function(T failedValue, int maxLength)? listTooLong,
    TResult Function(T failedValue, int minLength)? listTooShort,
    TResult Function(T failedValue, int minLength)? emptyList,
    required TResult orElse(),
  }) {
    if (nonPositiveValue != null) {
      return nonPositiveValue(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(StringTooShort<T> value) stringTooShort,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(NoPhotoSelected<T> value) noPhotoSelected,
    required TResult Function(NonPositivePrice<T> value) nonPositiveValue,
    required TResult Function(NumberOutsideInterval<T> value)
        numberOutsideInterval,
    required TResult Function(ListTooLong<T> value) listTooLong,
    required TResult Function(ListTooShort<T> value) listTooShort,
    required TResult Function(EmptyList<T> value) emptyList,
  }) {
    return nonPositiveValue(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(StringTooShort<T> value)? stringTooShort,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(NoPhotoSelected<T> value)? noPhotoSelected,
    TResult Function(NonPositivePrice<T> value)? nonPositiveValue,
    TResult Function(NumberOutsideInterval<T> value)? numberOutsideInterval,
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(ListTooShort<T> value)? listTooShort,
    TResult Function(EmptyList<T> value)? emptyList,
  }) {
    return nonPositiveValue?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(StringTooShort<T> value)? stringTooShort,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(NoPhotoSelected<T> value)? noPhotoSelected,
    TResult Function(NonPositivePrice<T> value)? nonPositiveValue,
    TResult Function(NumberOutsideInterval<T> value)? numberOutsideInterval,
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(ListTooShort<T> value)? listTooShort,
    TResult Function(EmptyList<T> value)? emptyList,
    required TResult orElse(),
  }) {
    if (nonPositiveValue != null) {
      return nonPositiveValue(this);
    }
    return orElse();
  }
}

abstract class NonPositivePrice<T> implements ProductValueFailure<T> {
  const factory NonPositivePrice({required T failedValue}) =
      _$NonPositivePrice<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  $NonPositivePriceCopyWith<T, NonPositivePrice<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NumberOutsideIntervalCopyWith<T, $Res>
    implements $ProductValueFailureCopyWith<T, $Res> {
  factory $NumberOutsideIntervalCopyWith(NumberOutsideInterval<T> value,
          $Res Function(NumberOutsideInterval<T>) then) =
      _$NumberOutsideIntervalCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue, num min, num max});
}

/// @nodoc
class _$NumberOutsideIntervalCopyWithImpl<T, $Res>
    extends _$ProductValueFailureCopyWithImpl<T, $Res>
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
    return 'ProductValueFailure<$T>.numberOutsideInterval(failedValue: $failedValue, min: $min, max: $max)';
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
    required TResult Function(T failedValue, int maxLength) exceedingLength,
    required TResult Function(T failedValue, int minLength) stringTooShort,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) multiline,
    required TResult Function(T failedValue) noPhotoSelected,
    required TResult Function(T failedValue) nonPositiveValue,
    required TResult Function(T failedValue, num min, num max)
        numberOutsideInterval,
    required TResult Function(T failedValue, int maxLength) listTooLong,
    required TResult Function(T failedValue, int minLength) listTooShort,
    required TResult Function(T failedValue, int minLength) emptyList,
  }) {
    return numberOutsideInterval(failedValue, min, max);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue, int minLength)? stringTooShort,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue)? noPhotoSelected,
    TResult Function(T failedValue)? nonPositiveValue,
    TResult Function(T failedValue, num min, num max)? numberOutsideInterval,
    TResult Function(T failedValue, int maxLength)? listTooLong,
    TResult Function(T failedValue, int minLength)? listTooShort,
    TResult Function(T failedValue, int minLength)? emptyList,
  }) {
    return numberOutsideInterval?.call(failedValue, min, max);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue, int minLength)? stringTooShort,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue)? noPhotoSelected,
    TResult Function(T failedValue)? nonPositiveValue,
    TResult Function(T failedValue, num min, num max)? numberOutsideInterval,
    TResult Function(T failedValue, int maxLength)? listTooLong,
    TResult Function(T failedValue, int minLength)? listTooShort,
    TResult Function(T failedValue, int minLength)? emptyList,
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
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(StringTooShort<T> value) stringTooShort,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(NoPhotoSelected<T> value) noPhotoSelected,
    required TResult Function(NonPositivePrice<T> value) nonPositiveValue,
    required TResult Function(NumberOutsideInterval<T> value)
        numberOutsideInterval,
    required TResult Function(ListTooLong<T> value) listTooLong,
    required TResult Function(ListTooShort<T> value) listTooShort,
    required TResult Function(EmptyList<T> value) emptyList,
  }) {
    return numberOutsideInterval(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(StringTooShort<T> value)? stringTooShort,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(NoPhotoSelected<T> value)? noPhotoSelected,
    TResult Function(NonPositivePrice<T> value)? nonPositiveValue,
    TResult Function(NumberOutsideInterval<T> value)? numberOutsideInterval,
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(ListTooShort<T> value)? listTooShort,
    TResult Function(EmptyList<T> value)? emptyList,
  }) {
    return numberOutsideInterval?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(StringTooShort<T> value)? stringTooShort,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(NoPhotoSelected<T> value)? noPhotoSelected,
    TResult Function(NonPositivePrice<T> value)? nonPositiveValue,
    TResult Function(NumberOutsideInterval<T> value)? numberOutsideInterval,
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(ListTooShort<T> value)? listTooShort,
    TResult Function(EmptyList<T> value)? emptyList,
    required TResult orElse(),
  }) {
    if (numberOutsideInterval != null) {
      return numberOutsideInterval(this);
    }
    return orElse();
  }
}

abstract class NumberOutsideInterval<T> implements ProductValueFailure<T> {
  const factory NumberOutsideInterval(
      {required T failedValue,
      required num min,
      required num max}) = _$NumberOutsideInterval<T>;

  @override
  T get failedValue;
  num get min;
  num get max;
  @override
  @JsonKey(ignore: true)
  $NumberOutsideIntervalCopyWith<T, NumberOutsideInterval<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListTooLongCopyWith<T, $Res>
    implements $ProductValueFailureCopyWith<T, $Res> {
  factory $ListTooLongCopyWith(
          ListTooLong<T> value, $Res Function(ListTooLong<T>) then) =
      _$ListTooLongCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue, int maxLength});
}

/// @nodoc
class _$ListTooLongCopyWithImpl<T, $Res>
    extends _$ProductValueFailureCopyWithImpl<T, $Res>
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
    return 'ProductValueFailure<$T>.listTooLong(failedValue: $failedValue, maxLength: $maxLength)';
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
    required TResult Function(T failedValue, int maxLength) exceedingLength,
    required TResult Function(T failedValue, int minLength) stringTooShort,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) multiline,
    required TResult Function(T failedValue) noPhotoSelected,
    required TResult Function(T failedValue) nonPositiveValue,
    required TResult Function(T failedValue, num min, num max)
        numberOutsideInterval,
    required TResult Function(T failedValue, int maxLength) listTooLong,
    required TResult Function(T failedValue, int minLength) listTooShort,
    required TResult Function(T failedValue, int minLength) emptyList,
  }) {
    return listTooLong(failedValue, maxLength);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue, int minLength)? stringTooShort,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue)? noPhotoSelected,
    TResult Function(T failedValue)? nonPositiveValue,
    TResult Function(T failedValue, num min, num max)? numberOutsideInterval,
    TResult Function(T failedValue, int maxLength)? listTooLong,
    TResult Function(T failedValue, int minLength)? listTooShort,
    TResult Function(T failedValue, int minLength)? emptyList,
  }) {
    return listTooLong?.call(failedValue, maxLength);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue, int minLength)? stringTooShort,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue)? noPhotoSelected,
    TResult Function(T failedValue)? nonPositiveValue,
    TResult Function(T failedValue, num min, num max)? numberOutsideInterval,
    TResult Function(T failedValue, int maxLength)? listTooLong,
    TResult Function(T failedValue, int minLength)? listTooShort,
    TResult Function(T failedValue, int minLength)? emptyList,
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
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(StringTooShort<T> value) stringTooShort,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(NoPhotoSelected<T> value) noPhotoSelected,
    required TResult Function(NonPositivePrice<T> value) nonPositiveValue,
    required TResult Function(NumberOutsideInterval<T> value)
        numberOutsideInterval,
    required TResult Function(ListTooLong<T> value) listTooLong,
    required TResult Function(ListTooShort<T> value) listTooShort,
    required TResult Function(EmptyList<T> value) emptyList,
  }) {
    return listTooLong(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(StringTooShort<T> value)? stringTooShort,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(NoPhotoSelected<T> value)? noPhotoSelected,
    TResult Function(NonPositivePrice<T> value)? nonPositiveValue,
    TResult Function(NumberOutsideInterval<T> value)? numberOutsideInterval,
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(ListTooShort<T> value)? listTooShort,
    TResult Function(EmptyList<T> value)? emptyList,
  }) {
    return listTooLong?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(StringTooShort<T> value)? stringTooShort,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(NoPhotoSelected<T> value)? noPhotoSelected,
    TResult Function(NonPositivePrice<T> value)? nonPositiveValue,
    TResult Function(NumberOutsideInterval<T> value)? numberOutsideInterval,
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(ListTooShort<T> value)? listTooShort,
    TResult Function(EmptyList<T> value)? emptyList,
    required TResult orElse(),
  }) {
    if (listTooLong != null) {
      return listTooLong(this);
    }
    return orElse();
  }
}

abstract class ListTooLong<T> implements ProductValueFailure<T> {
  const factory ListTooLong({required T failedValue, required int maxLength}) =
      _$ListTooLong<T>;

  @override
  T get failedValue;
  int get maxLength;
  @override
  @JsonKey(ignore: true)
  $ListTooLongCopyWith<T, ListTooLong<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListTooShortCopyWith<T, $Res>
    implements $ProductValueFailureCopyWith<T, $Res> {
  factory $ListTooShortCopyWith(
          ListTooShort<T> value, $Res Function(ListTooShort<T>) then) =
      _$ListTooShortCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue, int minLength});
}

/// @nodoc
class _$ListTooShortCopyWithImpl<T, $Res>
    extends _$ProductValueFailureCopyWithImpl<T, $Res>
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
    return 'ProductValueFailure<$T>.listTooShort(failedValue: $failedValue, minLength: $minLength)';
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
    required TResult Function(T failedValue, int maxLength) exceedingLength,
    required TResult Function(T failedValue, int minLength) stringTooShort,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) multiline,
    required TResult Function(T failedValue) noPhotoSelected,
    required TResult Function(T failedValue) nonPositiveValue,
    required TResult Function(T failedValue, num min, num max)
        numberOutsideInterval,
    required TResult Function(T failedValue, int maxLength) listTooLong,
    required TResult Function(T failedValue, int minLength) listTooShort,
    required TResult Function(T failedValue, int minLength) emptyList,
  }) {
    return listTooShort(failedValue, minLength);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue, int minLength)? stringTooShort,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue)? noPhotoSelected,
    TResult Function(T failedValue)? nonPositiveValue,
    TResult Function(T failedValue, num min, num max)? numberOutsideInterval,
    TResult Function(T failedValue, int maxLength)? listTooLong,
    TResult Function(T failedValue, int minLength)? listTooShort,
    TResult Function(T failedValue, int minLength)? emptyList,
  }) {
    return listTooShort?.call(failedValue, minLength);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue, int minLength)? stringTooShort,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue)? noPhotoSelected,
    TResult Function(T failedValue)? nonPositiveValue,
    TResult Function(T failedValue, num min, num max)? numberOutsideInterval,
    TResult Function(T failedValue, int maxLength)? listTooLong,
    TResult Function(T failedValue, int minLength)? listTooShort,
    TResult Function(T failedValue, int minLength)? emptyList,
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
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(StringTooShort<T> value) stringTooShort,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(NoPhotoSelected<T> value) noPhotoSelected,
    required TResult Function(NonPositivePrice<T> value) nonPositiveValue,
    required TResult Function(NumberOutsideInterval<T> value)
        numberOutsideInterval,
    required TResult Function(ListTooLong<T> value) listTooLong,
    required TResult Function(ListTooShort<T> value) listTooShort,
    required TResult Function(EmptyList<T> value) emptyList,
  }) {
    return listTooShort(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(StringTooShort<T> value)? stringTooShort,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(NoPhotoSelected<T> value)? noPhotoSelected,
    TResult Function(NonPositivePrice<T> value)? nonPositiveValue,
    TResult Function(NumberOutsideInterval<T> value)? numberOutsideInterval,
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(ListTooShort<T> value)? listTooShort,
    TResult Function(EmptyList<T> value)? emptyList,
  }) {
    return listTooShort?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(StringTooShort<T> value)? stringTooShort,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(NoPhotoSelected<T> value)? noPhotoSelected,
    TResult Function(NonPositivePrice<T> value)? nonPositiveValue,
    TResult Function(NumberOutsideInterval<T> value)? numberOutsideInterval,
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(ListTooShort<T> value)? listTooShort,
    TResult Function(EmptyList<T> value)? emptyList,
    required TResult orElse(),
  }) {
    if (listTooShort != null) {
      return listTooShort(this);
    }
    return orElse();
  }
}

abstract class ListTooShort<T> implements ProductValueFailure<T> {
  const factory ListTooShort({required T failedValue, required int minLength}) =
      _$ListTooShort<T>;

  @override
  T get failedValue;
  int get minLength;
  @override
  @JsonKey(ignore: true)
  $ListTooShortCopyWith<T, ListTooShort<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmptyListCopyWith<T, $Res>
    implements $ProductValueFailureCopyWith<T, $Res> {
  factory $EmptyListCopyWith(
          EmptyList<T> value, $Res Function(EmptyList<T>) then) =
      _$EmptyListCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue, int minLength});
}

/// @nodoc
class _$EmptyListCopyWithImpl<T, $Res>
    extends _$ProductValueFailureCopyWithImpl<T, $Res>
    implements $EmptyListCopyWith<T, $Res> {
  _$EmptyListCopyWithImpl(
      EmptyList<T> _value, $Res Function(EmptyList<T>) _then)
      : super(_value, (v) => _then(v as EmptyList<T>));

  @override
  EmptyList<T> get _value => super._value as EmptyList<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
    Object? minLength = freezed,
  }) {
    return _then(EmptyList<T>(
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

class _$EmptyList<T> implements EmptyList<T> {
  const _$EmptyList({required this.failedValue, required this.minLength});

  @override
  final T failedValue;
  @override
  final int minLength;

  @override
  String toString() {
    return 'ProductValueFailure<$T>.emptyList(failedValue: $failedValue, minLength: $minLength)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EmptyList<T> &&
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
  $EmptyListCopyWith<T, EmptyList<T>> get copyWith =>
      _$EmptyListCopyWithImpl<T, EmptyList<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int maxLength) exceedingLength,
    required TResult Function(T failedValue, int minLength) stringTooShort,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) multiline,
    required TResult Function(T failedValue) noPhotoSelected,
    required TResult Function(T failedValue) nonPositiveValue,
    required TResult Function(T failedValue, num min, num max)
        numberOutsideInterval,
    required TResult Function(T failedValue, int maxLength) listTooLong,
    required TResult Function(T failedValue, int minLength) listTooShort,
    required TResult Function(T failedValue, int minLength) emptyList,
  }) {
    return emptyList(failedValue, minLength);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue, int minLength)? stringTooShort,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue)? noPhotoSelected,
    TResult Function(T failedValue)? nonPositiveValue,
    TResult Function(T failedValue, num min, num max)? numberOutsideInterval,
    TResult Function(T failedValue, int maxLength)? listTooLong,
    TResult Function(T failedValue, int minLength)? listTooShort,
    TResult Function(T failedValue, int minLength)? emptyList,
  }) {
    return emptyList?.call(failedValue, minLength);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue, int minLength)? stringTooShort,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue)? noPhotoSelected,
    TResult Function(T failedValue)? nonPositiveValue,
    TResult Function(T failedValue, num min, num max)? numberOutsideInterval,
    TResult Function(T failedValue, int maxLength)? listTooLong,
    TResult Function(T failedValue, int minLength)? listTooShort,
    TResult Function(T failedValue, int minLength)? emptyList,
    required TResult orElse(),
  }) {
    if (emptyList != null) {
      return emptyList(failedValue, minLength);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(StringTooShort<T> value) stringTooShort,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(NoPhotoSelected<T> value) noPhotoSelected,
    required TResult Function(NonPositivePrice<T> value) nonPositiveValue,
    required TResult Function(NumberOutsideInterval<T> value)
        numberOutsideInterval,
    required TResult Function(ListTooLong<T> value) listTooLong,
    required TResult Function(ListTooShort<T> value) listTooShort,
    required TResult Function(EmptyList<T> value) emptyList,
  }) {
    return emptyList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(StringTooShort<T> value)? stringTooShort,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(NoPhotoSelected<T> value)? noPhotoSelected,
    TResult Function(NonPositivePrice<T> value)? nonPositiveValue,
    TResult Function(NumberOutsideInterval<T> value)? numberOutsideInterval,
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(ListTooShort<T> value)? listTooShort,
    TResult Function(EmptyList<T> value)? emptyList,
  }) {
    return emptyList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(StringTooShort<T> value)? stringTooShort,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(NoPhotoSelected<T> value)? noPhotoSelected,
    TResult Function(NonPositivePrice<T> value)? nonPositiveValue,
    TResult Function(NumberOutsideInterval<T> value)? numberOutsideInterval,
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(ListTooShort<T> value)? listTooShort,
    TResult Function(EmptyList<T> value)? emptyList,
    required TResult orElse(),
  }) {
    if (emptyList != null) {
      return emptyList(this);
    }
    return orElse();
  }
}

abstract class EmptyList<T> implements ProductValueFailure<T> {
  const factory EmptyList({required T failedValue, required int minLength}) =
      _$EmptyList<T>;

  @override
  T get failedValue;
  int get minLength;
  @override
  @JsonKey(ignore: true)
  $EmptyListCopyWith<T, EmptyList<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
