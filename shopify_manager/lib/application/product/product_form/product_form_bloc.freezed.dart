// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductFormState {
  ProductForm get productForm => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get showErrors => throw _privateConstructorUsedError;
  Option<Either<ProductFailure, Unit>> get saveFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductFormStateCopyWith<ProductFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductFormStateCopyWith<$Res> {
  factory $ProductFormStateCopyWith(
          ProductFormState value, $Res Function(ProductFormState) then) =
      _$ProductFormStateCopyWithImpl<$Res>;
  $Res call(
      {ProductForm productForm,
      bool isLoading,
      bool showErrors,
      Option<Either<ProductFailure, Unit>> saveFailureOrSuccessOption});

  $ProductFormCopyWith<$Res> get productForm;
}

/// @nodoc
class _$ProductFormStateCopyWithImpl<$Res>
    implements $ProductFormStateCopyWith<$Res> {
  _$ProductFormStateCopyWithImpl(this._value, this._then);

  final ProductFormState _value;
  // ignore: unused_field
  final $Res Function(ProductFormState) _then;

  @override
  $Res call({
    Object? productForm = freezed,
    Object? isLoading = freezed,
    Object? showErrors = freezed,
    Object? saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      productForm: productForm == freezed
          ? _value.productForm
          : productForm // ignore: cast_nullable_to_non_nullable
              as ProductForm,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrors: showErrors == freezed
          ? _value.showErrors
          : showErrors // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ProductFailure, Unit>>,
    ));
  }

  @override
  $ProductFormCopyWith<$Res> get productForm {
    return $ProductFormCopyWith<$Res>(_value.productForm, (value) {
      return _then(_value.copyWith(productForm: value));
    });
  }
}

/// @nodoc
abstract class _$$_ProductFormStateCopyWith<$Res>
    implements $ProductFormStateCopyWith<$Res> {
  factory _$$_ProductFormStateCopyWith(
          _$_ProductFormState value, $Res Function(_$_ProductFormState) then) =
      __$$_ProductFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {ProductForm productForm,
      bool isLoading,
      bool showErrors,
      Option<Either<ProductFailure, Unit>> saveFailureOrSuccessOption});

  @override
  $ProductFormCopyWith<$Res> get productForm;
}

/// @nodoc
class __$$_ProductFormStateCopyWithImpl<$Res>
    extends _$ProductFormStateCopyWithImpl<$Res>
    implements _$$_ProductFormStateCopyWith<$Res> {
  __$$_ProductFormStateCopyWithImpl(
      _$_ProductFormState _value, $Res Function(_$_ProductFormState) _then)
      : super(_value, (v) => _then(v as _$_ProductFormState));

  @override
  _$_ProductFormState get _value => super._value as _$_ProductFormState;

  @override
  $Res call({
    Object? productForm = freezed,
    Object? isLoading = freezed,
    Object? showErrors = freezed,
    Object? saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_$_ProductFormState(
      productForm: productForm == freezed
          ? _value.productForm
          : productForm // ignore: cast_nullable_to_non_nullable
              as ProductForm,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrors: showErrors == freezed
          ? _value.showErrors
          : showErrors // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ProductFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_ProductFormState implements _ProductFormState {
  const _$_ProductFormState(
      {required this.productForm,
      required this.isLoading,
      required this.showErrors,
      required this.saveFailureOrSuccessOption});

  @override
  final ProductForm productForm;
  @override
  final bool isLoading;
  @override
  final bool showErrors;
  @override
  final Option<Either<ProductFailure, Unit>> saveFailureOrSuccessOption;

  @override
  String toString() {
    return 'ProductFormState(productForm: $productForm, isLoading: $isLoading, showErrors: $showErrors, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductFormState &&
            const DeepCollectionEquality()
                .equals(other.productForm, productForm) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.showErrors, showErrors) &&
            const DeepCollectionEquality().equals(
                other.saveFailureOrSuccessOption, saveFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(productForm),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(showErrors),
      const DeepCollectionEquality().hash(saveFailureOrSuccessOption));

  @JsonKey(ignore: true)
  @override
  _$$_ProductFormStateCopyWith<_$_ProductFormState> get copyWith =>
      __$$_ProductFormStateCopyWithImpl<_$_ProductFormState>(this, _$identity);
}

abstract class _ProductFormState implements ProductFormState {
  const factory _ProductFormState(
      {required final ProductForm productForm,
      required final bool isLoading,
      required final bool showErrors,
      required final Option<Either<ProductFailure, Unit>>
          saveFailureOrSuccessOption}) = _$_ProductFormState;

  @override
  ProductForm get productForm => throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  bool get showErrors => throw _privateConstructorUsedError;
  @override
  Option<Either<ProductFailure, Unit>> get saveFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ProductFormStateCopyWith<_$_ProductFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
