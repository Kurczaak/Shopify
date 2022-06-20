// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductWatcherState {
  Option<Shop> get shopOption => throw _privateConstructorUsedError;
  Option<Category> get categoryOption => throw _privateConstructorUsedError;
  KtList<PricedProduct> get products => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductWatcherStateCopyWith<ProductWatcherState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductWatcherStateCopyWith<$Res> {
  factory $ProductWatcherStateCopyWith(
          ProductWatcherState value, $Res Function(ProductWatcherState) then) =
      _$ProductWatcherStateCopyWithImpl<$Res>;
  $Res call(
      {Option<Shop> shopOption,
      Option<Category> categoryOption,
      KtList<PricedProduct> products,
      int currentPage,
      bool isLoading});
}

/// @nodoc
class _$ProductWatcherStateCopyWithImpl<$Res>
    implements $ProductWatcherStateCopyWith<$Res> {
  _$ProductWatcherStateCopyWithImpl(this._value, this._then);

  final ProductWatcherState _value;
  // ignore: unused_field
  final $Res Function(ProductWatcherState) _then;

  @override
  $Res call({
    Object? shopOption = freezed,
    Object? categoryOption = freezed,
    Object? products = freezed,
    Object? currentPage = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      shopOption: shopOption == freezed
          ? _value.shopOption
          : shopOption // ignore: cast_nullable_to_non_nullable
              as Option<Shop>,
      categoryOption: categoryOption == freezed
          ? _value.categoryOption
          : categoryOption // ignore: cast_nullable_to_non_nullable
              as Option<Category>,
      products: products == freezed
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as KtList<PricedProduct>,
      currentPage: currentPage == freezed
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_ProductWatcherStateCopyWith<$Res>
    implements $ProductWatcherStateCopyWith<$Res> {
  factory _$$_ProductWatcherStateCopyWith(_$_ProductWatcherState value,
          $Res Function(_$_ProductWatcherState) then) =
      __$$_ProductWatcherStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Option<Shop> shopOption,
      Option<Category> categoryOption,
      KtList<PricedProduct> products,
      int currentPage,
      bool isLoading});
}

/// @nodoc
class __$$_ProductWatcherStateCopyWithImpl<$Res>
    extends _$ProductWatcherStateCopyWithImpl<$Res>
    implements _$$_ProductWatcherStateCopyWith<$Res> {
  __$$_ProductWatcherStateCopyWithImpl(_$_ProductWatcherState _value,
      $Res Function(_$_ProductWatcherState) _then)
      : super(_value, (v) => _then(v as _$_ProductWatcherState));

  @override
  _$_ProductWatcherState get _value => super._value as _$_ProductWatcherState;

  @override
  $Res call({
    Object? shopOption = freezed,
    Object? categoryOption = freezed,
    Object? products = freezed,
    Object? currentPage = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_$_ProductWatcherState(
      shopOption: shopOption == freezed
          ? _value.shopOption
          : shopOption // ignore: cast_nullable_to_non_nullable
              as Option<Shop>,
      categoryOption: categoryOption == freezed
          ? _value.categoryOption
          : categoryOption // ignore: cast_nullable_to_non_nullable
              as Option<Category>,
      products: products == freezed
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as KtList<PricedProduct>,
      currentPage: currentPage == freezed
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ProductWatcherState implements _ProductWatcherState {
  const _$_ProductWatcherState(
      {required this.shopOption,
      required this.categoryOption,
      required this.products,
      required this.currentPage,
      required this.isLoading});

  @override
  final Option<Shop> shopOption;
  @override
  final Option<Category> categoryOption;
  @override
  final KtList<PricedProduct> products;
  @override
  final int currentPage;
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'ProductWatcherState(shopOption: $shopOption, categoryOption: $categoryOption, products: $products, currentPage: $currentPage, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductWatcherState &&
            const DeepCollectionEquality()
                .equals(other.shopOption, shopOption) &&
            const DeepCollectionEquality()
                .equals(other.categoryOption, categoryOption) &&
            const DeepCollectionEquality().equals(other.products, products) &&
            const DeepCollectionEquality()
                .equals(other.currentPage, currentPage) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(shopOption),
      const DeepCollectionEquality().hash(categoryOption),
      const DeepCollectionEquality().hash(products),
      const DeepCollectionEquality().hash(currentPage),
      const DeepCollectionEquality().hash(isLoading));

  @JsonKey(ignore: true)
  @override
  _$$_ProductWatcherStateCopyWith<_$_ProductWatcherState> get copyWith =>
      __$$_ProductWatcherStateCopyWithImpl<_$_ProductWatcherState>(
          this, _$identity);
}

abstract class _ProductWatcherState implements ProductWatcherState {
  const factory _ProductWatcherState(
      {required final Option<Shop> shopOption,
      required final Option<Category> categoryOption,
      required final KtList<PricedProduct> products,
      required final int currentPage,
      required final bool isLoading}) = _$_ProductWatcherState;

  @override
  Option<Shop> get shopOption => throw _privateConstructorUsedError;
  @override
  Option<Category> get categoryOption => throw _privateConstructorUsedError;
  @override
  KtList<PricedProduct> get products => throw _privateConstructorUsedError;
  @override
  int get currentPage => throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ProductWatcherStateCopyWith<_$_ProductWatcherState> get copyWith =>
      throw _privateConstructorUsedError;
}
