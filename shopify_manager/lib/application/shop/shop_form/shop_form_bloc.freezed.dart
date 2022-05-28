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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
abstract class _$$_NameChangedCopyWith<$Res> {
  factory _$$_NameChangedCopyWith(
          _$_NameChanged value, $Res Function(_$_NameChanged) then) =
      __$$_NameChangedCopyWithImpl<$Res>;
  $Res call({String nameStr});
}

/// @nodoc
class __$$_NameChangedCopyWithImpl<$Res>
    extends _$ShopFormEventCopyWithImpl<$Res>
    implements _$$_NameChangedCopyWith<$Res> {
  __$$_NameChangedCopyWithImpl(
      _$_NameChanged _value, $Res Function(_$_NameChanged) _then)
      : super(_value, (v) => _then(v as _$_NameChanged));

  @override
  _$_NameChanged get _value => super._value as _$_NameChanged;

  @override
  $Res call({
    Object? nameStr = freezed,
  }) {
    return _then(_$_NameChanged(
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
            other is _$_NameChanged &&
            const DeepCollectionEquality().equals(other.nameStr, nameStr));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(nameStr));

  @JsonKey(ignore: true)
  @override
  _$$_NameChangedCopyWith<_$_NameChanged> get copyWith =>
      __$$_NameChangedCopyWithImpl<_$_NameChanged>(this, _$identity);

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
  const factory _NameChanged(final String nameStr) = _$_NameChanged;

  String get nameStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_NameChangedCopyWith<_$_NameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_StreetNameChangedCopyWith<$Res> {
  factory _$$_StreetNameChangedCopyWith(_$_StreetNameChanged value,
          $Res Function(_$_StreetNameChanged) then) =
      __$$_StreetNameChangedCopyWithImpl<$Res>;
  $Res call({String streetNameStr});
}

/// @nodoc
class __$$_StreetNameChangedCopyWithImpl<$Res>
    extends _$ShopFormEventCopyWithImpl<$Res>
    implements _$$_StreetNameChangedCopyWith<$Res> {
  __$$_StreetNameChangedCopyWithImpl(
      _$_StreetNameChanged _value, $Res Function(_$_StreetNameChanged) _then)
      : super(_value, (v) => _then(v as _$_StreetNameChanged));

  @override
  _$_StreetNameChanged get _value => super._value as _$_StreetNameChanged;

  @override
  $Res call({
    Object? streetNameStr = freezed,
  }) {
    return _then(_$_StreetNameChanged(
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
            other is _$_StreetNameChanged &&
            const DeepCollectionEquality()
                .equals(other.streetNameStr, streetNameStr));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(streetNameStr));

  @JsonKey(ignore: true)
  @override
  _$$_StreetNameChangedCopyWith<_$_StreetNameChanged> get copyWith =>
      __$$_StreetNameChangedCopyWithImpl<_$_StreetNameChanged>(
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
  const factory _StreetNameChanged(final String streetNameStr) =
      _$_StreetNameChanged;

  String get streetNameStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_StreetNameChangedCopyWith<_$_StreetNameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_StreetNumberChangedCopyWith<$Res> {
  factory _$$_StreetNumberChangedCopyWith(_$_StreetNumberChanged value,
          $Res Function(_$_StreetNumberChanged) then) =
      __$$_StreetNumberChangedCopyWithImpl<$Res>;
  $Res call({String streetNumberStr});
}

/// @nodoc
class __$$_StreetNumberChangedCopyWithImpl<$Res>
    extends _$ShopFormEventCopyWithImpl<$Res>
    implements _$$_StreetNumberChangedCopyWith<$Res> {
  __$$_StreetNumberChangedCopyWithImpl(_$_StreetNumberChanged _value,
      $Res Function(_$_StreetNumberChanged) _then)
      : super(_value, (v) => _then(v as _$_StreetNumberChanged));

  @override
  _$_StreetNumberChanged get _value => super._value as _$_StreetNumberChanged;

  @override
  $Res call({
    Object? streetNumberStr = freezed,
  }) {
    return _then(_$_StreetNumberChanged(
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
            other is _$_StreetNumberChanged &&
            const DeepCollectionEquality()
                .equals(other.streetNumberStr, streetNumberStr));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(streetNumberStr));

  @JsonKey(ignore: true)
  @override
  _$$_StreetNumberChangedCopyWith<_$_StreetNumberChanged> get copyWith =>
      __$$_StreetNumberChangedCopyWithImpl<_$_StreetNumberChanged>(
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
  const factory _StreetNumberChanged(final String streetNumberStr) =
      _$_StreetNumberChanged;

  String get streetNumberStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_StreetNumberChangedCopyWith<_$_StreetNumberChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ApartmentNumberChangedCopyWith<$Res> {
  factory _$$_ApartmentNumberChangedCopyWith(_$_ApartmentNumberChanged value,
          $Res Function(_$_ApartmentNumberChanged) then) =
      __$$_ApartmentNumberChangedCopyWithImpl<$Res>;
  $Res call({String apartmentNumberStr});
}

/// @nodoc
class __$$_ApartmentNumberChangedCopyWithImpl<$Res>
    extends _$ShopFormEventCopyWithImpl<$Res>
    implements _$$_ApartmentNumberChangedCopyWith<$Res> {
  __$$_ApartmentNumberChangedCopyWithImpl(_$_ApartmentNumberChanged _value,
      $Res Function(_$_ApartmentNumberChanged) _then)
      : super(_value, (v) => _then(v as _$_ApartmentNumberChanged));

  @override
  _$_ApartmentNumberChanged get _value =>
      super._value as _$_ApartmentNumberChanged;

  @override
  $Res call({
    Object? apartmentNumberStr = freezed,
  }) {
    return _then(_$_ApartmentNumberChanged(
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
            other is _$_ApartmentNumberChanged &&
            const DeepCollectionEquality()
                .equals(other.apartmentNumberStr, apartmentNumberStr));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(apartmentNumberStr));

  @JsonKey(ignore: true)
  @override
  _$$_ApartmentNumberChangedCopyWith<_$_ApartmentNumberChanged> get copyWith =>
      __$$_ApartmentNumberChangedCopyWithImpl<_$_ApartmentNumberChanged>(
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
  const factory _ApartmentNumberChanged(final String apartmentNumberStr) =
      _$_ApartmentNumberChanged;

  String get apartmentNumberStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_ApartmentNumberChangedCopyWith<_$_ApartmentNumberChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PostalCodeChangedCopyWith<$Res> {
  factory _$$_PostalCodeChangedCopyWith(_$_PostalCodeChanged value,
          $Res Function(_$_PostalCodeChanged) then) =
      __$$_PostalCodeChangedCopyWithImpl<$Res>;
  $Res call({String postalCodeStr});
}

/// @nodoc
class __$$_PostalCodeChangedCopyWithImpl<$Res>
    extends _$ShopFormEventCopyWithImpl<$Res>
    implements _$$_PostalCodeChangedCopyWith<$Res> {
  __$$_PostalCodeChangedCopyWithImpl(
      _$_PostalCodeChanged _value, $Res Function(_$_PostalCodeChanged) _then)
      : super(_value, (v) => _then(v as _$_PostalCodeChanged));

  @override
  _$_PostalCodeChanged get _value => super._value as _$_PostalCodeChanged;

  @override
  $Res call({
    Object? postalCodeStr = freezed,
  }) {
    return _then(_$_PostalCodeChanged(
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
            other is _$_PostalCodeChanged &&
            const DeepCollectionEquality()
                .equals(other.postalCodeStr, postalCodeStr));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(postalCodeStr));

  @JsonKey(ignore: true)
  @override
  _$$_PostalCodeChangedCopyWith<_$_PostalCodeChanged> get copyWith =>
      __$$_PostalCodeChangedCopyWithImpl<_$_PostalCodeChanged>(
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
  const factory _PostalCodeChanged(final String postalCodeStr) =
      _$_PostalCodeChanged;

  String get postalCodeStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_PostalCodeChangedCopyWith<_$_PostalCodeChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CityChangedCopyWith<$Res> {
  factory _$$_CityChangedCopyWith(
          _$_CityChanged value, $Res Function(_$_CityChanged) then) =
      __$$_CityChangedCopyWithImpl<$Res>;
  $Res call({String cityStr});
}

/// @nodoc
class __$$_CityChangedCopyWithImpl<$Res>
    extends _$ShopFormEventCopyWithImpl<$Res>
    implements _$$_CityChangedCopyWith<$Res> {
  __$$_CityChangedCopyWithImpl(
      _$_CityChanged _value, $Res Function(_$_CityChanged) _then)
      : super(_value, (v) => _then(v as _$_CityChanged));

  @override
  _$_CityChanged get _value => super._value as _$_CityChanged;

  @override
  $Res call({
    Object? cityStr = freezed,
  }) {
    return _then(_$_CityChanged(
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
            other is _$_CityChanged &&
            const DeepCollectionEquality().equals(other.cityStr, cityStr));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(cityStr));

  @JsonKey(ignore: true)
  @override
  _$$_CityChangedCopyWith<_$_CityChanged> get copyWith =>
      __$$_CityChangedCopyWithImpl<_$_CityChanged>(this, _$identity);

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
  const factory _CityChanged(final String cityStr) = _$_CityChanged;

  String get cityStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_CityChangedCopyWith<_$_CityChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ProceededCopyWith<$Res> {
  factory _$$_ProceededCopyWith(
          _$_Proceeded value, $Res Function(_$_Proceeded) then) =
      __$$_ProceededCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ProceededCopyWithImpl<$Res> extends _$ShopFormEventCopyWithImpl<$Res>
    implements _$$_ProceededCopyWith<$Res> {
  __$$_ProceededCopyWithImpl(
      _$_Proceeded _value, $Res Function(_$_Proceeded) _then)
      : super(_value, (v) => _then(v as _$_Proceeded));

  @override
  _$_Proceeded get _value => super._value as _$_Proceeded;
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
        (other.runtimeType == runtimeType && other is _$_Proceeded);
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
abstract class _$$_ShopFormStateCopyWith<$Res>
    implements $ShopFormStateCopyWith<$Res> {
  factory _$$_ShopFormStateCopyWith(
          _$_ShopFormState value, $Res Function(_$_ShopFormState) then) =
      __$$_ShopFormStateCopyWithImpl<$Res>;
  @override
  $Res call({ShopForm shop, bool showErrorMessages, bool saved});

  @override
  $ShopFormCopyWith<$Res> get shop;
}

/// @nodoc
class __$$_ShopFormStateCopyWithImpl<$Res>
    extends _$ShopFormStateCopyWithImpl<$Res>
    implements _$$_ShopFormStateCopyWith<$Res> {
  __$$_ShopFormStateCopyWithImpl(
      _$_ShopFormState _value, $Res Function(_$_ShopFormState) _then)
      : super(_value, (v) => _then(v as _$_ShopFormState));

  @override
  _$_ShopFormState get _value => super._value as _$_ShopFormState;

  @override
  $Res call({
    Object? shop = freezed,
    Object? showErrorMessages = freezed,
    Object? saved = freezed,
  }) {
    return _then(_$_ShopFormState(
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
            other is _$_ShopFormState &&
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
  _$$_ShopFormStateCopyWith<_$_ShopFormState> get copyWith =>
      __$$_ShopFormStateCopyWithImpl<_$_ShopFormState>(this, _$identity);
}

abstract class _ShopFormState implements ShopFormState {
  const factory _ShopFormState(
      {required final ShopForm shop,
      required final bool showErrorMessages,
      required final bool saved}) = _$_ShopFormState;

  @override
  ShopForm get shop => throw _privateConstructorUsedError;
  @override
  bool get showErrorMessages => throw _privateConstructorUsedError;
  @override
  bool get saved => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ShopFormStateCopyWith<_$_ShopFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
