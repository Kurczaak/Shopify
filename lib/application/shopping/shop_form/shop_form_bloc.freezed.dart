// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'shop_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ShopFormEventTearOff {
  const _$ShopFormEventTearOff();

  _NameChanged nameChanged(String nameStr) {
    return _NameChanged(
      nameStr,
    );
  }

  _StreetChanged streetChanged(String streetStr) {
    return _StreetChanged(
      streetStr,
    );
  }

  _PostalCodeChanged postalCodeChanged(String postalCodeStr) {
    return _PostalCodeChanged(
      postalCodeStr,
    );
  }

  _CityChanged cityChanged(String cityStr) {
    return _CityChanged(
      cityStr,
    );
  }

  _Saved saved() {
    return const _Saved();
  }
}

/// @nodoc
const $ShopFormEvent = _$ShopFormEventTearOff();

/// @nodoc
mixin _$ShopFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String streetStr) streetChanged,
    required TResult Function(String postalCodeStr) postalCodeChanged,
    required TResult Function(String cityStr) cityChanged,
    required TResult Function() saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String streetStr)? streetChanged,
    TResult Function(String postalCodeStr)? postalCodeChanged,
    TResult Function(String cityStr)? cityChanged,
    TResult Function()? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String streetStr)? streetChanged,
    TResult Function(String postalCodeStr)? postalCodeChanged,
    TResult Function(String cityStr)? cityChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_StreetChanged value) streetChanged,
    required TResult Function(_PostalCodeChanged value) postalCodeChanged,
    required TResult Function(_CityChanged value) cityChanged,
    required TResult Function(_Saved value) saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_StreetChanged value)? streetChanged,
    TResult Function(_PostalCodeChanged value)? postalCodeChanged,
    TResult Function(_CityChanged value)? cityChanged,
    TResult Function(_Saved value)? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_StreetChanged value)? streetChanged,
    TResult Function(_PostalCodeChanged value)? postalCodeChanged,
    TResult Function(_CityChanged value)? cityChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopFormEventCopyWith<$Res> {
  factory $ShopFormEventCopyWith(
          ShopFormEvent value, $Res Function(ShopFormEvent) then) =
      _$ShopFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ShopFormEventCopyWithImpl<$Res>
    implements $ShopFormEventCopyWith<$Res> {
  _$ShopFormEventCopyWithImpl(this._value, this._then);

  final ShopFormEvent _value;
  // ignore: unused_field
  final $Res Function(ShopFormEvent) _then;
}

/// @nodoc
abstract class _$NameChangedCopyWith<$Res> {
  factory _$NameChangedCopyWith(
          _NameChanged value, $Res Function(_NameChanged) then) =
      __$NameChangedCopyWithImpl<$Res>;
  $Res call({String nameStr});
}

/// @nodoc
class __$NameChangedCopyWithImpl<$Res> extends _$ShopFormEventCopyWithImpl<$Res>
    implements _$NameChangedCopyWith<$Res> {
  __$NameChangedCopyWithImpl(
      _NameChanged _value, $Res Function(_NameChanged) _then)
      : super(_value, (v) => _then(v as _NameChanged));

  @override
  _NameChanged get _value => super._value as _NameChanged;

  @override
  $Res call({
    Object? nameStr = freezed,
  }) {
    return _then(_NameChanged(
      nameStr == freezed
          ? _value.nameStr
          : nameStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_NameChanged implements _NameChanged {
  const _$_NameChanged(this.nameStr);

  @override
  final String nameStr;

  @override
  String toString() {
    return 'ShopFormEvent.nameChanged(nameStr: $nameStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NameChanged &&
            const DeepCollectionEquality().equals(other.nameStr, nameStr));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(nameStr));

  @JsonKey(ignore: true)
  @override
  _$NameChangedCopyWith<_NameChanged> get copyWith =>
      __$NameChangedCopyWithImpl<_NameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String streetStr) streetChanged,
    required TResult Function(String postalCodeStr) postalCodeChanged,
    required TResult Function(String cityStr) cityChanged,
    required TResult Function() saved,
  }) {
    return nameChanged(nameStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String streetStr)? streetChanged,
    TResult Function(String postalCodeStr)? postalCodeChanged,
    TResult Function(String cityStr)? cityChanged,
    TResult Function()? saved,
  }) {
    return nameChanged?.call(nameStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String streetStr)? streetChanged,
    TResult Function(String postalCodeStr)? postalCodeChanged,
    TResult Function(String cityStr)? cityChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(nameStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_StreetChanged value) streetChanged,
    required TResult Function(_PostalCodeChanged value) postalCodeChanged,
    required TResult Function(_CityChanged value) cityChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_StreetChanged value)? streetChanged,
    TResult Function(_PostalCodeChanged value)? postalCodeChanged,
    TResult Function(_CityChanged value)? cityChanged,
    TResult Function(_Saved value)? saved,
  }) {
    return nameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_StreetChanged value)? streetChanged,
    TResult Function(_PostalCodeChanged value)? postalCodeChanged,
    TResult Function(_CityChanged value)? cityChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class _NameChanged implements ShopFormEvent {
  const factory _NameChanged(String nameStr) = _$_NameChanged;

  String get nameStr;
  @JsonKey(ignore: true)
  _$NameChangedCopyWith<_NameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$StreetChangedCopyWith<$Res> {
  factory _$StreetChangedCopyWith(
          _StreetChanged value, $Res Function(_StreetChanged) then) =
      __$StreetChangedCopyWithImpl<$Res>;
  $Res call({String streetStr});
}

/// @nodoc
class __$StreetChangedCopyWithImpl<$Res>
    extends _$ShopFormEventCopyWithImpl<$Res>
    implements _$StreetChangedCopyWith<$Res> {
  __$StreetChangedCopyWithImpl(
      _StreetChanged _value, $Res Function(_StreetChanged) _then)
      : super(_value, (v) => _then(v as _StreetChanged));

  @override
  _StreetChanged get _value => super._value as _StreetChanged;

  @override
  $Res call({
    Object? streetStr = freezed,
  }) {
    return _then(_StreetChanged(
      streetStr == freezed
          ? _value.streetStr
          : streetStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_StreetChanged implements _StreetChanged {
  const _$_StreetChanged(this.streetStr);

  @override
  final String streetStr;

  @override
  String toString() {
    return 'ShopFormEvent.streetChanged(streetStr: $streetStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StreetChanged &&
            const DeepCollectionEquality().equals(other.streetStr, streetStr));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(streetStr));

  @JsonKey(ignore: true)
  @override
  _$StreetChangedCopyWith<_StreetChanged> get copyWith =>
      __$StreetChangedCopyWithImpl<_StreetChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String streetStr) streetChanged,
    required TResult Function(String postalCodeStr) postalCodeChanged,
    required TResult Function(String cityStr) cityChanged,
    required TResult Function() saved,
  }) {
    return streetChanged(streetStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String streetStr)? streetChanged,
    TResult Function(String postalCodeStr)? postalCodeChanged,
    TResult Function(String cityStr)? cityChanged,
    TResult Function()? saved,
  }) {
    return streetChanged?.call(streetStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String streetStr)? streetChanged,
    TResult Function(String postalCodeStr)? postalCodeChanged,
    TResult Function(String cityStr)? cityChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (streetChanged != null) {
      return streetChanged(streetStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_StreetChanged value) streetChanged,
    required TResult Function(_PostalCodeChanged value) postalCodeChanged,
    required TResult Function(_CityChanged value) cityChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return streetChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_StreetChanged value)? streetChanged,
    TResult Function(_PostalCodeChanged value)? postalCodeChanged,
    TResult Function(_CityChanged value)? cityChanged,
    TResult Function(_Saved value)? saved,
  }) {
    return streetChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_StreetChanged value)? streetChanged,
    TResult Function(_PostalCodeChanged value)? postalCodeChanged,
    TResult Function(_CityChanged value)? cityChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (streetChanged != null) {
      return streetChanged(this);
    }
    return orElse();
  }
}

abstract class _StreetChanged implements ShopFormEvent {
  const factory _StreetChanged(String streetStr) = _$_StreetChanged;

  String get streetStr;
  @JsonKey(ignore: true)
  _$StreetChangedCopyWith<_StreetChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PostalCodeChangedCopyWith<$Res> {
  factory _$PostalCodeChangedCopyWith(
          _PostalCodeChanged value, $Res Function(_PostalCodeChanged) then) =
      __$PostalCodeChangedCopyWithImpl<$Res>;
  $Res call({String postalCodeStr});
}

/// @nodoc
class __$PostalCodeChangedCopyWithImpl<$Res>
    extends _$ShopFormEventCopyWithImpl<$Res>
    implements _$PostalCodeChangedCopyWith<$Res> {
  __$PostalCodeChangedCopyWithImpl(
      _PostalCodeChanged _value, $Res Function(_PostalCodeChanged) _then)
      : super(_value, (v) => _then(v as _PostalCodeChanged));

  @override
  _PostalCodeChanged get _value => super._value as _PostalCodeChanged;

  @override
  $Res call({
    Object? postalCodeStr = freezed,
  }) {
    return _then(_PostalCodeChanged(
      postalCodeStr == freezed
          ? _value.postalCodeStr
          : postalCodeStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PostalCodeChanged implements _PostalCodeChanged {
  const _$_PostalCodeChanged(this.postalCodeStr);

  @override
  final String postalCodeStr;

  @override
  String toString() {
    return 'ShopFormEvent.postalCodeChanged(postalCodeStr: $postalCodeStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PostalCodeChanged &&
            const DeepCollectionEquality()
                .equals(other.postalCodeStr, postalCodeStr));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(postalCodeStr));

  @JsonKey(ignore: true)
  @override
  _$PostalCodeChangedCopyWith<_PostalCodeChanged> get copyWith =>
      __$PostalCodeChangedCopyWithImpl<_PostalCodeChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String streetStr) streetChanged,
    required TResult Function(String postalCodeStr) postalCodeChanged,
    required TResult Function(String cityStr) cityChanged,
    required TResult Function() saved,
  }) {
    return postalCodeChanged(postalCodeStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String streetStr)? streetChanged,
    TResult Function(String postalCodeStr)? postalCodeChanged,
    TResult Function(String cityStr)? cityChanged,
    TResult Function()? saved,
  }) {
    return postalCodeChanged?.call(postalCodeStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String streetStr)? streetChanged,
    TResult Function(String postalCodeStr)? postalCodeChanged,
    TResult Function(String cityStr)? cityChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (postalCodeChanged != null) {
      return postalCodeChanged(postalCodeStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_StreetChanged value) streetChanged,
    required TResult Function(_PostalCodeChanged value) postalCodeChanged,
    required TResult Function(_CityChanged value) cityChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return postalCodeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_StreetChanged value)? streetChanged,
    TResult Function(_PostalCodeChanged value)? postalCodeChanged,
    TResult Function(_CityChanged value)? cityChanged,
    TResult Function(_Saved value)? saved,
  }) {
    return postalCodeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_StreetChanged value)? streetChanged,
    TResult Function(_PostalCodeChanged value)? postalCodeChanged,
    TResult Function(_CityChanged value)? cityChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (postalCodeChanged != null) {
      return postalCodeChanged(this);
    }
    return orElse();
  }
}

abstract class _PostalCodeChanged implements ShopFormEvent {
  const factory _PostalCodeChanged(String postalCodeStr) = _$_PostalCodeChanged;

  String get postalCodeStr;
  @JsonKey(ignore: true)
  _$PostalCodeChangedCopyWith<_PostalCodeChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CityChangedCopyWith<$Res> {
  factory _$CityChangedCopyWith(
          _CityChanged value, $Res Function(_CityChanged) then) =
      __$CityChangedCopyWithImpl<$Res>;
  $Res call({String cityStr});
}

/// @nodoc
class __$CityChangedCopyWithImpl<$Res> extends _$ShopFormEventCopyWithImpl<$Res>
    implements _$CityChangedCopyWith<$Res> {
  __$CityChangedCopyWithImpl(
      _CityChanged _value, $Res Function(_CityChanged) _then)
      : super(_value, (v) => _then(v as _CityChanged));

  @override
  _CityChanged get _value => super._value as _CityChanged;

  @override
  $Res call({
    Object? cityStr = freezed,
  }) {
    return _then(_CityChanged(
      cityStr == freezed
          ? _value.cityStr
          : cityStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CityChanged implements _CityChanged {
  const _$_CityChanged(this.cityStr);

  @override
  final String cityStr;

  @override
  String toString() {
    return 'ShopFormEvent.cityChanged(cityStr: $cityStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CityChanged &&
            const DeepCollectionEquality().equals(other.cityStr, cityStr));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(cityStr));

  @JsonKey(ignore: true)
  @override
  _$CityChangedCopyWith<_CityChanged> get copyWith =>
      __$CityChangedCopyWithImpl<_CityChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String streetStr) streetChanged,
    required TResult Function(String postalCodeStr) postalCodeChanged,
    required TResult Function(String cityStr) cityChanged,
    required TResult Function() saved,
  }) {
    return cityChanged(cityStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String streetStr)? streetChanged,
    TResult Function(String postalCodeStr)? postalCodeChanged,
    TResult Function(String cityStr)? cityChanged,
    TResult Function()? saved,
  }) {
    return cityChanged?.call(cityStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String streetStr)? streetChanged,
    TResult Function(String postalCodeStr)? postalCodeChanged,
    TResult Function(String cityStr)? cityChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (cityChanged != null) {
      return cityChanged(cityStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_StreetChanged value) streetChanged,
    required TResult Function(_PostalCodeChanged value) postalCodeChanged,
    required TResult Function(_CityChanged value) cityChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return cityChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_StreetChanged value)? streetChanged,
    TResult Function(_PostalCodeChanged value)? postalCodeChanged,
    TResult Function(_CityChanged value)? cityChanged,
    TResult Function(_Saved value)? saved,
  }) {
    return cityChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_StreetChanged value)? streetChanged,
    TResult Function(_PostalCodeChanged value)? postalCodeChanged,
    TResult Function(_CityChanged value)? cityChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (cityChanged != null) {
      return cityChanged(this);
    }
    return orElse();
  }
}

abstract class _CityChanged implements ShopFormEvent {
  const factory _CityChanged(String cityStr) = _$_CityChanged;

  String get cityStr;
  @JsonKey(ignore: true)
  _$CityChangedCopyWith<_CityChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SavedCopyWith<$Res> {
  factory _$SavedCopyWith(_Saved value, $Res Function(_Saved) then) =
      __$SavedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SavedCopyWithImpl<$Res> extends _$ShopFormEventCopyWithImpl<$Res>
    implements _$SavedCopyWith<$Res> {
  __$SavedCopyWithImpl(_Saved _value, $Res Function(_Saved) _then)
      : super(_value, (v) => _then(v as _Saved));

  @override
  _Saved get _value => super._value as _Saved;
}

/// @nodoc

class _$_Saved implements _Saved {
  const _$_Saved();

  @override
  String toString() {
    return 'ShopFormEvent.saved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Saved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String streetStr) streetChanged,
    required TResult Function(String postalCodeStr) postalCodeChanged,
    required TResult Function(String cityStr) cityChanged,
    required TResult Function() saved,
  }) {
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String streetStr)? streetChanged,
    TResult Function(String postalCodeStr)? postalCodeChanged,
    TResult Function(String cityStr)? cityChanged,
    TResult Function()? saved,
  }) {
    return saved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String streetStr)? streetChanged,
    TResult Function(String postalCodeStr)? postalCodeChanged,
    TResult Function(String cityStr)? cityChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_StreetChanged value) streetChanged,
    required TResult Function(_PostalCodeChanged value) postalCodeChanged,
    required TResult Function(_CityChanged value) cityChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_StreetChanged value)? streetChanged,
    TResult Function(_PostalCodeChanged value)? postalCodeChanged,
    TResult Function(_CityChanged value)? cityChanged,
    TResult Function(_Saved value)? saved,
  }) {
    return saved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_StreetChanged value)? streetChanged,
    TResult Function(_PostalCodeChanged value)? postalCodeChanged,
    TResult Function(_CityChanged value)? cityChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _Saved implements ShopFormEvent {
  const factory _Saved() = _$_Saved;
}

/// @nodoc
class _$ShopFormStateTearOff {
  const _$ShopFormStateTearOff();

  _ShopFormState call(
      {required Shop shop,
      required bool showErrorMessages,
      required bool isSaving,
      required Option<Either<ShopFailure, Unit>> saveFailureOrSuccessOption}) {
    return _ShopFormState(
      shop: shop,
      showErrorMessages: showErrorMessages,
      isSaving: isSaving,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption,
    );
  }
}

/// @nodoc
const $ShopFormState = _$ShopFormStateTearOff();

/// @nodoc
mixin _$ShopFormState {
  Shop get shop => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isSaving => throw _privateConstructorUsedError;
  Option<Either<ShopFailure, Unit>> get saveFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShopFormStateCopyWith<ShopFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopFormStateCopyWith<$Res> {
  factory $ShopFormStateCopyWith(
          ShopFormState value, $Res Function(ShopFormState) then) =
      _$ShopFormStateCopyWithImpl<$Res>;
  $Res call(
      {Shop shop,
      bool showErrorMessages,
      bool isSaving,
      Option<Either<ShopFailure, Unit>> saveFailureOrSuccessOption});

  $ShopCopyWith<$Res> get shop;
}

/// @nodoc
class _$ShopFormStateCopyWithImpl<$Res>
    implements $ShopFormStateCopyWith<$Res> {
  _$ShopFormStateCopyWithImpl(this._value, this._then);

  final ShopFormState _value;
  // ignore: unused_field
  final $Res Function(ShopFormState) _then;

  @override
  $Res call({
    Object? shop = freezed,
    Object? showErrorMessages = freezed,
    Object? isSaving = freezed,
    Object? saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      shop: shop == freezed
          ? _value.shop
          : shop // ignore: cast_nullable_to_non_nullable
              as Shop,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
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
abstract class _$ShopFormStateCopyWith<$Res>
    implements $ShopFormStateCopyWith<$Res> {
  factory _$ShopFormStateCopyWith(
          _ShopFormState value, $Res Function(_ShopFormState) then) =
      __$ShopFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Shop shop,
      bool showErrorMessages,
      bool isSaving,
      Option<Either<ShopFailure, Unit>> saveFailureOrSuccessOption});

  @override
  $ShopCopyWith<$Res> get shop;
}

/// @nodoc
class __$ShopFormStateCopyWithImpl<$Res>
    extends _$ShopFormStateCopyWithImpl<$Res>
    implements _$ShopFormStateCopyWith<$Res> {
  __$ShopFormStateCopyWithImpl(
      _ShopFormState _value, $Res Function(_ShopFormState) _then)
      : super(_value, (v) => _then(v as _ShopFormState));

  @override
  _ShopFormState get _value => super._value as _ShopFormState;

  @override
  $Res call({
    Object? shop = freezed,
    Object? showErrorMessages = freezed,
    Object? isSaving = freezed,
    Object? saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_ShopFormState(
      shop: shop == freezed
          ? _value.shop
          : shop // ignore: cast_nullable_to_non_nullable
              as Shop,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
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

class _$_ShopFormState implements _ShopFormState {
  const _$_ShopFormState(
      {required this.shop,
      required this.showErrorMessages,
      required this.isSaving,
      required this.saveFailureOrSuccessOption});

  @override
  final Shop shop;
  @override
  final bool showErrorMessages;
  @override
  final bool isSaving;
  @override
  final Option<Either<ShopFailure, Unit>> saveFailureOrSuccessOption;

  @override
  String toString() {
    return 'ShopFormState(shop: $shop, showErrorMessages: $showErrorMessages, isSaving: $isSaving, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ShopFormState &&
            const DeepCollectionEquality().equals(other.shop, shop) &&
            const DeepCollectionEquality()
                .equals(other.showErrorMessages, showErrorMessages) &&
            const DeepCollectionEquality().equals(other.isSaving, isSaving) &&
            const DeepCollectionEquality().equals(
                other.saveFailureOrSuccessOption, saveFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(shop),
      const DeepCollectionEquality().hash(showErrorMessages),
      const DeepCollectionEquality().hash(isSaving),
      const DeepCollectionEquality().hash(saveFailureOrSuccessOption));

  @JsonKey(ignore: true)
  @override
  _$ShopFormStateCopyWith<_ShopFormState> get copyWith =>
      __$ShopFormStateCopyWithImpl<_ShopFormState>(this, _$identity);
}

abstract class _ShopFormState implements ShopFormState {
  const factory _ShopFormState(
      {required Shop shop,
      required bool showErrorMessages,
      required bool isSaving,
      required Option<Either<ShopFailure, Unit>>
          saveFailureOrSuccessOption}) = _$_ShopFormState;

  @override
  Shop get shop;
  @override
  bool get showErrorMessages;
  @override
  bool get isSaving;
  @override
  Option<Either<ShopFailure, Unit>> get saveFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$ShopFormStateCopyWith<_ShopFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
