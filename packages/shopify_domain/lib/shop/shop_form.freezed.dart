// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'shop_form.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ShopFormTearOff {
  const _$ShopFormTearOff();

  _ShopForm call({required ShopName shopName, required Address address}) {
    return _ShopForm(
      shopName: shopName,
      address: address,
    );
  }
}

/// @nodoc
const $ShopForm = _$ShopFormTearOff();

/// @nodoc
mixin _$ShopForm {
  ShopName get shopName => throw _privateConstructorUsedError;
  Address get address => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShopFormCopyWith<ShopForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopFormCopyWith<$Res> {
  factory $ShopFormCopyWith(ShopForm value, $Res Function(ShopForm) then) =
      _$ShopFormCopyWithImpl<$Res>;
  $Res call({ShopName shopName, Address address});

  $AddressCopyWith<$Res> get address;
}

/// @nodoc
class _$ShopFormCopyWithImpl<$Res> implements $ShopFormCopyWith<$Res> {
  _$ShopFormCopyWithImpl(this._value, this._then);

  final ShopForm _value;
  // ignore: unused_field
  final $Res Function(ShopForm) _then;

  @override
  $Res call({
    Object? shopName = freezed,
    Object? address = freezed,
  }) {
    return _then(_value.copyWith(
      shopName: shopName == freezed
          ? _value.shopName
          : shopName // ignore: cast_nullable_to_non_nullable
              as ShopName,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
    ));
  }

  @override
  $AddressCopyWith<$Res> get address {
    return $AddressCopyWith<$Res>(_value.address, (value) {
      return _then(_value.copyWith(address: value));
    });
  }
}

/// @nodoc
abstract class _$ShopFormCopyWith<$Res> implements $ShopFormCopyWith<$Res> {
  factory _$ShopFormCopyWith(_ShopForm value, $Res Function(_ShopForm) then) =
      __$ShopFormCopyWithImpl<$Res>;
  @override
  $Res call({ShopName shopName, Address address});

  @override
  $AddressCopyWith<$Res> get address;
}

/// @nodoc
class __$ShopFormCopyWithImpl<$Res> extends _$ShopFormCopyWithImpl<$Res>
    implements _$ShopFormCopyWith<$Res> {
  __$ShopFormCopyWithImpl(_ShopForm _value, $Res Function(_ShopForm) _then)
      : super(_value, (v) => _then(v as _ShopForm));

  @override
  _ShopForm get _value => super._value as _ShopForm;

  @override
  $Res call({
    Object? shopName = freezed,
    Object? address = freezed,
  }) {
    return _then(_ShopForm(
      shopName: shopName == freezed
          ? _value.shopName
          : shopName // ignore: cast_nullable_to_non_nullable
              as ShopName,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
    ));
  }
}

/// @nodoc

class _$_ShopForm extends _ShopForm {
  const _$_ShopForm({required this.shopName, required this.address})
      : super._();

  @override
  final ShopName shopName;
  @override
  final Address address;

  @override
  String toString() {
    return 'ShopForm(shopName: $shopName, address: $address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ShopForm &&
            const DeepCollectionEquality().equals(other.shopName, shopName) &&
            const DeepCollectionEquality().equals(other.address, address));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(shopName),
      const DeepCollectionEquality().hash(address));

  @JsonKey(ignore: true)
  @override
  _$ShopFormCopyWith<_ShopForm> get copyWith =>
      __$ShopFormCopyWithImpl<_ShopForm>(this, _$identity);
}

abstract class _ShopForm extends ShopForm {
  const factory _ShopForm(
      {required ShopName shopName, required Address address}) = _$_ShopForm;
  const _ShopForm._() : super._();

  @override
  ShopName get shopName;
  @override
  Address get address;
  @override
  @JsonKey(ignore: true)
  _$ShopFormCopyWith<_ShopForm> get copyWith =>
      throw _privateConstructorUsedError;
}
