// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cart_item_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CartItemState {
  bool get isLoading => throw _privateConstructorUsedError;
  Option<CartItem> get cartItemOption => throw _privateConstructorUsedError;
  Option<CartFailure> get failureOption => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartItemStateCopyWith<CartItemState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartItemStateCopyWith<$Res> {
  factory $CartItemStateCopyWith(
          CartItemState value, $Res Function(CartItemState) then) =
      _$CartItemStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      Option<CartItem> cartItemOption,
      Option<CartFailure> failureOption});
}

/// @nodoc
class _$CartItemStateCopyWithImpl<$Res>
    implements $CartItemStateCopyWith<$Res> {
  _$CartItemStateCopyWithImpl(this._value, this._then);

  final CartItemState _value;
  // ignore: unused_field
  final $Res Function(CartItemState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? cartItemOption = freezed,
    Object? failureOption = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      cartItemOption: cartItemOption == freezed
          ? _value.cartItemOption
          : cartItemOption // ignore: cast_nullable_to_non_nullable
              as Option<CartItem>,
      failureOption: failureOption == freezed
          ? _value.failureOption
          : failureOption // ignore: cast_nullable_to_non_nullable
              as Option<CartFailure>,
    ));
  }
}

/// @nodoc
abstract class _$$_CartItemStateCopyWith<$Res>
    implements $CartItemStateCopyWith<$Res> {
  factory _$$_CartItemStateCopyWith(
          _$_CartItemState value, $Res Function(_$_CartItemState) then) =
      __$$_CartItemStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      Option<CartItem> cartItemOption,
      Option<CartFailure> failureOption});
}

/// @nodoc
class __$$_CartItemStateCopyWithImpl<$Res>
    extends _$CartItemStateCopyWithImpl<$Res>
    implements _$$_CartItemStateCopyWith<$Res> {
  __$$_CartItemStateCopyWithImpl(
      _$_CartItemState _value, $Res Function(_$_CartItemState) _then)
      : super(_value, (v) => _then(v as _$_CartItemState));

  @override
  _$_CartItemState get _value => super._value as _$_CartItemState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? cartItemOption = freezed,
    Object? failureOption = freezed,
  }) {
    return _then(_$_CartItemState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      cartItemOption: cartItemOption == freezed
          ? _value.cartItemOption
          : cartItemOption // ignore: cast_nullable_to_non_nullable
              as Option<CartItem>,
      failureOption: failureOption == freezed
          ? _value.failureOption
          : failureOption // ignore: cast_nullable_to_non_nullable
              as Option<CartFailure>,
    ));
  }
}

/// @nodoc

class _$_CartItemState implements _CartItemState {
  const _$_CartItemState(
      {required this.isLoading,
      required this.cartItemOption,
      required this.failureOption});

  @override
  final bool isLoading;
  @override
  final Option<CartItem> cartItemOption;
  @override
  final Option<CartFailure> failureOption;

  @override
  String toString() {
    return 'CartItemState(isLoading: $isLoading, cartItemOption: $cartItemOption, failureOption: $failureOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CartItemState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.cartItemOption, cartItemOption) &&
            const DeepCollectionEquality()
                .equals(other.failureOption, failureOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(cartItemOption),
      const DeepCollectionEquality().hash(failureOption));

  @JsonKey(ignore: true)
  @override
  _$$_CartItemStateCopyWith<_$_CartItemState> get copyWith =>
      __$$_CartItemStateCopyWithImpl<_$_CartItemState>(this, _$identity);
}

abstract class _CartItemState implements CartItemState {
  const factory _CartItemState(
      {required final bool isLoading,
      required final Option<CartItem> cartItemOption,
      required final Option<CartFailure> failureOption}) = _$_CartItemState;

  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  Option<CartItem> get cartItemOption => throw _privateConstructorUsedError;
  @override
  Option<CartFailure> get failureOption => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_CartItemStateCopyWith<_$_CartItemState> get copyWith =>
      throw _privateConstructorUsedError;
}
