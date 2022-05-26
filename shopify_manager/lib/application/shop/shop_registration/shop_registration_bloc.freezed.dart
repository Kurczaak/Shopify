// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'shop_registration_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ShopRegistrationStateTearOff {
  const _$ShopRegistrationStateTearOff();

  _ShopRegistrationState call(
      {required Shop shop,
      required Option<ShopLogo> shopLogo,
      required bool isSaving,
      required Option<Either<ShopFailure, Unit>> saveFailureOrSuccessOption}) {
    return _ShopRegistrationState(
      shop: shop,
      shopLogo: shopLogo,
      isSaving: isSaving,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption,
    );
  }
}

/// @nodoc
const $ShopRegistrationState = _$ShopRegistrationStateTearOff();

/// @nodoc
mixin _$ShopRegistrationState {
  Shop get shop => throw _privateConstructorUsedError;
  Option<ShopLogo> get shopLogo => throw _privateConstructorUsedError;
  bool get isSaving => throw _privateConstructorUsedError;
  Option<Either<ShopFailure, Unit>> get saveFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShopRegistrationStateCopyWith<ShopRegistrationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopRegistrationStateCopyWith<$Res> {
  factory $ShopRegistrationStateCopyWith(ShopRegistrationState value,
          $Res Function(ShopRegistrationState) then) =
      _$ShopRegistrationStateCopyWithImpl<$Res>;
  $Res call(
      {Shop shop,
      Option<ShopLogo> shopLogo,
      bool isSaving,
      Option<Either<ShopFailure, Unit>> saveFailureOrSuccessOption});

  $ShopCopyWith<$Res> get shop;
}

/// @nodoc
class _$ShopRegistrationStateCopyWithImpl<$Res>
    implements $ShopRegistrationStateCopyWith<$Res> {
  _$ShopRegistrationStateCopyWithImpl(this._value, this._then);

  final ShopRegistrationState _value;
  // ignore: unused_field
  final $Res Function(ShopRegistrationState) _then;

  @override
  $Res call({
    Object? shop = freezed,
    Object? shopLogo = freezed,
    Object? isSaving = freezed,
    Object? saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      shop: shop == freezed
          ? _value.shop
          : shop // ignore: cast_nullable_to_non_nullable
              as Shop,
      shopLogo: shopLogo == freezed
          ? _value.shopLogo
          : shopLogo // ignore: cast_nullable_to_non_nullable
              as Option<ShopLogo>,
      isSaving: isSaving == freezed
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ShopFailure, Unit>>,
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
abstract class _$ShopRegistrationStateCopyWith<$Res>
    implements $ShopRegistrationStateCopyWith<$Res> {
  factory _$ShopRegistrationStateCopyWith(_ShopRegistrationState value,
          $Res Function(_ShopRegistrationState) then) =
      __$ShopRegistrationStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Shop shop,
      Option<ShopLogo> shopLogo,
      bool isSaving,
      Option<Either<ShopFailure, Unit>> saveFailureOrSuccessOption});

  @override
  $ShopCopyWith<$Res> get shop;
}

/// @nodoc
class __$ShopRegistrationStateCopyWithImpl<$Res>
    extends _$ShopRegistrationStateCopyWithImpl<$Res>
    implements _$ShopRegistrationStateCopyWith<$Res> {
  __$ShopRegistrationStateCopyWithImpl(_ShopRegistrationState _value,
      $Res Function(_ShopRegistrationState) _then)
      : super(_value, (v) => _then(v as _ShopRegistrationState));

  @override
  _ShopRegistrationState get _value => super._value as _ShopRegistrationState;

  @override
  $Res call({
    Object? shop = freezed,
    Object? shopLogo = freezed,
    Object? isSaving = freezed,
    Object? saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_ShopRegistrationState(
      shop: shop == freezed
          ? _value.shop
          : shop // ignore: cast_nullable_to_non_nullable
              as Shop,
      shopLogo: shopLogo == freezed
          ? _value.shopLogo
          : shopLogo // ignore: cast_nullable_to_non_nullable
              as Option<ShopLogo>,
      isSaving: isSaving == freezed
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ShopFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_ShopRegistrationState implements _ShopRegistrationState {
  const _$_ShopRegistrationState(
      {required this.shop,
      required this.shopLogo,
      required this.isSaving,
      required this.saveFailureOrSuccessOption});

  @override
  final Shop shop;
  @override
  final Option<ShopLogo> shopLogo;
  @override
  final bool isSaving;
  @override
  final Option<Either<ShopFailure, Unit>> saveFailureOrSuccessOption;

  @override
  String toString() {
    return 'ShopRegistrationState(shop: $shop, shopLogo: $shopLogo, isSaving: $isSaving, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ShopRegistrationState &&
            const DeepCollectionEquality().equals(other.shop, shop) &&
            const DeepCollectionEquality().equals(other.shopLogo, shopLogo) &&
            const DeepCollectionEquality().equals(other.isSaving, isSaving) &&
            const DeepCollectionEquality().equals(
                other.saveFailureOrSuccessOption, saveFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(shop),
      const DeepCollectionEquality().hash(shopLogo),
      const DeepCollectionEquality().hash(isSaving),
      const DeepCollectionEquality().hash(saveFailureOrSuccessOption));

  @JsonKey(ignore: true)
  @override
  _$ShopRegistrationStateCopyWith<_ShopRegistrationState> get copyWith =>
      __$ShopRegistrationStateCopyWithImpl<_ShopRegistrationState>(
          this, _$identity);
}

abstract class _ShopRegistrationState implements ShopRegistrationState {
  const factory _ShopRegistrationState(
      {required Shop shop,
      required Option<ShopLogo> shopLogo,
      required bool isSaving,
      required Option<Either<ShopFailure, Unit>>
          saveFailureOrSuccessOption}) = _$_ShopRegistrationState;

  @override
  Shop get shop;
  @override
  Option<ShopLogo> get shopLogo;
  @override
  bool get isSaving;
  @override
  Option<Either<ShopFailure, Unit>> get saveFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$ShopRegistrationStateCopyWith<_ShopRegistrationState> get copyWith =>
      throw _privateConstructorUsedError;
}
