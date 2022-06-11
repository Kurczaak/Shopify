// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product_adder_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductAdderState {
  Product get product => throw _privateConstructorUsedError;
  List<Shop> get selectedShops => throw _privateConstructorUsedError;
  Price get price => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get showErrors => throw _privateConstructorUsedError;
  Option<Either<ProductFailure, Unit>> get saveFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductAdderStateCopyWith<ProductAdderState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductAdderStateCopyWith<$Res> {
  factory $ProductAdderStateCopyWith(
          ProductAdderState value, $Res Function(ProductAdderState) then) =
      _$ProductAdderStateCopyWithImpl<$Res>;
  $Res call(
      {Product product,
      List<Shop> selectedShops,
      Price price,
      bool isLoading,
      bool showErrors,
      Option<Either<ProductFailure, Unit>> saveFailureOrSuccessOption});

  $ProductCopyWith<$Res> get product;
  $PriceCopyWith<$Res> get price;
}

/// @nodoc
class _$ProductAdderStateCopyWithImpl<$Res>
    implements $ProductAdderStateCopyWith<$Res> {
  _$ProductAdderStateCopyWithImpl(this._value, this._then);

  final ProductAdderState _value;
  // ignore: unused_field
  final $Res Function(ProductAdderState) _then;

  @override
  $Res call({
    Object? product = freezed,
    Object? selectedShops = freezed,
    Object? price = freezed,
    Object? isLoading = freezed,
    Object? showErrors = freezed,
    Object? saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
      selectedShops: selectedShops == freezed
          ? _value.selectedShops
          : selectedShops // ignore: cast_nullable_to_non_nullable
              as List<Shop>,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Price,
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
  $ProductCopyWith<$Res> get product {
    return $ProductCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value));
    });
  }

  @override
  $PriceCopyWith<$Res> get price {
    return $PriceCopyWith<$Res>(_value.price, (value) {
      return _then(_value.copyWith(price: value));
    });
  }
}

/// @nodoc
abstract class _$$_ProductAdderStateCopyWith<$Res>
    implements $ProductAdderStateCopyWith<$Res> {
  factory _$$_ProductAdderStateCopyWith(_$_ProductAdderState value,
          $Res Function(_$_ProductAdderState) then) =
      __$$_ProductAdderStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Product product,
      List<Shop> selectedShops,
      Price price,
      bool isLoading,
      bool showErrors,
      Option<Either<ProductFailure, Unit>> saveFailureOrSuccessOption});

  @override
  $ProductCopyWith<$Res> get product;
  @override
  $PriceCopyWith<$Res> get price;
}

/// @nodoc
class __$$_ProductAdderStateCopyWithImpl<$Res>
    extends _$ProductAdderStateCopyWithImpl<$Res>
    implements _$$_ProductAdderStateCopyWith<$Res> {
  __$$_ProductAdderStateCopyWithImpl(
      _$_ProductAdderState _value, $Res Function(_$_ProductAdderState) _then)
      : super(_value, (v) => _then(v as _$_ProductAdderState));

  @override
  _$_ProductAdderState get _value => super._value as _$_ProductAdderState;

  @override
  $Res call({
    Object? product = freezed,
    Object? selectedShops = freezed,
    Object? price = freezed,
    Object? isLoading = freezed,
    Object? showErrors = freezed,
    Object? saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_$_ProductAdderState(
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
      selectedShops: selectedShops == freezed
          ? _value._selectedShops
          : selectedShops // ignore: cast_nullable_to_non_nullable
              as List<Shop>,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Price,
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

class _$_ProductAdderState implements _ProductAdderState {
  const _$_ProductAdderState(
      {required this.product,
      required final List<Shop> selectedShops,
      required this.price,
      required this.isLoading,
      required this.showErrors,
      required this.saveFailureOrSuccessOption})
      : _selectedShops = selectedShops;

  @override
  final Product product;
  final List<Shop> _selectedShops;
  @override
  List<Shop> get selectedShops {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedShops);
  }

  @override
  final Price price;
  @override
  final bool isLoading;
  @override
  final bool showErrors;
  @override
  final Option<Either<ProductFailure, Unit>> saveFailureOrSuccessOption;

  @override
  String toString() {
    return 'ProductAdderState(product: $product, selectedShops: $selectedShops, price: $price, isLoading: $isLoading, showErrors: $showErrors, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductAdderState &&
            const DeepCollectionEquality().equals(other.product, product) &&
            const DeepCollectionEquality()
                .equals(other._selectedShops, _selectedShops) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.showErrors, showErrors) &&
            const DeepCollectionEquality().equals(
                other.saveFailureOrSuccessOption, saveFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(product),
      const DeepCollectionEquality().hash(_selectedShops),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(showErrors),
      const DeepCollectionEquality().hash(saveFailureOrSuccessOption));

  @JsonKey(ignore: true)
  @override
  _$$_ProductAdderStateCopyWith<_$_ProductAdderState> get copyWith =>
      __$$_ProductAdderStateCopyWithImpl<_$_ProductAdderState>(
          this, _$identity);
}

abstract class _ProductAdderState implements ProductAdderState {
  const factory _ProductAdderState(
      {required final Product product,
      required final List<Shop> selectedShops,
      required final Price price,
      required final bool isLoading,
      required final bool showErrors,
      required final Option<Either<ProductFailure, Unit>>
          saveFailureOrSuccessOption}) = _$_ProductAdderState;

  @override
  Product get product => throw _privateConstructorUsedError;
  @override
  List<Shop> get selectedShops => throw _privateConstructorUsedError;
  @override
  Price get price => throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  bool get showErrors => throw _privateConstructorUsedError;
  @override
  Option<Either<ProductFailure, Unit>> get saveFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ProductAdderStateCopyWith<_$_ProductAdderState> get copyWith =>
      throw _privateConstructorUsedError;
}
