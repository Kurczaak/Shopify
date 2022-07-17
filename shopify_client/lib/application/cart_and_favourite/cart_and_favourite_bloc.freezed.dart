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
mixin _$CartAndFavouriteState {
  Option<bool> get isFavouirte => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  Option<CartFailure> get failureOption => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartAndFavouriteStateCopyWith<CartAndFavouriteState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartAndFavouriteStateCopyWith<$Res> {
  factory $CartAndFavouriteStateCopyWith(CartAndFavouriteState value,
          $Res Function(CartAndFavouriteState) then) =
      _$CartAndFavouriteStateCopyWithImpl<$Res>;
  $Res call(
      {Option<bool> isFavouirte,
      bool isLoading,
      Option<CartFailure> failureOption});
}

/// @nodoc
class _$CartAndFavouriteStateCopyWithImpl<$Res>
    implements $CartAndFavouriteStateCopyWith<$Res> {
  _$CartAndFavouriteStateCopyWithImpl(this._value, this._then);

  final CartAndFavouriteState _value;
  // ignore: unused_field
  final $Res Function(CartAndFavouriteState) _then;

  @override
  $Res call({
    Object? isFavouirte = freezed,
    Object? isLoading = freezed,
    Object? failureOption = freezed,
  }) {
    return _then(_value.copyWith(
      isFavouirte: isFavouirte == freezed
          ? _value.isFavouirte
          : isFavouirte // ignore: cast_nullable_to_non_nullable
              as Option<bool>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOption: failureOption == freezed
          ? _value.failureOption
          : failureOption // ignore: cast_nullable_to_non_nullable
              as Option<CartFailure>,
    ));
  }
}

/// @nodoc
abstract class _$$_CartAndFavouriteStateCopyWith<$Res>
    implements $CartAndFavouriteStateCopyWith<$Res> {
  factory _$$_CartAndFavouriteStateCopyWith(_$_CartAndFavouriteState value,
          $Res Function(_$_CartAndFavouriteState) then) =
      __$$_CartAndFavouriteStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Option<bool> isFavouirte,
      bool isLoading,
      Option<CartFailure> failureOption});
}

/// @nodoc
class __$$_CartAndFavouriteStateCopyWithImpl<$Res>
    extends _$CartAndFavouriteStateCopyWithImpl<$Res>
    implements _$$_CartAndFavouriteStateCopyWith<$Res> {
  __$$_CartAndFavouriteStateCopyWithImpl(_$_CartAndFavouriteState _value,
      $Res Function(_$_CartAndFavouriteState) _then)
      : super(_value, (v) => _then(v as _$_CartAndFavouriteState));

  @override
  _$_CartAndFavouriteState get _value =>
      super._value as _$_CartAndFavouriteState;

  @override
  $Res call({
    Object? isFavouirte = freezed,
    Object? isLoading = freezed,
    Object? failureOption = freezed,
  }) {
    return _then(_$_CartAndFavouriteState(
      isFavouirte: isFavouirte == freezed
          ? _value.isFavouirte
          : isFavouirte // ignore: cast_nullable_to_non_nullable
              as Option<bool>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOption: failureOption == freezed
          ? _value.failureOption
          : failureOption // ignore: cast_nullable_to_non_nullable
              as Option<CartFailure>,
    ));
  }
}

/// @nodoc

class _$_CartAndFavouriteState implements _CartAndFavouriteState {
  const _$_CartAndFavouriteState(
      {required this.isFavouirte,
      required this.isLoading,
      required this.failureOption});

  @override
  final Option<bool> isFavouirte;
  @override
  final bool isLoading;
  @override
  final Option<CartFailure> failureOption;

  @override
  String toString() {
    return 'CartAndFavouriteState(isFavouirte: $isFavouirte, isLoading: $isLoading, failureOption: $failureOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CartAndFavouriteState &&
            const DeepCollectionEquality()
                .equals(other.isFavouirte, isFavouirte) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.failureOption, failureOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isFavouirte),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(failureOption));

  @JsonKey(ignore: true)
  @override
  _$$_CartAndFavouriteStateCopyWith<_$_CartAndFavouriteState> get copyWith =>
      __$$_CartAndFavouriteStateCopyWithImpl<_$_CartAndFavouriteState>(
          this, _$identity);
}

abstract class _CartAndFavouriteState implements CartAndFavouriteState {
  const factory _CartAndFavouriteState(
          {required final Option<bool> isFavouirte,
          required final bool isLoading,
          required final Option<CartFailure> failureOption}) =
      _$_CartAndFavouriteState;

  @override
  Option<bool> get isFavouirte => throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  Option<CartFailure> get failureOption => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_CartAndFavouriteStateCopyWith<_$_CartAndFavouriteState> get copyWith =>
      throw _privateConstructorUsedError;
}
