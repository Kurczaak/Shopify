// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'value_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CartValueFailure<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() emptyyCartItemsList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? emptyyCartItemsList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? emptyyCartItemsList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyCartItemsList<T> value) emptyyCartItemsList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmptyCartItemsList<T> value)? emptyyCartItemsList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyCartItemsList<T> value)? emptyyCartItemsList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartValueFailureCopyWith<T, $Res> {
  factory $CartValueFailureCopyWith(
          CartValueFailure<T> value, $Res Function(CartValueFailure<T>) then) =
      _$CartValueFailureCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$CartValueFailureCopyWithImpl<T, $Res>
    implements $CartValueFailureCopyWith<T, $Res> {
  _$CartValueFailureCopyWithImpl(this._value, this._then);

  final CartValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(CartValueFailure<T>) _then;
}

/// @nodoc
abstract class _$$EmptyCartItemsListCopyWith<T, $Res> {
  factory _$$EmptyCartItemsListCopyWith(_$EmptyCartItemsList<T> value,
          $Res Function(_$EmptyCartItemsList<T>) then) =
      __$$EmptyCartItemsListCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$EmptyCartItemsListCopyWithImpl<T, $Res>
    extends _$CartValueFailureCopyWithImpl<T, $Res>
    implements _$$EmptyCartItemsListCopyWith<T, $Res> {
  __$$EmptyCartItemsListCopyWithImpl(_$EmptyCartItemsList<T> _value,
      $Res Function(_$EmptyCartItemsList<T>) _then)
      : super(_value, (v) => _then(v as _$EmptyCartItemsList<T>));

  @override
  _$EmptyCartItemsList<T> get _value => super._value as _$EmptyCartItemsList<T>;
}

/// @nodoc

class _$EmptyCartItemsList<T> implements EmptyCartItemsList<T> {
  const _$EmptyCartItemsList();

  @override
  String toString() {
    return 'CartValueFailure<$T>.emptyyCartItemsList()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EmptyCartItemsList<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() emptyyCartItemsList,
  }) {
    return emptyyCartItemsList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? emptyyCartItemsList,
  }) {
    return emptyyCartItemsList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? emptyyCartItemsList,
    required TResult orElse(),
  }) {
    if (emptyyCartItemsList != null) {
      return emptyyCartItemsList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyCartItemsList<T> value) emptyyCartItemsList,
  }) {
    return emptyyCartItemsList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmptyCartItemsList<T> value)? emptyyCartItemsList,
  }) {
    return emptyyCartItemsList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyCartItemsList<T> value)? emptyyCartItemsList,
    required TResult orElse(),
  }) {
    if (emptyyCartItemsList != null) {
      return emptyyCartItemsList(this);
    }
    return orElse();
  }
}

abstract class EmptyCartItemsList<T> implements CartValueFailure<T> {
  const factory EmptyCartItemsList() = _$EmptyCartItemsList<T>;
}
