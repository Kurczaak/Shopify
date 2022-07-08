// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_carts_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserCartsState {
  Option<UserCarts> get userCartsOption => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  Option<CartFailure> get failureOption => throw _privateConstructorUsedError;
  Option<Either<CartFailure, Unit>> get sendOrderFailureOrUnitOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserCartsStateCopyWith<UserCartsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCartsStateCopyWith<$Res> {
  factory $UserCartsStateCopyWith(
          UserCartsState value, $Res Function(UserCartsState) then) =
      _$UserCartsStateCopyWithImpl<$Res>;
  $Res call(
      {Option<UserCarts> userCartsOption,
      bool isLoading,
      Option<CartFailure> failureOption,
      Option<Either<CartFailure, Unit>> sendOrderFailureOrUnitOption});
}

/// @nodoc
class _$UserCartsStateCopyWithImpl<$Res>
    implements $UserCartsStateCopyWith<$Res> {
  _$UserCartsStateCopyWithImpl(this._value, this._then);

  final UserCartsState _value;
  // ignore: unused_field
  final $Res Function(UserCartsState) _then;

  @override
  $Res call({
    Object? userCartsOption = freezed,
    Object? isLoading = freezed,
    Object? failureOption = freezed,
    Object? sendOrderFailureOrUnitOption = freezed,
  }) {
    return _then(_value.copyWith(
      userCartsOption: userCartsOption == freezed
          ? _value.userCartsOption
          : userCartsOption // ignore: cast_nullable_to_non_nullable
              as Option<UserCarts>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOption: failureOption == freezed
          ? _value.failureOption
          : failureOption // ignore: cast_nullable_to_non_nullable
              as Option<CartFailure>,
      sendOrderFailureOrUnitOption: sendOrderFailureOrUnitOption == freezed
          ? _value.sendOrderFailureOrUnitOption
          : sendOrderFailureOrUnitOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<CartFailure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$$_CartStateCopyWith<$Res>
    implements $UserCartsStateCopyWith<$Res> {
  factory _$$_CartStateCopyWith(
          _$_CartState value, $Res Function(_$_CartState) then) =
      __$$_CartStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Option<UserCarts> userCartsOption,
      bool isLoading,
      Option<CartFailure> failureOption,
      Option<Either<CartFailure, Unit>> sendOrderFailureOrUnitOption});
}

/// @nodoc
class __$$_CartStateCopyWithImpl<$Res>
    extends _$UserCartsStateCopyWithImpl<$Res>
    implements _$$_CartStateCopyWith<$Res> {
  __$$_CartStateCopyWithImpl(
      _$_CartState _value, $Res Function(_$_CartState) _then)
      : super(_value, (v) => _then(v as _$_CartState));

  @override
  _$_CartState get _value => super._value as _$_CartState;

  @override
  $Res call({
    Object? userCartsOption = freezed,
    Object? isLoading = freezed,
    Object? failureOption = freezed,
    Object? sendOrderFailureOrUnitOption = freezed,
  }) {
    return _then(_$_CartState(
      userCartsOption: userCartsOption == freezed
          ? _value.userCartsOption
          : userCartsOption // ignore: cast_nullable_to_non_nullable
              as Option<UserCarts>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOption: failureOption == freezed
          ? _value.failureOption
          : failureOption // ignore: cast_nullable_to_non_nullable
              as Option<CartFailure>,
      sendOrderFailureOrUnitOption: sendOrderFailureOrUnitOption == freezed
          ? _value.sendOrderFailureOrUnitOption
          : sendOrderFailureOrUnitOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<CartFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_CartState implements _CartState {
  const _$_CartState(
      {required this.userCartsOption,
      required this.isLoading,
      required this.failureOption,
      required this.sendOrderFailureOrUnitOption});

  @override
  final Option<UserCarts> userCartsOption;
  @override
  final bool isLoading;
  @override
  final Option<CartFailure> failureOption;
  @override
  final Option<Either<CartFailure, Unit>> sendOrderFailureOrUnitOption;

  @override
  String toString() {
    return 'UserCartsState(userCartsOption: $userCartsOption, isLoading: $isLoading, failureOption: $failureOption, sendOrderFailureOrUnitOption: $sendOrderFailureOrUnitOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CartState &&
            const DeepCollectionEquality()
                .equals(other.userCartsOption, userCartsOption) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.failureOption, failureOption) &&
            const DeepCollectionEquality().equals(
                other.sendOrderFailureOrUnitOption,
                sendOrderFailureOrUnitOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(userCartsOption),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(failureOption),
      const DeepCollectionEquality().hash(sendOrderFailureOrUnitOption));

  @JsonKey(ignore: true)
  @override
  _$$_CartStateCopyWith<_$_CartState> get copyWith =>
      __$$_CartStateCopyWithImpl<_$_CartState>(this, _$identity);
}

abstract class _CartState implements UserCartsState {
  const factory _CartState(
      {required final Option<UserCarts> userCartsOption,
      required final bool isLoading,
      required final Option<CartFailure> failureOption,
      required final Option<Either<CartFailure, Unit>>
          sendOrderFailureOrUnitOption}) = _$_CartState;

  @override
  Option<UserCarts> get userCartsOption => throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  Option<CartFailure> get failureOption => throw _privateConstructorUsedError;
  @override
  Option<Either<CartFailure, Unit>> get sendOrderFailureOrUnitOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_CartStateCopyWith<_$_CartState> get copyWith =>
      throw _privateConstructorUsedError;
}
