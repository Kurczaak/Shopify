// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'shop_picker_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ShopPickerState {
  KtList<Shop> get shops => throw _privateConstructorUsedError;
  Location get location => throw _privateConstructorUsedError;
  double get radius => throw _privateConstructorUsedError;
  Option<ShopFailure> get shopFailureOption =>
      throw _privateConstructorUsedError;
  Option<LocationFailure> get locationFailureOption =>
      throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShopPickerStateCopyWith<ShopPickerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopPickerStateCopyWith<$Res> {
  factory $ShopPickerStateCopyWith(
          ShopPickerState value, $Res Function(ShopPickerState) then) =
      _$ShopPickerStateCopyWithImpl<$Res>;
  $Res call(
      {KtList<Shop> shops,
      Location location,
      double radius,
      Option<ShopFailure> shopFailureOption,
      Option<LocationFailure> locationFailureOption,
      bool isLoading});

  $LocationCopyWith<$Res> get location;
}

/// @nodoc
class _$ShopPickerStateCopyWithImpl<$Res>
    implements $ShopPickerStateCopyWith<$Res> {
  _$ShopPickerStateCopyWithImpl(this._value, this._then);

  final ShopPickerState _value;
  // ignore: unused_field
  final $Res Function(ShopPickerState) _then;

  @override
  $Res call({
    Object? shops = freezed,
    Object? location = freezed,
    Object? radius = freezed,
    Object? shopFailureOption = freezed,
    Object? locationFailureOption = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      shops: shops == freezed
          ? _value.shops
          : shops // ignore: cast_nullable_to_non_nullable
              as KtList<Shop>,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location,
      radius: radius == freezed
          ? _value.radius
          : radius // ignore: cast_nullable_to_non_nullable
              as double,
      shopFailureOption: shopFailureOption == freezed
          ? _value.shopFailureOption
          : shopFailureOption // ignore: cast_nullable_to_non_nullable
              as Option<ShopFailure>,
      locationFailureOption: locationFailureOption == freezed
          ? _value.locationFailureOption
          : locationFailureOption // ignore: cast_nullable_to_non_nullable
              as Option<LocationFailure>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $LocationCopyWith<$Res> get location {
    return $LocationCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value));
    });
  }
}

/// @nodoc
abstract class _$$_ShopPickerStateCopyWith<$Res>
    implements $ShopPickerStateCopyWith<$Res> {
  factory _$$_ShopPickerStateCopyWith(
          _$_ShopPickerState value, $Res Function(_$_ShopPickerState) then) =
      __$$_ShopPickerStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {KtList<Shop> shops,
      Location location,
      double radius,
      Option<ShopFailure> shopFailureOption,
      Option<LocationFailure> locationFailureOption,
      bool isLoading});

  @override
  $LocationCopyWith<$Res> get location;
}

/// @nodoc
class __$$_ShopPickerStateCopyWithImpl<$Res>
    extends _$ShopPickerStateCopyWithImpl<$Res>
    implements _$$_ShopPickerStateCopyWith<$Res> {
  __$$_ShopPickerStateCopyWithImpl(
      _$_ShopPickerState _value, $Res Function(_$_ShopPickerState) _then)
      : super(_value, (v) => _then(v as _$_ShopPickerState));

  @override
  _$_ShopPickerState get _value => super._value as _$_ShopPickerState;

  @override
  $Res call({
    Object? shops = freezed,
    Object? location = freezed,
    Object? radius = freezed,
    Object? shopFailureOption = freezed,
    Object? locationFailureOption = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_$_ShopPickerState(
      shops: shops == freezed
          ? _value.shops
          : shops // ignore: cast_nullable_to_non_nullable
              as KtList<Shop>,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location,
      radius: radius == freezed
          ? _value.radius
          : radius // ignore: cast_nullable_to_non_nullable
              as double,
      shopFailureOption: shopFailureOption == freezed
          ? _value.shopFailureOption
          : shopFailureOption // ignore: cast_nullable_to_non_nullable
              as Option<ShopFailure>,
      locationFailureOption: locationFailureOption == freezed
          ? _value.locationFailureOption
          : locationFailureOption // ignore: cast_nullable_to_non_nullable
              as Option<LocationFailure>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ShopPickerState implements _ShopPickerState {
  const _$_ShopPickerState(
      {required this.shops,
      required this.location,
      required this.radius,
      required this.shopFailureOption,
      required this.locationFailureOption,
      required this.isLoading});

  @override
  final KtList<Shop> shops;
  @override
  final Location location;
  @override
  final double radius;
  @override
  final Option<ShopFailure> shopFailureOption;
  @override
  final Option<LocationFailure> locationFailureOption;
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'ShopPickerState(shops: $shops, location: $location, radius: $radius, shopFailureOption: $shopFailureOption, locationFailureOption: $locationFailureOption, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShopPickerState &&
            const DeepCollectionEquality().equals(other.shops, shops) &&
            const DeepCollectionEquality().equals(other.location, location) &&
            const DeepCollectionEquality().equals(other.radius, radius) &&
            const DeepCollectionEquality()
                .equals(other.shopFailureOption, shopFailureOption) &&
            const DeepCollectionEquality()
                .equals(other.locationFailureOption, locationFailureOption) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(shops),
      const DeepCollectionEquality().hash(location),
      const DeepCollectionEquality().hash(radius),
      const DeepCollectionEquality().hash(shopFailureOption),
      const DeepCollectionEquality().hash(locationFailureOption),
      const DeepCollectionEquality().hash(isLoading));

  @JsonKey(ignore: true)
  @override
  _$$_ShopPickerStateCopyWith<_$_ShopPickerState> get copyWith =>
      __$$_ShopPickerStateCopyWithImpl<_$_ShopPickerState>(this, _$identity);
}

abstract class _ShopPickerState implements ShopPickerState {
  const factory _ShopPickerState(
      {required final KtList<Shop> shops,
      required final Location location,
      required final double radius,
      required final Option<ShopFailure> shopFailureOption,
      required final Option<LocationFailure> locationFailureOption,
      required final bool isLoading}) = _$_ShopPickerState;

  @override
  KtList<Shop> get shops => throw _privateConstructorUsedError;
  @override
  Location get location => throw _privateConstructorUsedError;
  @override
  double get radius => throw _privateConstructorUsedError;
  @override
  Option<ShopFailure> get shopFailureOption =>
      throw _privateConstructorUsedError;
  @override
  Option<LocationFailure> get locationFailureOption =>
      throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ShopPickerStateCopyWith<_$_ShopPickerState> get copyWith =>
      throw _privateConstructorUsedError;
}
