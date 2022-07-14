// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'order_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OrderWatcherState {
  KtList<ShopifyOrder> get orders => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  Option<OrderFailure> get failureOption => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrderWatcherStateCopyWith<OrderWatcherState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderWatcherStateCopyWith<$Res> {
  factory $OrderWatcherStateCopyWith(
          OrderWatcherState value, $Res Function(OrderWatcherState) then) =
      _$OrderWatcherStateCopyWithImpl<$Res>;
  $Res call(
      {KtList<ShopifyOrder> orders,
      bool isLoading,
      Option<OrderFailure> failureOption});
}

/// @nodoc
class _$OrderWatcherStateCopyWithImpl<$Res>
    implements $OrderWatcherStateCopyWith<$Res> {
  _$OrderWatcherStateCopyWithImpl(this._value, this._then);

  final OrderWatcherState _value;
  // ignore: unused_field
  final $Res Function(OrderWatcherState) _then;

  @override
  $Res call({
    Object? orders = freezed,
    Object? isLoading = freezed,
    Object? failureOption = freezed,
  }) {
    return _then(_value.copyWith(
      orders: orders == freezed
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as KtList<ShopifyOrder>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOption: failureOption == freezed
          ? _value.failureOption
          : failureOption // ignore: cast_nullable_to_non_nullable
              as Option<OrderFailure>,
    ));
  }
}

/// @nodoc
abstract class _$$_OrderWatcherStateCopyWith<$Res>
    implements $OrderWatcherStateCopyWith<$Res> {
  factory _$$_OrderWatcherStateCopyWith(_$_OrderWatcherState value,
          $Res Function(_$_OrderWatcherState) then) =
      __$$_OrderWatcherStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {KtList<ShopifyOrder> orders,
      bool isLoading,
      Option<OrderFailure> failureOption});
}

/// @nodoc
class __$$_OrderWatcherStateCopyWithImpl<$Res>
    extends _$OrderWatcherStateCopyWithImpl<$Res>
    implements _$$_OrderWatcherStateCopyWith<$Res> {
  __$$_OrderWatcherStateCopyWithImpl(
      _$_OrderWatcherState _value, $Res Function(_$_OrderWatcherState) _then)
      : super(_value, (v) => _then(v as _$_OrderWatcherState));

  @override
  _$_OrderWatcherState get _value => super._value as _$_OrderWatcherState;

  @override
  $Res call({
    Object? orders = freezed,
    Object? isLoading = freezed,
    Object? failureOption = freezed,
  }) {
    return _then(_$_OrderWatcherState(
      orders: orders == freezed
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as KtList<ShopifyOrder>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOption: failureOption == freezed
          ? _value.failureOption
          : failureOption // ignore: cast_nullable_to_non_nullable
              as Option<OrderFailure>,
    ));
  }
}

/// @nodoc

class _$_OrderWatcherState implements _OrderWatcherState {
  const _$_OrderWatcherState(
      {required this.orders,
      required this.isLoading,
      required this.failureOption});

  @override
  final KtList<ShopifyOrder> orders;
  @override
  final bool isLoading;
  @override
  final Option<OrderFailure> failureOption;

  @override
  String toString() {
    return 'OrderWatcherState(orders: $orders, isLoading: $isLoading, failureOption: $failureOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderWatcherState &&
            const DeepCollectionEquality().equals(other.orders, orders) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.failureOption, failureOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(orders),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(failureOption));

  @JsonKey(ignore: true)
  @override
  _$$_OrderWatcherStateCopyWith<_$_OrderWatcherState> get copyWith =>
      __$$_OrderWatcherStateCopyWithImpl<_$_OrderWatcherState>(
          this, _$identity);
}

abstract class _OrderWatcherState implements OrderWatcherState {
  const factory _OrderWatcherState(
          {required final KtList<ShopifyOrder> orders,
          required final bool isLoading,
          required final Option<OrderFailure> failureOption}) =
      _$_OrderWatcherState;

  @override
  KtList<ShopifyOrder> get orders => throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  Option<OrderFailure> get failureOption => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_OrderWatcherStateCopyWith<_$_OrderWatcherState> get copyWith =>
      throw _privateConstructorUsedError;
}
