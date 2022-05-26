// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
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

  _StreetNameChanged streetNameChanged(String streetNameStr) {
    return _StreetNameChanged(
      streetNameStr,
    );
  }

  _StreetNumberChanged streetNumberChanged(String streetNumberStr) {
    return _StreetNumberChanged(
      streetNumberStr,
    );
  }

  _ApartmentNumberChanged apartmentNumberChanged(String apartmentNumberStr) {
    return _ApartmentNumberChanged(
      apartmentNumberStr,
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

  _Proceeded proceeded() {
    return const _Proceeded();
  }
}

/// @nodoc
const $ShopFormEvent = _$ShopFormEventTearOff();

/// @nodoc
mixin _$ShopFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String streetNameStr) streetNameChanged,
    required TResult Function(String streetNumberStr) streetNumberChanged,
    required TResult Function(String apartmentNumberStr) apartmentNumberChanged,
    required TResult Function(String postalCodeStr) postalCodeChanged,
    required TResult Function(String cityStr) cityChanged,
    required TResult Function() proceeded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String streetNameStr)? streetNameChanged,
    TResult Function(String streetNumberStr)? streetNumberChanged,
    TResult Function(String apartmentNumberStr)? apartmentNumberChanged,
    TResult Function(String postalCodeStr)? postalCodeChanged,
    TResult Function(String cityStr)? cityChanged,
    TResult Function()? proceeded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String streetNameStr)? streetNameChanged,
    TResult Function(String streetNumberStr)? streetNumberChanged,
    TResult Function(String apartmentNumberStr)? apartmentNumberChanged,
    TResult Function(String postalCodeStr)? postalCodeChanged,
    TResult Function(String cityStr)? cityChanged,
    TResult Function()? proceeded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_StreetNameChanged value) streetNameChanged,
    required TResult Function(_StreetNumberChanged value) streetNumberChanged,
    required TResult Function(_ApartmentNumberChanged value)
        apartmentNumberChanged,
    required TResult Function(_PostalCodeChanged value) postalCodeChanged,
    required TResult Function(_CityChanged value) cityChanged,
    required TResult Function(_Proceeded value) proceeded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_StreetNameChanged value)? streetNameChanged,
    TResult Function(_StreetNumberChanged value)? streetNumberChanged,
    TResult Function(_ApartmentNumberChanged value)? apartmentNumberChanged,
    TResult Function(_PostalCodeChanged value)? postalCodeChanged,
    TResult Function(_CityChanged value)? cityChanged,
    TResult Function(_Proceeded value)? proceeded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_StreetNameChanged value)? streetNameChanged,
    TResult Function(_StreetNumberChanged value)? streetNumberChanged,
    TResult Function(_ApartmentNumberChanged value)? apartmentNumberChanged,
    TResult Function(_PostalCodeChanged value)? postalCodeChanged,
    TResult Function(_CityChanged value)? cityChanged,
    TResult Function(_Proceeded value)? proceeded,
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
    required TResult Function(String streetNameStr) streetNameChanged,
    required TResult Function(String streetNumberStr) streetNumberChanged,
    required TResult Function(String apartmentNumberStr) apartmentNumberChanged,
    required TResult Function(String postalCodeStr) postalCodeChanged,
    required TResult Function(String cityStr) cityChanged,
    required TResult Function() proceeded,
  }) {
    return nameChanged(nameStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String streetNameStr)? streetNameChanged,
    TResult Function(String streetNumberStr)? streetNumberChanged,
    TResult Function(String apartmentNumberStr)? apartmentNumberChanged,
    TResult Function(String postalCodeStr)? postalCodeChanged,
    TResult Function(String cityStr)? cityChanged,
    TResult Function()? proceeded,
  }) {
    return nameChanged?.call(nameStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String streetNameStr)? streetNameChanged,
    TResult Function(String streetNumberStr)? streetNumberChanged,
    TResult Function(String apartmentNumberStr)? apartmentNumberChanged,
    TResult Function(String postalCodeStr)? postalCodeChanged,
    TResult Function(String cityStr)? cityChanged,
    TResult Function()? proceeded,
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
    required TResult Function(_StreetNameChanged value) streetNameChanged,
    required TResult Function(_StreetNumberChanged value) streetNumberChanged,
    required TResult Function(_ApartmentNumberChanged value)
        apartmentNumberChanged,
    required TResult Function(_PostalCodeChanged value) postalCodeChanged,
    required TResult Function(_CityChanged value) cityChanged,
    required TResult Function(_Proceeded value) proceeded,
  }) {
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_StreetNameChanged value)? streetNameChanged,
    TResult Function(_StreetNumberChanged value)? streetNumberChanged,
    TResult Function(_ApartmentNumberChanged value)? apartmentNumberChanged,
    TResult Function(_PostalCodeChanged value)? postalCodeChanged,
    TResult Function(_CityChanged value)? cityChanged,
    TResult Function(_Proceeded value)? proceeded,
  }) {
    return nameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_StreetNameChanged value)? streetNameChanged,
    TResult Function(_StreetNumberChanged value)? streetNumberChanged,
    TResult Function(_ApartmentNumberChanged value)? apartmentNumberChanged,
    TResult Function(_PostalCodeChanged value)? postalCodeChanged,
    TResult Function(_CityChanged value)? cityChanged,
    TResult Function(_Proceeded value)? proceeded,
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
abstract class _$StreetNameChangedCopyWith<$Res> {
  factory _$StreetNameChangedCopyWith(
          _StreetNameChanged value, $Res Function(_StreetNameChanged) then) =
      __$StreetNameChangedCopyWithImpl<$Res>;
  $Res call({String streetNameStr});
}

/// @nodoc
class __$StreetNameChangedCopyWithImpl<$Res>
    extends _$ShopFormEventCopyWithImpl<$Res>
    implements _$StreetNameChangedCopyWith<$Res> {
  __$StreetNameChangedCopyWithImpl(
      _StreetNameChanged _value, $Res Function(_StreetNameChanged) _then)
      : super(_value, (v) => _then(v as _StreetNameChanged));

  @override
  _StreetNameChanged get _value => super._value as _StreetNameChanged;

  @override
  $Res call({
    Object? streetNameStr = freezed,
  }) {
    return _then(_StreetNameChanged(
      streetNameStr == freezed
          ? _value.streetNameStr
          : streetNameStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_StreetNameChanged implements _StreetNameChanged {
  const _$_StreetNameChanged(this.streetNameStr);

  @override
  final String streetNameStr;

  @override
  String toString() {
    return 'ShopFormEvent.streetNameChanged(streetNameStr: $streetNameStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StreetNameChanged &&
            const DeepCollectionEquality()
                .equals(other.streetNameStr, streetNameStr));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(streetNameStr));

  @JsonKey(ignore: true)
  @override
  _$StreetNameChangedCopyWith<_StreetNameChanged> get copyWith =>
      __$StreetNameChangedCopyWithImpl<_StreetNameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String streetNameStr) streetNameChanged,
    required TResult Function(String streetNumberStr) streetNumberChanged,
    required TResult Function(String apartmentNumberStr) apartmentNumberChanged,
    required TResult Function(String postalCodeStr) postalCodeChanged,
    required TResult Function(String cityStr) cityChanged,
    required TResult Function() proceeded,
  }) {
    return streetNameChanged(streetNameStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String streetNameStr)? streetNameChanged,
    TResult Function(String streetNumberStr)? streetNumberChanged,
    TResult Function(String apartmentNumberStr)? apartmentNumberChanged,
    TResult Function(String postalCodeStr)? postalCodeChanged,
    TResult Function(String cityStr)? cityChanged,
    TResult Function()? proceeded,
  }) {
    return streetNameChanged?.call(streetNameStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String streetNameStr)? streetNameChanged,
    TResult Function(String streetNumberStr)? streetNumberChanged,
    TResult Function(String apartmentNumberStr)? apartmentNumberChanged,
    TResult Function(String postalCodeStr)? postalCodeChanged,
    TResult Function(String cityStr)? cityChanged,
    TResult Function()? proceeded,
    required TResult orElse(),
  }) {
    if (streetNameChanged != null) {
      return streetNameChanged(streetNameStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_StreetNameChanged value) streetNameChanged,
    required TResult Function(_StreetNumberChanged value) streetNumberChanged,
    required TResult Function(_ApartmentNumberChanged value)
        apartmentNumberChanged,
    required TResult Function(_PostalCodeChanged value) postalCodeChanged,
    required TResult Function(_CityChanged value) cityChanged,
    required TResult Function(_Proceeded value) proceeded,
  }) {
    return streetNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_StreetNameChanged value)? streetNameChanged,
    TResult Function(_StreetNumberChanged value)? streetNumberChanged,
    TResult Function(_ApartmentNumberChanged value)? apartmentNumberChanged,
    TResult Function(_PostalCodeChanged value)? postalCodeChanged,
    TResult Function(_CityChanged value)? cityChanged,
    TResult Function(_Proceeded value)? proceeded,
  }) {
    return streetNameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_StreetNameChanged value)? streetNameChanged,
    TResult Function(_StreetNumberChanged value)? streetNumberChanged,
    TResult Function(_ApartmentNumberChanged value)? apartmentNumberChanged,
    TResult Function(_PostalCodeChanged value)? postalCodeChanged,
    TResult Function(_CityChanged value)? cityChanged,
    TResult Function(_Proceeded value)? proceeded,
    required TResult orElse(),
  }) {
    if (streetNameChanged != null) {
      return streetNameChanged(this);
    }
    return orElse();
  }
}

abstract class _StreetNameChanged implements ShopFormEvent {
  const factory _StreetNameChanged(String streetNameStr) = _$_StreetNameChanged;

  String get streetNameStr;
  @JsonKey(ignore: true)
  _$StreetNameChangedCopyWith<_StreetNameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$StreetNumberChangedCopyWith<$Res> {
  factory _$StreetNumberChangedCopyWith(_StreetNumberChanged value,
          $Res Function(_StreetNumberChanged) then) =
      __$StreetNumberChangedCopyWithImpl<$Res>;
  $Res call({String streetNumberStr});
}

/// @nodoc
class __$StreetNumberChangedCopyWithImpl<$Res>
    extends _$ShopFormEventCopyWithImpl<$Res>
    implements _$StreetNumberChangedCopyWith<$Res> {
  __$StreetNumberChangedCopyWithImpl(
      _StreetNumberChanged _value, $Res Function(_StreetNumberChanged) _then)
      : super(_value, (v) => _then(v as _StreetNumberChanged));

  @override
  _StreetNumberChanged get _value => super._value as _StreetNumberChanged;

  @override
  $Res call({
    Object? streetNumberStr = freezed,
  }) {
    return _then(_StreetNumberChanged(
      streetNumberStr == freezed
          ? _value.streetNumberStr
          : streetNumberStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_StreetNumberChanged implements _StreetNumberChanged {
  const _$_StreetNumberChanged(this.streetNumberStr);

  @override
  final String streetNumberStr;

  @override
  String toString() {
    return 'ShopFormEvent.streetNumberChanged(streetNumberStr: $streetNumberStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StreetNumberChanged &&
            const DeepCollectionEquality()
                .equals(other.streetNumberStr, streetNumberStr));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(streetNumberStr));

  @JsonKey(ignore: true)
  @override
  _$StreetNumberChangedCopyWith<_StreetNumberChanged> get copyWith =>
      __$StreetNumberChangedCopyWithImpl<_StreetNumberChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String streetNameStr) streetNameChanged,
    required TResult Function(String streetNumberStr) streetNumberChanged,
    required TResult Function(String apartmentNumberStr) apartmentNumberChanged,
    required TResult Function(String postalCodeStr) postalCodeChanged,
    required TResult Function(String cityStr) cityChanged,
    required TResult Function() proceeded,
  }) {
    return streetNumberChanged(streetNumberStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String streetNameStr)? streetNameChanged,
    TResult Function(String streetNumberStr)? streetNumberChanged,
    TResult Function(String apartmentNumberStr)? apartmentNumberChanged,
    TResult Function(String postalCodeStr)? postalCodeChanged,
    TResult Function(String cityStr)? cityChanged,
    TResult Function()? proceeded,
  }) {
    return streetNumberChanged?.call(streetNumberStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String streetNameStr)? streetNameChanged,
    TResult Function(String streetNumberStr)? streetNumberChanged,
    TResult Function(String apartmentNumberStr)? apartmentNumberChanged,
    TResult Function(String postalCodeStr)? postalCodeChanged,
    TResult Function(String cityStr)? cityChanged,
    TResult Function()? proceeded,
    required TResult orElse(),
  }) {
    if (streetNumberChanged != null) {
      return streetNumberChanged(streetNumberStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_StreetNameChanged value) streetNameChanged,
    required TResult Function(_StreetNumberChanged value) streetNumberChanged,
    required TResult Function(_ApartmentNumberChanged value)
        apartmentNumberChanged,
    required TResult Function(_PostalCodeChanged value) postalCodeChanged,
    required TResult Function(_CityChanged value) cityChanged,
    required TResult Function(_Proceeded value) proceeded,
  }) {
    return streetNumberChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_StreetNameChanged value)? streetNameChanged,
    TResult Function(_StreetNumberChanged value)? streetNumberChanged,
    TResult Function(_ApartmentNumberChanged value)? apartmentNumberChanged,
    TResult Function(_PostalCodeChanged value)? postalCodeChanged,
    TResult Function(_CityChanged value)? cityChanged,
    TResult Function(_Proceeded value)? proceeded,
  }) {
    return streetNumberChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_StreetNameChanged value)? streetNameChanged,
    TResult Function(_StreetNumberChanged value)? streetNumberChanged,
    TResult Function(_ApartmentNumberChanged value)? apartmentNumberChanged,
    TResult Function(_PostalCodeChanged value)? postalCodeChanged,
    TResult Function(_CityChanged value)? cityChanged,
    TResult Function(_Proceeded value)? proceeded,
    required TResult orElse(),
  }) {
    if (streetNumberChanged != null) {
      return streetNumberChanged(this);
    }
    return orElse();
  }
}

abstract class _StreetNumberChanged implements ShopFormEvent {
  const factory _StreetNumberChanged(String streetNumberStr) =
      _$_StreetNumberChanged;

  String get streetNumberStr;
  @JsonKey(ignore: true)
  _$StreetNumberChangedCopyWith<_StreetNumberChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ApartmentNumberChangedCopyWith<$Res> {
  factory _$ApartmentNumberChangedCopyWith(_ApartmentNumberChanged value,
          $Res Function(_ApartmentNumberChanged) then) =
      __$ApartmentNumberChangedCopyWithImpl<$Res>;
  $Res call({String apartmentNumberStr});
}

/// @nodoc
class __$ApartmentNumberChangedCopyWithImpl<$Res>
    extends _$ShopFormEventCopyWithImpl<$Res>
    implements _$ApartmentNumberChangedCopyWith<$Res> {
  __$ApartmentNumberChangedCopyWithImpl(_ApartmentNumberChanged _value,
      $Res Function(_ApartmentNumberChanged) _then)
      : super(_value, (v) => _then(v as _ApartmentNumberChanged));

  @override
  _ApartmentNumberChanged get _value => super._value as _ApartmentNumberChanged;

  @override
  $Res call({
    Object? apartmentNumberStr = freezed,
  }) {
    return _then(_ApartmentNumberChanged(
      apartmentNumberStr == freezed
          ? _value.apartmentNumberStr
          : apartmentNumberStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ApartmentNumberChanged implements _ApartmentNumberChanged {
  const _$_ApartmentNumberChanged(this.apartmentNumberStr);

  @override
  final String apartmentNumberStr;

  @override
  String toString() {
    return 'ShopFormEvent.apartmentNumberChanged(apartmentNumberStr: $apartmentNumberStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ApartmentNumberChanged &&
            const DeepCollectionEquality()
                .equals(other.apartmentNumberStr, apartmentNumberStr));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(apartmentNumberStr));

  @JsonKey(ignore: true)
  @override
  _$ApartmentNumberChangedCopyWith<_ApartmentNumberChanged> get copyWith =>
      __$ApartmentNumberChangedCopyWithImpl<_ApartmentNumberChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String streetNameStr) streetNameChanged,
    required TResult Function(String streetNumberStr) streetNumberChanged,
    required TResult Function(String apartmentNumberStr) apartmentNumberChanged,
    required TResult Function(String postalCodeStr) postalCodeChanged,
    required TResult Function(String cityStr) cityChanged,
    required TResult Function() proceeded,
  }) {
    return apartmentNumberChanged(apartmentNumberStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String streetNameStr)? streetNameChanged,
    TResult Function(String streetNumberStr)? streetNumberChanged,
    TResult Function(String apartmentNumberStr)? apartmentNumberChanged,
    TResult Function(String postalCodeStr)? postalCodeChanged,
    TResult Function(String cityStr)? cityChanged,
    TResult Function()? proceeded,
  }) {
    return apartmentNumberChanged?.call(apartmentNumberStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String streetNameStr)? streetNameChanged,
    TResult Function(String streetNumberStr)? streetNumberChanged,
    TResult Function(String apartmentNumberStr)? apartmentNumberChanged,
    TResult Function(String postalCodeStr)? postalCodeChanged,
    TResult Function(String cityStr)? cityChanged,
    TResult Function()? proceeded,
    required TResult orElse(),
  }) {
    if (apartmentNumberChanged != null) {
      return apartmentNumberChanged(apartmentNumberStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_StreetNameChanged value) streetNameChanged,
    required TResult Function(_StreetNumberChanged value) streetNumberChanged,
    required TResult Function(_ApartmentNumberChanged value)
        apartmentNumberChanged,
    required TResult Function(_PostalCodeChanged value) postalCodeChanged,
    required TResult Function(_CityChanged value) cityChanged,
    required TResult Function(_Proceeded value) proceeded,
  }) {
    return apartmentNumberChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_StreetNameChanged value)? streetNameChanged,
    TResult Function(_StreetNumberChanged value)? streetNumberChanged,
    TResult Function(_ApartmentNumberChanged value)? apartmentNumberChanged,
    TResult Function(_PostalCodeChanged value)? postalCodeChanged,
    TResult Function(_CityChanged value)? cityChanged,
    TResult Function(_Proceeded value)? proceeded,
  }) {
    return apartmentNumberChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_StreetNameChanged value)? streetNameChanged,
    TResult Function(_StreetNumberChanged value)? streetNumberChanged,
    TResult Function(_ApartmentNumberChanged value)? apartmentNumberChanged,
    TResult Function(_PostalCodeChanged value)? postalCodeChanged,
    TResult Function(_CityChanged value)? cityChanged,
    TResult Function(_Proceeded value)? proceeded,
    required TResult orElse(),
  }) {
    if (apartmentNumberChanged != null) {
      return apartmentNumberChanged(this);
    }
    return orElse();
  }
}

abstract class _ApartmentNumberChanged implements ShopFormEvent {
  const factory _ApartmentNumberChanged(String apartmentNumberStr) =
      _$_ApartmentNumberChanged;

  String get apartmentNumberStr;
  @JsonKey(ignore: true)
  _$ApartmentNumberChangedCopyWith<_ApartmentNumberChanged> get copyWith =>
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
    required TResult Function(String streetNameStr) streetNameChanged,
    required TResult Function(String streetNumberStr) streetNumberChanged,
    required TResult Function(String apartmentNumberStr) apartmentNumberChanged,
    required TResult Function(String postalCodeStr) postalCodeChanged,
    required TResult Function(String cityStr) cityChanged,
    required TResult Function() proceeded,
  }) {
    return postalCodeChanged(postalCodeStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String streetNameStr)? streetNameChanged,
    TResult Function(String streetNumberStr)? streetNumberChanged,
    TResult Function(String apartmentNumberStr)? apartmentNumberChanged,
    TResult Function(String postalCodeStr)? postalCodeChanged,
    TResult Function(String cityStr)? cityChanged,
    TResult Function()? proceeded,
  }) {
    return postalCodeChanged?.call(postalCodeStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String streetNameStr)? streetNameChanged,
    TResult Function(String streetNumberStr)? streetNumberChanged,
    TResult Function(String apartmentNumberStr)? apartmentNumberChanged,
    TResult Function(String postalCodeStr)? postalCodeChanged,
    TResult Function(String cityStr)? cityChanged,
    TResult Function()? proceeded,
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
    required TResult Function(_StreetNameChanged value) streetNameChanged,
    required TResult Function(_StreetNumberChanged value) streetNumberChanged,
    required TResult Function(_ApartmentNumberChanged value)
        apartmentNumberChanged,
    required TResult Function(_PostalCodeChanged value) postalCodeChanged,
    required TResult Function(_CityChanged value) cityChanged,
    required TResult Function(_Proceeded value) proceeded,
  }) {
    return postalCodeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_StreetNameChanged value)? streetNameChanged,
    TResult Function(_StreetNumberChanged value)? streetNumberChanged,
    TResult Function(_ApartmentNumberChanged value)? apartmentNumberChanged,
    TResult Function(_PostalCodeChanged value)? postalCodeChanged,
    TResult Function(_CityChanged value)? cityChanged,
    TResult Function(_Proceeded value)? proceeded,
  }) {
    return postalCodeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_StreetNameChanged value)? streetNameChanged,
    TResult Function(_StreetNumberChanged value)? streetNumberChanged,
    TResult Function(_ApartmentNumberChanged value)? apartmentNumberChanged,
    TResult Function(_PostalCodeChanged value)? postalCodeChanged,
    TResult Function(_CityChanged value)? cityChanged,
    TResult Function(_Proceeded value)? proceeded,
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
    required TResult Function(String streetNameStr) streetNameChanged,
    required TResult Function(String streetNumberStr) streetNumberChanged,
    required TResult Function(String apartmentNumberStr) apartmentNumberChanged,
    required TResult Function(String postalCodeStr) postalCodeChanged,
    required TResult Function(String cityStr) cityChanged,
    required TResult Function() proceeded,
  }) {
    return cityChanged(cityStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String streetNameStr)? streetNameChanged,
    TResult Function(String streetNumberStr)? streetNumberChanged,
    TResult Function(String apartmentNumberStr)? apartmentNumberChanged,
    TResult Function(String postalCodeStr)? postalCodeChanged,
    TResult Function(String cityStr)? cityChanged,
    TResult Function()? proceeded,
  }) {
    return cityChanged?.call(cityStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String streetNameStr)? streetNameChanged,
    TResult Function(String streetNumberStr)? streetNumberChanged,
    TResult Function(String apartmentNumberStr)? apartmentNumberChanged,
    TResult Function(String postalCodeStr)? postalCodeChanged,
    TResult Function(String cityStr)? cityChanged,
    TResult Function()? proceeded,
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
    required TResult Function(_StreetNameChanged value) streetNameChanged,
    required TResult Function(_StreetNumberChanged value) streetNumberChanged,
    required TResult Function(_ApartmentNumberChanged value)
        apartmentNumberChanged,
    required TResult Function(_PostalCodeChanged value) postalCodeChanged,
    required TResult Function(_CityChanged value) cityChanged,
    required TResult Function(_Proceeded value) proceeded,
  }) {
    return cityChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_StreetNameChanged value)? streetNameChanged,
    TResult Function(_StreetNumberChanged value)? streetNumberChanged,
    TResult Function(_ApartmentNumberChanged value)? apartmentNumberChanged,
    TResult Function(_PostalCodeChanged value)? postalCodeChanged,
    TResult Function(_CityChanged value)? cityChanged,
    TResult Function(_Proceeded value)? proceeded,
  }) {
    return cityChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_StreetNameChanged value)? streetNameChanged,
    TResult Function(_StreetNumberChanged value)? streetNumberChanged,
    TResult Function(_ApartmentNumberChanged value)? apartmentNumberChanged,
    TResult Function(_PostalCodeChanged value)? postalCodeChanged,
    TResult Function(_CityChanged value)? cityChanged,
    TResult Function(_Proceeded value)? proceeded,
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
abstract class _$ProceededCopyWith<$Res> {
  factory _$ProceededCopyWith(
          _Proceeded value, $Res Function(_Proceeded) then) =
      __$ProceededCopyWithImpl<$Res>;
}

/// @nodoc
class __$ProceededCopyWithImpl<$Res> extends _$ShopFormEventCopyWithImpl<$Res>
    implements _$ProceededCopyWith<$Res> {
  __$ProceededCopyWithImpl(_Proceeded _value, $Res Function(_Proceeded) _then)
      : super(_value, (v) => _then(v as _Proceeded));

  @override
  _Proceeded get _value => super._value as _Proceeded;
}

/// @nodoc

class _$_Proceeded implements _Proceeded {
  const _$_Proceeded();

  @override
  String toString() {
    return 'ShopFormEvent.proceeded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Proceeded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String streetNameStr) streetNameChanged,
    required TResult Function(String streetNumberStr) streetNumberChanged,
    required TResult Function(String apartmentNumberStr) apartmentNumberChanged,
    required TResult Function(String postalCodeStr) postalCodeChanged,
    required TResult Function(String cityStr) cityChanged,
    required TResult Function() proceeded,
  }) {
    return proceeded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String streetNameStr)? streetNameChanged,
    TResult Function(String streetNumberStr)? streetNumberChanged,
    TResult Function(String apartmentNumberStr)? apartmentNumberChanged,
    TResult Function(String postalCodeStr)? postalCodeChanged,
    TResult Function(String cityStr)? cityChanged,
    TResult Function()? proceeded,
  }) {
    return proceeded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String streetNameStr)? streetNameChanged,
    TResult Function(String streetNumberStr)? streetNumberChanged,
    TResult Function(String apartmentNumberStr)? apartmentNumberChanged,
    TResult Function(String postalCodeStr)? postalCodeChanged,
    TResult Function(String cityStr)? cityChanged,
    TResult Function()? proceeded,
    required TResult orElse(),
  }) {
    if (proceeded != null) {
      return proceeded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_StreetNameChanged value) streetNameChanged,
    required TResult Function(_StreetNumberChanged value) streetNumberChanged,
    required TResult Function(_ApartmentNumberChanged value)
        apartmentNumberChanged,
    required TResult Function(_PostalCodeChanged value) postalCodeChanged,
    required TResult Function(_CityChanged value) cityChanged,
    required TResult Function(_Proceeded value) proceeded,
  }) {
    return proceeded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_StreetNameChanged value)? streetNameChanged,
    TResult Function(_StreetNumberChanged value)? streetNumberChanged,
    TResult Function(_ApartmentNumberChanged value)? apartmentNumberChanged,
    TResult Function(_PostalCodeChanged value)? postalCodeChanged,
    TResult Function(_CityChanged value)? cityChanged,
    TResult Function(_Proceeded value)? proceeded,
  }) {
    return proceeded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_StreetNameChanged value)? streetNameChanged,
    TResult Function(_StreetNumberChanged value)? streetNumberChanged,
    TResult Function(_ApartmentNumberChanged value)? apartmentNumberChanged,
    TResult Function(_PostalCodeChanged value)? postalCodeChanged,
    TResult Function(_CityChanged value)? cityChanged,
    TResult Function(_Proceeded value)? proceeded,
    required TResult orElse(),
  }) {
    if (proceeded != null) {
      return proceeded(this);
    }
    return orElse();
  }
}

abstract class _Proceeded implements ShopFormEvent {
  const factory _Proceeded() = _$_Proceeded;
}

/// @nodoc
class _$ShopFormStateTearOff {
  const _$ShopFormStateTearOff();

  _ShopFormState call(
      {required ShopForm shop,
      required bool showErrorMessages,
      required bool saved}) {
    return _ShopFormState(
      shop: shop,
      showErrorMessages: showErrorMessages,
      saved: saved,
    );
  }
}

/// @nodoc
const $ShopFormState = _$ShopFormStateTearOff();

/// @nodoc
mixin _$ShopFormState {
  ShopForm get shop => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get saved => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShopFormStateCopyWith<ShopFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopFormStateCopyWith<$Res> {
  factory $ShopFormStateCopyWith(
          ShopFormState value, $Res Function(ShopFormState) then) =
      _$ShopFormStateCopyWithImpl<$Res>;
  $Res call({ShopForm shop, bool showErrorMessages, bool saved});

  $ShopFormCopyWith<$Res> get shop;
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
    Object? saved = freezed,
  }) {
    return _then(_value.copyWith(
      shop: shop == freezed
          ? _value.shop
          : shop // ignore: cast_nullable_to_non_nullable
              as ShopForm,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      saved: saved == freezed
          ? _value.saved
          : saved // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $ShopFormCopyWith<$Res> get shop {
    return $ShopFormCopyWith<$Res>(_value.shop, (value) {
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
  $Res call({ShopForm shop, bool showErrorMessages, bool saved});

  @override
  $ShopFormCopyWith<$Res> get shop;
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
    Object? saved = freezed,
  }) {
    return _then(_ShopFormState(
      shop: shop == freezed
          ? _value.shop
          : shop // ignore: cast_nullable_to_non_nullable
              as ShopForm,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      saved: saved == freezed
          ? _value.saved
          : saved // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ShopFormState implements _ShopFormState {
  const _$_ShopFormState(
      {required this.shop,
      required this.showErrorMessages,
      required this.saved});

  @override
  final ShopForm shop;
  @override
  final bool showErrorMessages;
  @override
  final bool saved;

  @override
  String toString() {
    return 'ShopFormState(shop: $shop, showErrorMessages: $showErrorMessages, saved: $saved)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ShopFormState &&
            const DeepCollectionEquality().equals(other.shop, shop) &&
            const DeepCollectionEquality()
                .equals(other.showErrorMessages, showErrorMessages) &&
            const DeepCollectionEquality().equals(other.saved, saved));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(shop),
      const DeepCollectionEquality().hash(showErrorMessages),
      const DeepCollectionEquality().hash(saved));

  @JsonKey(ignore: true)
  @override
  _$ShopFormStateCopyWith<_ShopFormState> get copyWith =>
      __$ShopFormStateCopyWithImpl<_ShopFormState>(this, _$identity);
}

abstract class _ShopFormState implements ShopFormState {
  const factory _ShopFormState(
      {required ShopForm shop,
      required bool showErrorMessages,
      required bool saved}) = _$_ShopFormState;

  @override
  ShopForm get shop;
  @override
  bool get showErrorMessages;
  @override
  bool get saved;
  @override
  @JsonKey(ignore: true)
  _$ShopFormStateCopyWith<_ShopFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
