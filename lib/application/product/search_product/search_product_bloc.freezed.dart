// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_product_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SearchProductStateTearOff {
  const _$SearchProductStateTearOff();

  _SearchProductState call(
      {required bool isLoading,
      required Option<ProductFailure> failureOption,
      required Option<Product> productOption,
      required bool productExists}) {
    return _SearchProductState(
      isLoading: isLoading,
      failureOption: failureOption,
      productOption: productOption,
      productExists: productExists,
    );
  }
}

/// @nodoc
const $SearchProductState = _$SearchProductStateTearOff();

/// @nodoc
mixin _$SearchProductState {
  bool get isLoading => throw _privateConstructorUsedError;
  Option<ProductFailure> get failureOption =>
      throw _privateConstructorUsedError;
  Option<Product> get productOption => throw _privateConstructorUsedError;
  bool get productExists => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchProductStateCopyWith<SearchProductState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchProductStateCopyWith<$Res> {
  factory $SearchProductStateCopyWith(
          SearchProductState value, $Res Function(SearchProductState) then) =
      _$SearchProductStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      Option<ProductFailure> failureOption,
      Option<Product> productOption,
      bool productExists});
}

/// @nodoc
class _$SearchProductStateCopyWithImpl<$Res>
    implements $SearchProductStateCopyWith<$Res> {
  _$SearchProductStateCopyWithImpl(this._value, this._then);

  final SearchProductState _value;
  // ignore: unused_field
  final $Res Function(SearchProductState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? failureOption = freezed,
    Object? productOption = freezed,
    Object? productExists = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOption: failureOption == freezed
          ? _value.failureOption
          : failureOption // ignore: cast_nullable_to_non_nullable
              as Option<ProductFailure>,
      productOption: productOption == freezed
          ? _value.productOption
          : productOption // ignore: cast_nullable_to_non_nullable
              as Option<Product>,
      productExists: productExists == freezed
          ? _value.productExists
          : productExists // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$SearchProductStateCopyWith<$Res>
    implements $SearchProductStateCopyWith<$Res> {
  factory _$SearchProductStateCopyWith(
          _SearchProductState value, $Res Function(_SearchProductState) then) =
      __$SearchProductStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      Option<ProductFailure> failureOption,
      Option<Product> productOption,
      bool productExists});
}

/// @nodoc
class __$SearchProductStateCopyWithImpl<$Res>
    extends _$SearchProductStateCopyWithImpl<$Res>
    implements _$SearchProductStateCopyWith<$Res> {
  __$SearchProductStateCopyWithImpl(
      _SearchProductState _value, $Res Function(_SearchProductState) _then)
      : super(_value, (v) => _then(v as _SearchProductState));

  @override
  _SearchProductState get _value => super._value as _SearchProductState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? failureOption = freezed,
    Object? productOption = freezed,
    Object? productExists = freezed,
  }) {
    return _then(_SearchProductState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOption: failureOption == freezed
          ? _value.failureOption
          : failureOption // ignore: cast_nullable_to_non_nullable
              as Option<ProductFailure>,
      productOption: productOption == freezed
          ? _value.productOption
          : productOption // ignore: cast_nullable_to_non_nullable
              as Option<Product>,
      productExists: productExists == freezed
          ? _value.productExists
          : productExists // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SearchProductState implements _SearchProductState {
  const _$_SearchProductState(
      {required this.isLoading,
      required this.failureOption,
      required this.productOption,
      required this.productExists});

  @override
  final bool isLoading;
  @override
  final Option<ProductFailure> failureOption;
  @override
  final Option<Product> productOption;
  @override
  final bool productExists;

  @override
  String toString() {
    return 'SearchProductState(isLoading: $isLoading, failureOption: $failureOption, productOption: $productOption, productExists: $productExists)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SearchProductState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.failureOption, failureOption) &&
            const DeepCollectionEquality()
                .equals(other.productOption, productOption) &&
            const DeepCollectionEquality()
                .equals(other.productExists, productExists));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(failureOption),
      const DeepCollectionEquality().hash(productOption),
      const DeepCollectionEquality().hash(productExists));

  @JsonKey(ignore: true)
  @override
  _$SearchProductStateCopyWith<_SearchProductState> get copyWith =>
      __$SearchProductStateCopyWithImpl<_SearchProductState>(this, _$identity);
}

abstract class _SearchProductState implements SearchProductState {
  const factory _SearchProductState(
      {required bool isLoading,
      required Option<ProductFailure> failureOption,
      required Option<Product> productOption,
      required bool productExists}) = _$_SearchProductState;

  @override
  bool get isLoading;
  @override
  Option<ProductFailure> get failureOption;
  @override
  Option<Product> get productOption;
  @override
  bool get productExists;
  @override
  @JsonKey(ignore: true)
  _$SearchProductStateCopyWith<_SearchProductState> get copyWith =>
      throw _privateConstructorUsedError;
}
