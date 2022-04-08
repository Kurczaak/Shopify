// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductDto _$ProductDtoFromJson(Map<String, dynamic> json) {
  return _ProductDto.fromJson(json);
}

/// @nodoc
class _$ProductDtoTearOff {
  const _$ProductDtoTearOff();

  _ProductDto call(
      {@JsonKey(ignore: true) String id = '',
      required String barcode,
      required WeightDto weight,
      required PriceDto price,
      required String category,
      required String name,
      required String brand,
      required String description,
      required String ingredients,
      required List<String> photosUrls}) {
    return _ProductDto(
      id: id,
      barcode: barcode,
      weight: weight,
      price: price,
      category: category,
      name: name,
      brand: brand,
      description: description,
      ingredients: ingredients,
      photosUrls: photosUrls,
    );
  }

  ProductDto fromJson(Map<String, Object?> json) {
    return ProductDto.fromJson(json);
  }
}

/// @nodoc
const $ProductDto = _$ProductDtoTearOff();

/// @nodoc
mixin _$ProductDto {
  @JsonKey(ignore: true)
  String get id => throw _privateConstructorUsedError;
  String get barcode => throw _privateConstructorUsedError;
  WeightDto get weight =>
      throw _privateConstructorUsedError; //required NutrientsGroupDto fats,
  PriceDto get price => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get brand => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get ingredients => throw _privateConstructorUsedError;
  List<String> get photosUrls => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductDtoCopyWith<ProductDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDtoCopyWith<$Res> {
  factory $ProductDtoCopyWith(
          ProductDto value, $Res Function(ProductDto) then) =
      _$ProductDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String id,
      String barcode,
      WeightDto weight,
      PriceDto price,
      String category,
      String name,
      String brand,
      String description,
      String ingredients,
      List<String> photosUrls});

  $WeightDtoCopyWith<$Res> get weight;
  $PriceDtoCopyWith<$Res> get price;
}

/// @nodoc
class _$ProductDtoCopyWithImpl<$Res> implements $ProductDtoCopyWith<$Res> {
  _$ProductDtoCopyWithImpl(this._value, this._then);

  final ProductDto _value;
  // ignore: unused_field
  final $Res Function(ProductDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? barcode = freezed,
    Object? weight = freezed,
    Object? price = freezed,
    Object? category = freezed,
    Object? name = freezed,
    Object? brand = freezed,
    Object? description = freezed,
    Object? ingredients = freezed,
    Object? photosUrls = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      barcode: barcode == freezed
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String,
      weight: weight == freezed
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as WeightDto,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as PriceDto,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      brand: brand == freezed
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      ingredients: ingredients == freezed
          ? _value.ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as String,
      photosUrls: photosUrls == freezed
          ? _value.photosUrls
          : photosUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }

  @override
  $WeightDtoCopyWith<$Res> get weight {
    return $WeightDtoCopyWith<$Res>(_value.weight, (value) {
      return _then(_value.copyWith(weight: value));
    });
  }

  @override
  $PriceDtoCopyWith<$Res> get price {
    return $PriceDtoCopyWith<$Res>(_value.price, (value) {
      return _then(_value.copyWith(price: value));
    });
  }
}

/// @nodoc
abstract class _$ProductDtoCopyWith<$Res> implements $ProductDtoCopyWith<$Res> {
  factory _$ProductDtoCopyWith(
          _ProductDto value, $Res Function(_ProductDto) then) =
      __$ProductDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String id,
      String barcode,
      WeightDto weight,
      PriceDto price,
      String category,
      String name,
      String brand,
      String description,
      String ingredients,
      List<String> photosUrls});

  @override
  $WeightDtoCopyWith<$Res> get weight;
  @override
  $PriceDtoCopyWith<$Res> get price;
}

/// @nodoc
class __$ProductDtoCopyWithImpl<$Res> extends _$ProductDtoCopyWithImpl<$Res>
    implements _$ProductDtoCopyWith<$Res> {
  __$ProductDtoCopyWithImpl(
      _ProductDto _value, $Res Function(_ProductDto) _then)
      : super(_value, (v) => _then(v as _ProductDto));

  @override
  _ProductDto get _value => super._value as _ProductDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? barcode = freezed,
    Object? weight = freezed,
    Object? price = freezed,
    Object? category = freezed,
    Object? name = freezed,
    Object? brand = freezed,
    Object? description = freezed,
    Object? ingredients = freezed,
    Object? photosUrls = freezed,
  }) {
    return _then(_ProductDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      barcode: barcode == freezed
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String,
      weight: weight == freezed
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as WeightDto,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as PriceDto,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      brand: brand == freezed
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      ingredients: ingredients == freezed
          ? _value.ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as String,
      photosUrls: photosUrls == freezed
          ? _value.photosUrls
          : photosUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductDto extends _ProductDto {
  const _$_ProductDto(
      {@JsonKey(ignore: true) this.id = '',
      required this.barcode,
      required this.weight,
      required this.price,
      required this.category,
      required this.name,
      required this.brand,
      required this.description,
      required this.ingredients,
      required this.photosUrls})
      : super._();

  factory _$_ProductDto.fromJson(Map<String, dynamic> json) =>
      _$$_ProductDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String id;
  @override
  final String barcode;
  @override
  final WeightDto weight;
  @override //required NutrientsGroupDto fats,
  final PriceDto price;
  @override
  final String category;
  @override
  final String name;
  @override
  final String brand;
  @override
  final String description;
  @override
  final String ingredients;
  @override
  final List<String> photosUrls;

  @override
  String toString() {
    return 'ProductDto(id: $id, barcode: $barcode, weight: $weight, price: $price, category: $category, name: $name, brand: $brand, description: $description, ingredients: $ingredients, photosUrls: $photosUrls)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.barcode, barcode) &&
            const DeepCollectionEquality().equals(other.weight, weight) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.category, category) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.brand, brand) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other.ingredients, ingredients) &&
            const DeepCollectionEquality()
                .equals(other.photosUrls, photosUrls));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(barcode),
      const DeepCollectionEquality().hash(weight),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(category),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(brand),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(ingredients),
      const DeepCollectionEquality().hash(photosUrls));

  @JsonKey(ignore: true)
  @override
  _$ProductDtoCopyWith<_ProductDto> get copyWith =>
      __$ProductDtoCopyWithImpl<_ProductDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductDtoToJson(this);
  }
}

abstract class _ProductDto extends ProductDto {
  const factory _ProductDto(
      {@JsonKey(ignore: true) String id,
      required String barcode,
      required WeightDto weight,
      required PriceDto price,
      required String category,
      required String name,
      required String brand,
      required String description,
      required String ingredients,
      required List<String> photosUrls}) = _$_ProductDto;
  const _ProductDto._() : super._();

  factory _ProductDto.fromJson(Map<String, dynamic> json) =
      _$_ProductDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String get id;
  @override
  String get barcode;
  @override
  WeightDto get weight;
  @override //required NutrientsGroupDto fats,
  PriceDto get price;
  @override
  String get category;
  @override
  String get name;
  @override
  String get brand;
  @override
  String get description;
  @override
  String get ingredients;
  @override
  List<String> get photosUrls;
  @override
  @JsonKey(ignore: true)
  _$ProductDtoCopyWith<_ProductDto> get copyWith =>
      throw _privateConstructorUsedError;
}

WeightDto _$WeightDtoFromJson(Map<String, dynamic> json) {
  return _WeightDto.fromJson(json);
}

/// @nodoc
class _$WeightDtoTearOff {
  const _$WeightDtoTearOff();

  _WeightDto call({required double weight, required String weightUnit}) {
    return _WeightDto(
      weight: weight,
      weightUnit: weightUnit,
    );
  }

  WeightDto fromJson(Map<String, Object?> json) {
    return WeightDto.fromJson(json);
  }
}

/// @nodoc
const $WeightDto = _$WeightDtoTearOff();

/// @nodoc
mixin _$WeightDto {
  double get weight => throw _privateConstructorUsedError;
  String get weightUnit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeightDtoCopyWith<WeightDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeightDtoCopyWith<$Res> {
  factory $WeightDtoCopyWith(WeightDto value, $Res Function(WeightDto) then) =
      _$WeightDtoCopyWithImpl<$Res>;
  $Res call({double weight, String weightUnit});
}

/// @nodoc
class _$WeightDtoCopyWithImpl<$Res> implements $WeightDtoCopyWith<$Res> {
  _$WeightDtoCopyWithImpl(this._value, this._then);

  final WeightDto _value;
  // ignore: unused_field
  final $Res Function(WeightDto) _then;

  @override
  $Res call({
    Object? weight = freezed,
    Object? weightUnit = freezed,
  }) {
    return _then(_value.copyWith(
      weight: weight == freezed
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
      weightUnit: weightUnit == freezed
          ? _value.weightUnit
          : weightUnit // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$WeightDtoCopyWith<$Res> implements $WeightDtoCopyWith<$Res> {
  factory _$WeightDtoCopyWith(
          _WeightDto value, $Res Function(_WeightDto) then) =
      __$WeightDtoCopyWithImpl<$Res>;
  @override
  $Res call({double weight, String weightUnit});
}

/// @nodoc
class __$WeightDtoCopyWithImpl<$Res> extends _$WeightDtoCopyWithImpl<$Res>
    implements _$WeightDtoCopyWith<$Res> {
  __$WeightDtoCopyWithImpl(_WeightDto _value, $Res Function(_WeightDto) _then)
      : super(_value, (v) => _then(v as _WeightDto));

  @override
  _WeightDto get _value => super._value as _WeightDto;

  @override
  $Res call({
    Object? weight = freezed,
    Object? weightUnit = freezed,
  }) {
    return _then(_WeightDto(
      weight: weight == freezed
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
      weightUnit: weightUnit == freezed
          ? _value.weightUnit
          : weightUnit // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WeightDto extends _WeightDto {
  const _$_WeightDto({required this.weight, required this.weightUnit})
      : super._();

  factory _$_WeightDto.fromJson(Map<String, dynamic> json) =>
      _$$_WeightDtoFromJson(json);

  @override
  final double weight;
  @override
  final String weightUnit;

  @override
  String toString() {
    return 'WeightDto(weight: $weight, weightUnit: $weightUnit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WeightDto &&
            const DeepCollectionEquality().equals(other.weight, weight) &&
            const DeepCollectionEquality()
                .equals(other.weightUnit, weightUnit));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(weight),
      const DeepCollectionEquality().hash(weightUnit));

  @JsonKey(ignore: true)
  @override
  _$WeightDtoCopyWith<_WeightDto> get copyWith =>
      __$WeightDtoCopyWithImpl<_WeightDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeightDtoToJson(this);
  }
}

abstract class _WeightDto extends WeightDto {
  const factory _WeightDto(
      {required double weight, required String weightUnit}) = _$_WeightDto;
  const _WeightDto._() : super._();

  factory _WeightDto.fromJson(Map<String, dynamic> json) =
      _$_WeightDto.fromJson;

  @override
  double get weight;
  @override
  String get weightUnit;
  @override
  @JsonKey(ignore: true)
  _$WeightDtoCopyWith<_WeightDto> get copyWith =>
      throw _privateConstructorUsedError;
}

PriceDto _$PriceDtoFromJson(Map<String, dynamic> json) {
  return _PriceDto.fromJson(json);
}

/// @nodoc
class _$PriceDtoTearOff {
  const _$PriceDtoTearOff();

  _PriceDto call({required double price, required String currency}) {
    return _PriceDto(
      price: price,
      currency: currency,
    );
  }

  PriceDto fromJson(Map<String, Object?> json) {
    return PriceDto.fromJson(json);
  }
}

/// @nodoc
const $PriceDto = _$PriceDtoTearOff();

/// @nodoc
mixin _$PriceDto {
  double get price => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PriceDtoCopyWith<PriceDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PriceDtoCopyWith<$Res> {
  factory $PriceDtoCopyWith(PriceDto value, $Res Function(PriceDto) then) =
      _$PriceDtoCopyWithImpl<$Res>;
  $Res call({double price, String currency});
}

/// @nodoc
class _$PriceDtoCopyWithImpl<$Res> implements $PriceDtoCopyWith<$Res> {
  _$PriceDtoCopyWithImpl(this._value, this._then);

  final PriceDto _value;
  // ignore: unused_field
  final $Res Function(PriceDto) _then;

  @override
  $Res call({
    Object? price = freezed,
    Object? currency = freezed,
  }) {
    return _then(_value.copyWith(
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$PriceDtoCopyWith<$Res> implements $PriceDtoCopyWith<$Res> {
  factory _$PriceDtoCopyWith(_PriceDto value, $Res Function(_PriceDto) then) =
      __$PriceDtoCopyWithImpl<$Res>;
  @override
  $Res call({double price, String currency});
}

/// @nodoc
class __$PriceDtoCopyWithImpl<$Res> extends _$PriceDtoCopyWithImpl<$Res>
    implements _$PriceDtoCopyWith<$Res> {
  __$PriceDtoCopyWithImpl(_PriceDto _value, $Res Function(_PriceDto) _then)
      : super(_value, (v) => _then(v as _PriceDto));

  @override
  _PriceDto get _value => super._value as _PriceDto;

  @override
  $Res call({
    Object? price = freezed,
    Object? currency = freezed,
  }) {
    return _then(_PriceDto(
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PriceDto extends _PriceDto {
  const _$_PriceDto({required this.price, required this.currency}) : super._();

  factory _$_PriceDto.fromJson(Map<String, dynamic> json) =>
      _$$_PriceDtoFromJson(json);

  @override
  final double price;
  @override
  final String currency;

  @override
  String toString() {
    return 'PriceDto(price: $price, currency: $currency)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PriceDto &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.currency, currency));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(currency));

  @JsonKey(ignore: true)
  @override
  _$PriceDtoCopyWith<_PriceDto> get copyWith =>
      __$PriceDtoCopyWithImpl<_PriceDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PriceDtoToJson(this);
  }
}

abstract class _PriceDto extends PriceDto {
  const factory _PriceDto({required double price, required String currency}) =
      _$_PriceDto;
  const _PriceDto._() : super._();

  factory _PriceDto.fromJson(Map<String, dynamic> json) = _$_PriceDto.fromJson;

  @override
  double get price;
  @override
  String get currency;
  @override
  @JsonKey(ignore: true)
  _$PriceDtoCopyWith<_PriceDto> get copyWith =>
      throw _privateConstructorUsedError;
}
