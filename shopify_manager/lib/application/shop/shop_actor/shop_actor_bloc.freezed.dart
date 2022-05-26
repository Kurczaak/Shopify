// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'shop_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ShoppingActorEventTearOff {
  const _$ShoppingActorEventTearOff();

  _Deleted deleted(Shop shop) {
    return _Deleted(
      shop,
    );
  }
}

/// @nodoc
const $ShoppingActorEvent = _$ShoppingActorEventTearOff();

/// @nodoc
mixin _$ShoppingActorEvent {
  Shop get shop => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Shop shop) deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Shop shop)? deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Shop shop)? deleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Deleted value) deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Deleted value)? deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Deleted value)? deleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShoppingActorEventCopyWith<ShoppingActorEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShoppingActorEventCopyWith<$Res> {
  factory $ShoppingActorEventCopyWith(
          ShoppingActorEvent value, $Res Function(ShoppingActorEvent) then) =
      _$ShoppingActorEventCopyWithImpl<$Res>;
  $Res call({Shop shop});

  $ShopCopyWith<$Res> get shop;
}

/// @nodoc
class _$ShoppingActorEventCopyWithImpl<$Res>
    implements $ShoppingActorEventCopyWith<$Res> {
  _$ShoppingActorEventCopyWithImpl(this._value, this._then);

  final ShoppingActorEvent _value;
  // ignore: unused_field
  final $Res Function(ShoppingActorEvent) _then;

  @override
  $Res call({
    Object? shop = freezed,
  }) {
    return _then(_value.copyWith(
      shop: shop == freezed
          ? _value.shop
          : shop // ignore: cast_nullable_to_non_nullable
              as Shop,
    ));
  }

  @override
  $ShopCopyWith<$Res> get shop {
    return $ShopCopyWith<$Res>(_value.shop, (value) {
      return _then(_value.copyWith(shop: value));
    });
  }
}

/// @nodoc
abstract class _$DeletedCopyWith<$Res>
    implements $ShoppingActorEventCopyWith<$Res> {
  factory _$DeletedCopyWith(_Deleted value, $Res Function(_Deleted) then) =
      __$DeletedCopyWithImpl<$Res>;
  @override
  $Res call({Shop shop});

  @override
  $ShopCopyWith<$Res> get shop;
}

/// @nodoc
class __$DeletedCopyWithImpl<$Res>
    extends _$ShoppingActorEventCopyWithImpl<$Res>
    implements _$DeletedCopyWith<$Res> {
  __$DeletedCopyWithImpl(_Deleted _value, $Res Function(_Deleted) _then)
      : super(_value, (v) => _then(v as _Deleted));

  @override
  _Deleted get _value => super._value as _Deleted;

  @override
  $Res call({
    Object? shop = freezed,
  }) {
    return _then(_Deleted(
      shop == freezed
          ? _value.shop
          : shop // ignore: cast_nullable_to_non_nullable
              as Shop,
    ));
  }
}

/// @nodoc

class _$_Deleted implements _Deleted {
  const _$_Deleted(this.shop);

  @override
  final Shop shop;

  @override
  String toString() {
    return 'ShoppingActorEvent.deleted(shop: $shop)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Deleted &&
            const DeepCollectionEquality().equals(other.shop, shop));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(shop));

  @JsonKey(ignore: true)
  @override
  _$DeletedCopyWith<_Deleted> get copyWith =>
      __$DeletedCopyWithImpl<_Deleted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Shop shop) deleted,
  }) {
    return deleted(shop);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Shop shop)? deleted,
  }) {
    return deleted?.call(shop);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Shop shop)? deleted,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(shop);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Deleted value) deleted,
  }) {
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Deleted value)? deleted,
  }) {
    return deleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Deleted value)? deleted,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class _Deleted implements ShoppingActorEvent {
  const factory _Deleted(Shop shop) = _$_Deleted;

  @override
  Shop get shop;
  @override
  @JsonKey(ignore: true)
  _$DeletedCopyWith<_Deleted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ShoppingActorStateTearOff {
  const _$ShoppingActorStateTearOff();

  _Initial inital() {
    return const _Initial();
  }

  _ActionInProgress actionInProgress() {
    return const _ActionInProgress();
  }

  _DeleteFailure deleteFailure(ShopFailure shopFailure) {
    return _DeleteFailure(
      shopFailure,
    );
  }

  _DeleteSuccess deleteSuccess() {
    return const _DeleteSuccess();
  }
}

/// @nodoc
const $ShoppingActorState = _$ShoppingActorStateTearOff();

/// @nodoc
mixin _$ShoppingActorState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inital,
    required TResult Function() actionInProgress,
    required TResult Function(ShopFailure shopFailure) deleteFailure,
    required TResult Function() deleteSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? inital,
    TResult Function()? actionInProgress,
    TResult Function(ShopFailure shopFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inital,
    TResult Function()? actionInProgress,
    TResult Function(ShopFailure shopFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) inital,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_DeleteFailure value) deleteFailure,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? inital,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_DeleteFailure value)? deleteFailure,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? inital,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_DeleteFailure value)? deleteFailure,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShoppingActorStateCopyWith<$Res> {
  factory $ShoppingActorStateCopyWith(
          ShoppingActorState value, $Res Function(ShoppingActorState) then) =
      _$ShoppingActorStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ShoppingActorStateCopyWithImpl<$Res>
    implements $ShoppingActorStateCopyWith<$Res> {
  _$ShoppingActorStateCopyWithImpl(this._value, this._then);

  final ShoppingActorState _value;
  // ignore: unused_field
  final $Res Function(ShoppingActorState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$ShoppingActorStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'ShoppingActorState.inital()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inital,
    required TResult Function() actionInProgress,
    required TResult Function(ShopFailure shopFailure) deleteFailure,
    required TResult Function() deleteSuccess,
  }) {
    return inital();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? inital,
    TResult Function()? actionInProgress,
    TResult Function(ShopFailure shopFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
  }) {
    return inital?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inital,
    TResult Function()? actionInProgress,
    TResult Function(ShopFailure shopFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
    required TResult orElse(),
  }) {
    if (inital != null) {
      return inital();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) inital,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_DeleteFailure value) deleteFailure,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
  }) {
    return inital(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? inital,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_DeleteFailure value)? deleteFailure,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
  }) {
    return inital?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? inital,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_DeleteFailure value)? deleteFailure,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    required TResult orElse(),
  }) {
    if (inital != null) {
      return inital(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ShoppingActorState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$ActionInProgressCopyWith<$Res> {
  factory _$ActionInProgressCopyWith(
          _ActionInProgress value, $Res Function(_ActionInProgress) then) =
      __$ActionInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$ActionInProgressCopyWithImpl<$Res>
    extends _$ShoppingActorStateCopyWithImpl<$Res>
    implements _$ActionInProgressCopyWith<$Res> {
  __$ActionInProgressCopyWithImpl(
      _ActionInProgress _value, $Res Function(_ActionInProgress) _then)
      : super(_value, (v) => _then(v as _ActionInProgress));

  @override
  _ActionInProgress get _value => super._value as _ActionInProgress;
}

/// @nodoc

class _$_ActionInProgress implements _ActionInProgress {
  const _$_ActionInProgress();

  @override
  String toString() {
    return 'ShoppingActorState.actionInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ActionInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inital,
    required TResult Function() actionInProgress,
    required TResult Function(ShopFailure shopFailure) deleteFailure,
    required TResult Function() deleteSuccess,
  }) {
    return actionInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? inital,
    TResult Function()? actionInProgress,
    TResult Function(ShopFailure shopFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
  }) {
    return actionInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inital,
    TResult Function()? actionInProgress,
    TResult Function(ShopFailure shopFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
    required TResult orElse(),
  }) {
    if (actionInProgress != null) {
      return actionInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) inital,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_DeleteFailure value) deleteFailure,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
  }) {
    return actionInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? inital,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_DeleteFailure value)? deleteFailure,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
  }) {
    return actionInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? inital,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_DeleteFailure value)? deleteFailure,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    required TResult orElse(),
  }) {
    if (actionInProgress != null) {
      return actionInProgress(this);
    }
    return orElse();
  }
}

abstract class _ActionInProgress implements ShoppingActorState {
  const factory _ActionInProgress() = _$_ActionInProgress;
}

/// @nodoc
abstract class _$DeleteFailureCopyWith<$Res> {
  factory _$DeleteFailureCopyWith(
          _DeleteFailure value, $Res Function(_DeleteFailure) then) =
      __$DeleteFailureCopyWithImpl<$Res>;
  $Res call({ShopFailure shopFailure});

  $ShopFailureCopyWith<$Res> get shopFailure;
}

/// @nodoc
class __$DeleteFailureCopyWithImpl<$Res>
    extends _$ShoppingActorStateCopyWithImpl<$Res>
    implements _$DeleteFailureCopyWith<$Res> {
  __$DeleteFailureCopyWithImpl(
      _DeleteFailure _value, $Res Function(_DeleteFailure) _then)
      : super(_value, (v) => _then(v as _DeleteFailure));

  @override
  _DeleteFailure get _value => super._value as _DeleteFailure;

  @override
  $Res call({
    Object? shopFailure = freezed,
  }) {
    return _then(_DeleteFailure(
      shopFailure == freezed
          ? _value.shopFailure
          : shopFailure // ignore: cast_nullable_to_non_nullable
              as ShopFailure,
    ));
  }

  @override
  $ShopFailureCopyWith<$Res> get shopFailure {
    return $ShopFailureCopyWith<$Res>(_value.shopFailure, (value) {
      return _then(_value.copyWith(shopFailure: value));
    });
  }
}

/// @nodoc

class _$_DeleteFailure implements _DeleteFailure {
  const _$_DeleteFailure(this.shopFailure);

  @override
  final ShopFailure shopFailure;

  @override
  String toString() {
    return 'ShoppingActorState.deleteFailure(shopFailure: $shopFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DeleteFailure &&
            const DeepCollectionEquality()
                .equals(other.shopFailure, shopFailure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(shopFailure));

  @JsonKey(ignore: true)
  @override
  _$DeleteFailureCopyWith<_DeleteFailure> get copyWith =>
      __$DeleteFailureCopyWithImpl<_DeleteFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inital,
    required TResult Function() actionInProgress,
    required TResult Function(ShopFailure shopFailure) deleteFailure,
    required TResult Function() deleteSuccess,
  }) {
    return deleteFailure(shopFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? inital,
    TResult Function()? actionInProgress,
    TResult Function(ShopFailure shopFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
  }) {
    return deleteFailure?.call(shopFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inital,
    TResult Function()? actionInProgress,
    TResult Function(ShopFailure shopFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
    required TResult orElse(),
  }) {
    if (deleteFailure != null) {
      return deleteFailure(shopFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) inital,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_DeleteFailure value) deleteFailure,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
  }) {
    return deleteFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? inital,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_DeleteFailure value)? deleteFailure,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
  }) {
    return deleteFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? inital,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_DeleteFailure value)? deleteFailure,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    required TResult orElse(),
  }) {
    if (deleteFailure != null) {
      return deleteFailure(this);
    }
    return orElse();
  }
}

abstract class _DeleteFailure implements ShoppingActorState {
  const factory _DeleteFailure(ShopFailure shopFailure) = _$_DeleteFailure;

  ShopFailure get shopFailure;
  @JsonKey(ignore: true)
  _$DeleteFailureCopyWith<_DeleteFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DeleteSuccessCopyWith<$Res> {
  factory _$DeleteSuccessCopyWith(
          _DeleteSuccess value, $Res Function(_DeleteSuccess) then) =
      __$DeleteSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$DeleteSuccessCopyWithImpl<$Res>
    extends _$ShoppingActorStateCopyWithImpl<$Res>
    implements _$DeleteSuccessCopyWith<$Res> {
  __$DeleteSuccessCopyWithImpl(
      _DeleteSuccess _value, $Res Function(_DeleteSuccess) _then)
      : super(_value, (v) => _then(v as _DeleteSuccess));

  @override
  _DeleteSuccess get _value => super._value as _DeleteSuccess;
}

/// @nodoc

class _$_DeleteSuccess implements _DeleteSuccess {
  const _$_DeleteSuccess();

  @override
  String toString() {
    return 'ShoppingActorState.deleteSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _DeleteSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inital,
    required TResult Function() actionInProgress,
    required TResult Function(ShopFailure shopFailure) deleteFailure,
    required TResult Function() deleteSuccess,
  }) {
    return deleteSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? inital,
    TResult Function()? actionInProgress,
    TResult Function(ShopFailure shopFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
  }) {
    return deleteSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inital,
    TResult Function()? actionInProgress,
    TResult Function(ShopFailure shopFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
    required TResult orElse(),
  }) {
    if (deleteSuccess != null) {
      return deleteSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) inital,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_DeleteFailure value) deleteFailure,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
  }) {
    return deleteSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? inital,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_DeleteFailure value)? deleteFailure,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
  }) {
    return deleteSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? inital,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_DeleteFailure value)? deleteFailure,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    required TResult orElse(),
  }) {
    if (deleteSuccess != null) {
      return deleteSuccess(this);
    }
    return orElse();
  }
}

abstract class _DeleteSuccess implements ShoppingActorState {
  const factory _DeleteSuccess() = _$_DeleteSuccess;
}
