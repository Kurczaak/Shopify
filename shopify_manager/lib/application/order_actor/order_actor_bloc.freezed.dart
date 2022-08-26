// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'order_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OrderActorState {
  bool get isLoading => throw _privateConstructorUsedError;
  OrderStatusEnum get orderStatus => throw _privateConstructorUsedError;
  Option<UniqueId> get orderIdOption => throw _privateConstructorUsedError;
  Option<OrderFailure> get failureOption => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrderActorStateCopyWith<OrderActorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderActorStateCopyWith<$Res> {
  factory $OrderActorStateCopyWith(
          OrderActorState value, $Res Function(OrderActorState) then) =
      _$OrderActorStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      OrderStatusEnum orderStatus,
      Option<UniqueId> orderIdOption,
      Option<OrderFailure> failureOption});
}

/// @nodoc
class _$OrderActorStateCopyWithImpl<$Res>
    implements $OrderActorStateCopyWith<$Res> {
  _$OrderActorStateCopyWithImpl(this._value, this._then);

  final OrderActorState _value;
  // ignore: unused_field
  final $Res Function(OrderActorState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? orderStatus = freezed,
    Object? orderIdOption = freezed,
    Object? failureOption = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      orderStatus: orderStatus == freezed
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
              as OrderStatusEnum,
      orderIdOption: orderIdOption == freezed
          ? _value.orderIdOption
          : orderIdOption // ignore: cast_nullable_to_non_nullable
              as Option<UniqueId>,
      failureOption: failureOption == freezed
          ? _value.failureOption
          : failureOption // ignore: cast_nullable_to_non_nullable
              as Option<OrderFailure>,
    ));
  }
}

/// @nodoc
abstract class _$$_OrderActorStateCopyWith<$Res>
    implements $OrderActorStateCopyWith<$Res> {
  factory _$$_OrderActorStateCopyWith(
          _$_OrderActorState value, $Res Function(_$_OrderActorState) then) =
      __$$_OrderActorStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      OrderStatusEnum orderStatus,
      Option<UniqueId> orderIdOption,
      Option<OrderFailure> failureOption});
}

/// @nodoc
class __$$_OrderActorStateCopyWithImpl<$Res>
    extends _$OrderActorStateCopyWithImpl<$Res>
    implements _$$_OrderActorStateCopyWith<$Res> {
  __$$_OrderActorStateCopyWithImpl(
      _$_OrderActorState _value, $Res Function(_$_OrderActorState) _then)
      : super(_value, (v) => _then(v as _$_OrderActorState));

  @override
  _$_OrderActorState get _value => super._value as _$_OrderActorState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? orderStatus = freezed,
    Object? orderIdOption = freezed,
    Object? failureOption = freezed,
  }) {
    return _then(_$_OrderActorState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      orderStatus: orderStatus == freezed
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
              as OrderStatusEnum,
      orderIdOption: orderIdOption == freezed
          ? _value.orderIdOption
          : orderIdOption // ignore: cast_nullable_to_non_nullable
              as Option<UniqueId>,
      failureOption: failureOption == freezed
          ? _value.failureOption
          : failureOption // ignore: cast_nullable_to_non_nullable
              as Option<OrderFailure>,
    ));
  }
}

/// @nodoc

class _$_OrderActorState implements _OrderActorState {
  const _$_OrderActorState(
      {required this.isLoading,
      required this.orderStatus,
      required this.orderIdOption,
      required this.failureOption});

  @override
  final bool isLoading;
  @override
  final OrderStatusEnum orderStatus;
  @override
  final Option<UniqueId> orderIdOption;
  @override
  final Option<OrderFailure> failureOption;

  @override
  String toString() {
    return 'OrderActorState(isLoading: $isLoading, orderStatus: $orderStatus, orderIdOption: $orderIdOption, failureOption: $failureOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderActorState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.orderStatus, orderStatus) &&
            const DeepCollectionEquality()
                .equals(other.orderIdOption, orderIdOption) &&
            const DeepCollectionEquality()
                .equals(other.failureOption, failureOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(orderStatus),
      const DeepCollectionEquality().hash(orderIdOption),
      const DeepCollectionEquality().hash(failureOption));

  @JsonKey(ignore: true)
  @override
  _$$_OrderActorStateCopyWith<_$_OrderActorState> get copyWith =>
      __$$_OrderActorStateCopyWithImpl<_$_OrderActorState>(this, _$identity);
}

abstract class _OrderActorState implements OrderActorState {
  const factory _OrderActorState(
      {required final bool isLoading,
      required final OrderStatusEnum orderStatus,
      required final Option<UniqueId> orderIdOption,
      required final Option<OrderFailure> failureOption}) = _$_OrderActorState;

  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  OrderStatusEnum get orderStatus => throw _privateConstructorUsedError;
  @override
  Option<UniqueId> get orderIdOption => throw _privateConstructorUsedError;
  @override
  Option<OrderFailure> get failureOption => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_OrderActorStateCopyWith<_$_OrderActorState> get copyWith =>
      throw _privateConstructorUsedError;
}
