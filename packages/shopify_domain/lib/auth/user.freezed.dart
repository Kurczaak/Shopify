// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ShopifyUser {
  UniqueId get id => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShopifyUserCopyWith<ShopifyUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopifyUserCopyWith<$Res> {
  factory $ShopifyUserCopyWith(
          ShopifyUser value, $Res Function(ShopifyUser) then) =
      _$ShopifyUserCopyWithImpl<$Res>;
  $Res call({UniqueId id});
}

/// @nodoc
class _$ShopifyUserCopyWithImpl<$Res> implements $ShopifyUserCopyWith<$Res> {
  _$ShopifyUserCopyWithImpl(this._value, this._then);

  final ShopifyUser _value;
  // ignore: unused_field
  final $Res Function(ShopifyUser) _then;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
    ));
  }
}

/// @nodoc
abstract class _$$_ShopifyUserCopyWith<$Res>
    implements $ShopifyUserCopyWith<$Res> {
  factory _$$_ShopifyUserCopyWith(
          _$_ShopifyUser value, $Res Function(_$_ShopifyUser) then) =
      __$$_ShopifyUserCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId id});
}

/// @nodoc
class __$$_ShopifyUserCopyWithImpl<$Res> extends _$ShopifyUserCopyWithImpl<$Res>
    implements _$$_ShopifyUserCopyWith<$Res> {
  __$$_ShopifyUserCopyWithImpl(
      _$_ShopifyUser _value, $Res Function(_$_ShopifyUser) _then)
      : super(_value, (v) => _then(v as _$_ShopifyUser));

  @override
  _$_ShopifyUser get _value => super._value as _$_ShopifyUser;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$_ShopifyUser(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
    ));
  }
}

/// @nodoc

class _$_ShopifyUser extends _ShopifyUser {
  const _$_ShopifyUser({required this.id}) : super._();

  @override
  final UniqueId id;

  @override
  String toString() {
    return 'ShopifyUser(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShopifyUser &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$$_ShopifyUserCopyWith<_$_ShopifyUser> get copyWith =>
      __$$_ShopifyUserCopyWithImpl<_$_ShopifyUser>(this, _$identity);
}

abstract class _ShopifyUser extends ShopifyUser {
  const factory _ShopifyUser({required final UniqueId id}) = _$_ShopifyUser;
  const _ShopifyUser._() : super._();

  @override
  UniqueId get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ShopifyUserCopyWith<_$_ShopifyUser> get copyWith =>
      throw _privateConstructorUsedError;
}
