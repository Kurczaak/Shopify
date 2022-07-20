// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cart_and_favourite_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CartActorState {
  bool get isLoading => throw _privateConstructorUsedError;
  Option<CartFailure> get cartFailureOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartActorStateCopyWith<CartActorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartActorStateCopyWith<$Res> {
  factory $CartActorStateCopyWith(
          CartActorState value, $Res Function(CartActorState) then) =
      _$CartActorStateCopyWithImpl<$Res>;
  $Res call({bool isLoading, Option<CartFailure> cartFailureOption});
}

/// @nodoc
class _$CartActorStateCopyWithImpl<$Res>
    implements $CartActorStateCopyWith<$Res> {
  _$CartActorStateCopyWithImpl(this._value, this._then);

  final CartActorState _value;
  // ignore: unused_field
  final $Res Function(CartActorState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? cartFailureOption = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      cartFailureOption: cartFailureOption == freezed
          ? _value.cartFailureOption
          : cartFailureOption // ignore: cast_nullable_to_non_nullable
              as Option<CartFailure>,
    ));
  }
}

/// @nodoc
abstract class _$$_CartActorStateCopyWith<$Res>
    implements $CartActorStateCopyWith<$Res> {
  factory _$$_CartActorStateCopyWith(
          _$_CartActorState value, $Res Function(_$_CartActorState) then) =
      __$$_CartActorStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isLoading, Option<CartFailure> cartFailureOption});
}

/// @nodoc
class __$$_CartActorStateCopyWithImpl<$Res>
    extends _$CartActorStateCopyWithImpl<$Res>
    implements _$$_CartActorStateCopyWith<$Res> {
  __$$_CartActorStateCopyWithImpl(
      _$_CartActorState _value, $Res Function(_$_CartActorState) _then)
      : super(_value, (v) => _then(v as _$_CartActorState));

  @override
  _$_CartActorState get _value => super._value as _$_CartActorState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? cartFailureOption = freezed,
  }) {
    return _then(_$_CartActorState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      cartFailureOption: cartFailureOption == freezed
          ? _value.cartFailureOption
          : cartFailureOption // ignore: cast_nullable_to_non_nullable
              as Option<CartFailure>,
    ));
  }
}

/// @nodoc

class _$_CartActorState implements _CartActorState {
  const _$_CartActorState(
      {required this.isLoading, required this.cartFailureOption});

  @override
  final bool isLoading;
  @override
  final Option<CartFailure> cartFailureOption;

  @override
  String toString() {
    return 'CartActorState(isLoading: $isLoading, cartFailureOption: $cartFailureOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CartActorState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.cartFailureOption, cartFailureOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(cartFailureOption));

  @JsonKey(ignore: true)
  @override
  _$$_CartActorStateCopyWith<_$_CartActorState> get copyWith =>
      __$$_CartActorStateCopyWithImpl<_$_CartActorState>(this, _$identity);
}

abstract class _CartActorState implements CartActorState {
  const factory _CartActorState(
          {required final bool isLoading,
          required final Option<CartFailure> cartFailureOption}) =
      _$_CartActorState;

  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  Option<CartFailure> get cartFailureOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_CartActorStateCopyWith<_$_CartActorState> get copyWith =>
      throw _privateConstructorUsedError;
}
