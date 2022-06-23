// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product_preview_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductPreviewState {
  Option<Shop> get shopOption => throw _privateConstructorUsedError;
  Option<Product> get productOption => throw _privateConstructorUsedError;
  bool get isFavourite => throw _privateConstructorUsedError;
  Option<ProductFailure> get failureOption =>
      throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductPreviewStateCopyWith<ProductPreviewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductPreviewStateCopyWith<$Res> {
  factory $ProductPreviewStateCopyWith(
          ProductPreviewState value, $Res Function(ProductPreviewState) then) =
      _$ProductPreviewStateCopyWithImpl<$Res>;
  $Res call(
      {Option<Shop> shopOption,
      Option<Product> productOption,
      bool isFavourite,
      Option<ProductFailure> failureOption,
      bool isLoading});
}

/// @nodoc
class _$ProductPreviewStateCopyWithImpl<$Res>
    implements $ProductPreviewStateCopyWith<$Res> {
  _$ProductPreviewStateCopyWithImpl(this._value, this._then);

  final ProductPreviewState _value;
  // ignore: unused_field
  final $Res Function(ProductPreviewState) _then;

  @override
  $Res call({
    Object? shopOption = freezed,
    Object? productOption = freezed,
    Object? isFavourite = freezed,
    Object? failureOption = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      shopOption: shopOption == freezed
          ? _value.shopOption
          : shopOption // ignore: cast_nullable_to_non_nullable
              as Option<Shop>,
      productOption: productOption == freezed
          ? _value.productOption
          : productOption // ignore: cast_nullable_to_non_nullable
              as Option<Product>,
      isFavourite: isFavourite == freezed
          ? _value.isFavourite
          : isFavourite // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOption: failureOption == freezed
          ? _value.failureOption
          : failureOption // ignore: cast_nullable_to_non_nullable
              as Option<ProductFailure>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_ProductPreviewStateCopyWith<$Res>
    implements $ProductPreviewStateCopyWith<$Res> {
  factory _$$_ProductPreviewStateCopyWith(_$_ProductPreviewState value,
          $Res Function(_$_ProductPreviewState) then) =
      __$$_ProductPreviewStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Option<Shop> shopOption,
      Option<Product> productOption,
      bool isFavourite,
      Option<ProductFailure> failureOption,
      bool isLoading});
}

/// @nodoc
class __$$_ProductPreviewStateCopyWithImpl<$Res>
    extends _$ProductPreviewStateCopyWithImpl<$Res>
    implements _$$_ProductPreviewStateCopyWith<$Res> {
  __$$_ProductPreviewStateCopyWithImpl(_$_ProductPreviewState _value,
      $Res Function(_$_ProductPreviewState) _then)
      : super(_value, (v) => _then(v as _$_ProductPreviewState));

  @override
  _$_ProductPreviewState get _value => super._value as _$_ProductPreviewState;

  @override
  $Res call({
    Object? shopOption = freezed,
    Object? productOption = freezed,
    Object? isFavourite = freezed,
    Object? failureOption = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_$_ProductPreviewState(
      shopOption: shopOption == freezed
          ? _value.shopOption
          : shopOption // ignore: cast_nullable_to_non_nullable
              as Option<Shop>,
      productOption: productOption == freezed
          ? _value.productOption
          : productOption // ignore: cast_nullable_to_non_nullable
              as Option<Product>,
      isFavourite: isFavourite == freezed
          ? _value.isFavourite
          : isFavourite // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOption: failureOption == freezed
          ? _value.failureOption
          : failureOption // ignore: cast_nullable_to_non_nullable
              as Option<ProductFailure>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ProductPreviewState implements _ProductPreviewState {
  const _$_ProductPreviewState(
      {required this.shopOption,
      required this.productOption,
      required this.isFavourite,
      required this.failureOption,
      required this.isLoading});

  @override
  final Option<Shop> shopOption;
  @override
  final Option<Product> productOption;
  @override
  final bool isFavourite;
  @override
  final Option<ProductFailure> failureOption;
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'ProductPreviewState(shopOption: $shopOption, productOption: $productOption, isFavourite: $isFavourite, failureOption: $failureOption, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductPreviewState &&
            const DeepCollectionEquality()
                .equals(other.shopOption, shopOption) &&
            const DeepCollectionEquality()
                .equals(other.productOption, productOption) &&
            const DeepCollectionEquality()
                .equals(other.isFavourite, isFavourite) &&
            const DeepCollectionEquality()
                .equals(other.failureOption, failureOption) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(shopOption),
      const DeepCollectionEquality().hash(productOption),
      const DeepCollectionEquality().hash(isFavourite),
      const DeepCollectionEquality().hash(failureOption),
      const DeepCollectionEquality().hash(isLoading));

  @JsonKey(ignore: true)
  @override
  _$$_ProductPreviewStateCopyWith<_$_ProductPreviewState> get copyWith =>
      __$$_ProductPreviewStateCopyWithImpl<_$_ProductPreviewState>(
          this, _$identity);
}

abstract class _ProductPreviewState implements ProductPreviewState {
  const factory _ProductPreviewState(
      {required final Option<Shop> shopOption,
      required final Option<Product> productOption,
      required final bool isFavourite,
      required final Option<ProductFailure> failureOption,
      required final bool isLoading}) = _$_ProductPreviewState;

  @override
  Option<Shop> get shopOption => throw _privateConstructorUsedError;
  @override
  Option<Product> get productOption => throw _privateConstructorUsedError;
  @override
  bool get isFavourite => throw _privateConstructorUsedError;
  @override
  Option<ProductFailure> get failureOption =>
      throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ProductPreviewStateCopyWith<_$_ProductPreviewState> get copyWith =>
      throw _privateConstructorUsedError;
}
