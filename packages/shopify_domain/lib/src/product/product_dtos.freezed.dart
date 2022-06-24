// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PricedProductDto _$PricedProductDtoFromJson(Map<String, dynamic> json) {
  return _PricedProductDto.fromJson(json);
}

/// @nodoc
mixin _$PricedProductDto {
  @JsonKey(ignore: true)
  String get id => throw _privateConstructorUsedError;
  String get productId => throw _privateConstructorUsedError;
  String get barcode => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get brand => throw _privateConstructorUsedError;
  String get photo => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  String get shopId => throw _privateConstructorUsedError;
  WeightDto get weight => throw _privateConstructorUsedError;
  PriceDto get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PricedProductDtoCopyWith<PricedProductDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PricedProductDtoCopyWith<$Res> {
  factory $PricedProductDtoCopyWith(
          PricedProductDto value, $Res Function(PricedProductDto) then) =
      _$PricedProductDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String id,
      String productId,
      String barcode,
      String name,
      String brand,
      String photo,
      String category,
      String shopId,
      WeightDto weight,
      PriceDto price});

  $WeightDtoCopyWith<$Res> get weight;
  $PriceDtoCopyWith<$Res> get price;
}

/// @nodoc
class _$PricedProductDtoCopyWithImpl<$Res>
    implements $PricedProductDtoCopyWith<$Res> {
  _$PricedProductDtoCopyWithImpl(this._value, this._then);

  final PricedProductDto _value;
  // ignore: unused_field
  final $Res Function(PricedProductDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? productId = freezed,
    Object? barcode = freezed,
    Object? name = freezed,
    Object? brand = freezed,
    Object? photo = freezed,
    Object? category = freezed,
    Object? shopId = freezed,
    Object? weight = freezed,
    Object? price = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      productId: productId == freezed
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      barcode: barcode == freezed
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      brand: brand == freezed
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
      photo: photo == freezed
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      shopId: shopId == freezed
          ? _value.shopId
          : shopId // ignore: cast_nullable_to_non_nullable
              as String,
      weight: weight == freezed
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as WeightDto,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as PriceDto,
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
abstract class _$$_PricedProductDtoCopyWith<$Res>
    implements $PricedProductDtoCopyWith<$Res> {
  factory _$$_PricedProductDtoCopyWith(
          _$_PricedProductDto value, $Res Function(_$_PricedProductDto) then) =
      __$$_PricedProductDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String id,
      String productId,
      String barcode,
      String name,
      String brand,
      String photo,
      String category,
      String shopId,
      WeightDto weight,
      PriceDto price});

  @override
  $WeightDtoCopyWith<$Res> get weight;
  @override
  $PriceDtoCopyWith<$Res> get price;
}

/// @nodoc
class __$$_PricedProductDtoCopyWithImpl<$Res>
    extends _$PricedProductDtoCopyWithImpl<$Res>
    implements _$$_PricedProductDtoCopyWith<$Res> {
  __$$_PricedProductDtoCopyWithImpl(
      _$_PricedProductDto _value, $Res Function(_$_PricedProductDto) _then)
      : super(_value, (v) => _then(v as _$_PricedProductDto));

  @override
  _$_PricedProductDto get _value => super._value as _$_PricedProductDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? productId = freezed,
    Object? barcode = freezed,
    Object? name = freezed,
    Object? brand = freezed,
    Object? photo = freezed,
    Object? category = freezed,
    Object? shopId = freezed,
    Object? weight = freezed,
    Object? price = freezed,
  }) {
    return _then(_$_PricedProductDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      productId: productId == freezed
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      barcode: barcode == freezed
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      brand: brand == freezed
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
      photo: photo == freezed
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      shopId: shopId == freezed
          ? _value.shopId
          : shopId // ignore: cast_nullable_to_non_nullable
              as String,
      weight: weight == freezed
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as WeightDto,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as PriceDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PricedProductDto extends _PricedProductDto {
  const _$_PricedProductDto(
      {@JsonKey(ignore: true) this.id = '',
      required this.productId,
      required this.barcode,
      required this.name,
      required this.brand,
      required this.photo,
      required this.category,
      required this.shopId,
      required this.weight,
      required this.price})
      : super._();

  factory _$_PricedProductDto.fromJson(Map<String, dynamic> json) =>
      _$$_PricedProductDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String id;
  @override
  final String productId;
  @override
  final String barcode;
  @override
  final String name;
  @override
  final String brand;
  @override
  final String photo;
  @override
  final String category;
  @override
  final String shopId;
  @override
  final WeightDto weight;
  @override
  final PriceDto price;

  @override
  String toString() {
    return 'PricedProductDto(id: $id, productId: $productId, barcode: $barcode, name: $name, brand: $brand, photo: $photo, category: $category, shopId: $shopId, weight: $weight, price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PricedProductDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.productId, productId) &&
            const DeepCollectionEquality().equals(other.barcode, barcode) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.brand, brand) &&
            const DeepCollectionEquality().equals(other.photo, photo) &&
            const DeepCollectionEquality().equals(other.category, category) &&
            const DeepCollectionEquality().equals(other.shopId, shopId) &&
            const DeepCollectionEquality().equals(other.weight, weight) &&
            const DeepCollectionEquality().equals(other.price, price));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(productId),
      const DeepCollectionEquality().hash(barcode),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(brand),
      const DeepCollectionEquality().hash(photo),
      const DeepCollectionEquality().hash(category),
      const DeepCollectionEquality().hash(shopId),
      const DeepCollectionEquality().hash(weight),
      const DeepCollectionEquality().hash(price));

  @JsonKey(ignore: true)
  @override
  _$$_PricedProductDtoCopyWith<_$_PricedProductDto> get copyWith =>
      __$$_PricedProductDtoCopyWithImpl<_$_PricedProductDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PricedProductDtoToJson(this);
  }
}

abstract class _PricedProductDto extends PricedProductDto {
  const factory _PricedProductDto(
      {@JsonKey(ignore: true) final String id,
      required final String productId,
      required final String barcode,
      required final String name,
      required final String brand,
      required final String photo,
      required final String category,
      required final String shopId,
      required final WeightDto weight,
      required final PriceDto price}) = _$_PricedProductDto;
  const _PricedProductDto._() : super._();

  factory _PricedProductDto.fromJson(Map<String, dynamic> json) =
      _$_PricedProductDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String get id => throw _privateConstructorUsedError;
  @override
  String get productId => throw _privateConstructorUsedError;
  @override
  String get barcode => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get brand => throw _privateConstructorUsedError;
  @override
  String get photo => throw _privateConstructorUsedError;
  @override
  String get category => throw _privateConstructorUsedError;
  @override
  String get shopId => throw _privateConstructorUsedError;
  @override
  WeightDto get weight => throw _privateConstructorUsedError;
  @override
  PriceDto get price => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_PricedProductDtoCopyWith<_$_PricedProductDto> get copyWith =>
      throw _privateConstructorUsedError;
}

ShopProductDto _$ShopProductDtoFromJson(Map<String, dynamic> json) {
  return _ShopProductDto.fromJson(json);
}

/// @nodoc
mixin _$ShopProductDto {
  PriceDto get price => throw _privateConstructorUsedError;
  String get productId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShopProductDtoCopyWith<ShopProductDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopProductDtoCopyWith<$Res> {
  factory $ShopProductDtoCopyWith(
          ShopProductDto value, $Res Function(ShopProductDto) then) =
      _$ShopProductDtoCopyWithImpl<$Res>;
  $Res call({PriceDto price, String productId});

  $PriceDtoCopyWith<$Res> get price;
}

/// @nodoc
class _$ShopProductDtoCopyWithImpl<$Res>
    implements $ShopProductDtoCopyWith<$Res> {
  _$ShopProductDtoCopyWithImpl(this._value, this._then);

  final ShopProductDto _value;
  // ignore: unused_field
  final $Res Function(ShopProductDto) _then;

  @override
  $Res call({
    Object? price = freezed,
    Object? productId = freezed,
  }) {
    return _then(_value.copyWith(
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as PriceDto,
      productId: productId == freezed
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $PriceDtoCopyWith<$Res> get price {
    return $PriceDtoCopyWith<$Res>(_value.price, (value) {
      return _then(_value.copyWith(price: value));
    });
  }
}

/// @nodoc
abstract class _$$_ShopProductDtoCopyWith<$Res>
    implements $ShopProductDtoCopyWith<$Res> {
  factory _$$_ShopProductDtoCopyWith(
          _$_ShopProductDto value, $Res Function(_$_ShopProductDto) then) =
      __$$_ShopProductDtoCopyWithImpl<$Res>;
  @override
  $Res call({PriceDto price, String productId});

  @override
  $PriceDtoCopyWith<$Res> get price;
}

/// @nodoc
class __$$_ShopProductDtoCopyWithImpl<$Res>
    extends _$ShopProductDtoCopyWithImpl<$Res>
    implements _$$_ShopProductDtoCopyWith<$Res> {
  __$$_ShopProductDtoCopyWithImpl(
      _$_ShopProductDto _value, $Res Function(_$_ShopProductDto) _then)
      : super(_value, (v) => _then(v as _$_ShopProductDto));

  @override
  _$_ShopProductDto get _value => super._value as _$_ShopProductDto;

  @override
  $Res call({
    Object? price = freezed,
    Object? productId = freezed,
  }) {
    return _then(_$_ShopProductDto(
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as PriceDto,
      productId: productId == freezed
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ShopProductDto implements _ShopProductDto {
  const _$_ShopProductDto({required this.price, required this.productId});

  factory _$_ShopProductDto.fromJson(Map<String, dynamic> json) =>
      _$$_ShopProductDtoFromJson(json);

  @override
  final PriceDto price;
  @override
  final String productId;

  @override
  String toString() {
    return 'ShopProductDto(price: $price, productId: $productId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShopProductDto &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.productId, productId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(productId));

  @JsonKey(ignore: true)
  @override
  _$$_ShopProductDtoCopyWith<_$_ShopProductDto> get copyWith =>
      __$$_ShopProductDtoCopyWithImpl<_$_ShopProductDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShopProductDtoToJson(this);
  }
}

abstract class _ShopProductDto implements ShopProductDto {
  const factory _ShopProductDto(
      {required final PriceDto price,
      required final String productId}) = _$_ShopProductDto;

  factory _ShopProductDto.fromJson(Map<String, dynamic> json) =
      _$_ShopProductDto.fromJson;

  @override
  PriceDto get price => throw _privateConstructorUsedError;
  @override
  String get productId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ShopProductDtoCopyWith<_$_ShopProductDto> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductDto _$ProductDtoFromJson(Map<String, dynamic> json) {
  return _ProductDto.fromJson(json);
}

/// @nodoc
mixin _$ProductDto {
  @JsonKey(ignore: true)
  String get id => throw _privateConstructorUsedError;
  String get barcode => throw _privateConstructorUsedError;
  WeightDto get weight => throw _privateConstructorUsedError;
  NutrientFactsDto? get nutrientFacts => throw _privateConstructorUsedError;
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
      NutrientFactsDto? nutrientFacts,
      String category,
      String name,
      String brand,
      String description,
      String ingredients,
      List<String> photosUrls});

  $WeightDtoCopyWith<$Res> get weight;
  $NutrientFactsDtoCopyWith<$Res>? get nutrientFacts;
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
    Object? nutrientFacts = freezed,
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
      nutrientFacts: nutrientFacts == freezed
          ? _value.nutrientFacts
          : nutrientFacts // ignore: cast_nullable_to_non_nullable
              as NutrientFactsDto?,
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
  $NutrientFactsDtoCopyWith<$Res>? get nutrientFacts {
    if (_value.nutrientFacts == null) {
      return null;
    }

    return $NutrientFactsDtoCopyWith<$Res>(_value.nutrientFacts!, (value) {
      return _then(_value.copyWith(nutrientFacts: value));
    });
  }
}

/// @nodoc
abstract class _$$_ProductDtoCopyWith<$Res>
    implements $ProductDtoCopyWith<$Res> {
  factory _$$_ProductDtoCopyWith(
          _$_ProductDto value, $Res Function(_$_ProductDto) then) =
      __$$_ProductDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String id,
      String barcode,
      WeightDto weight,
      NutrientFactsDto? nutrientFacts,
      String category,
      String name,
      String brand,
      String description,
      String ingredients,
      List<String> photosUrls});

  @override
  $WeightDtoCopyWith<$Res> get weight;
  @override
  $NutrientFactsDtoCopyWith<$Res>? get nutrientFacts;
}

/// @nodoc
class __$$_ProductDtoCopyWithImpl<$Res> extends _$ProductDtoCopyWithImpl<$Res>
    implements _$$_ProductDtoCopyWith<$Res> {
  __$$_ProductDtoCopyWithImpl(
      _$_ProductDto _value, $Res Function(_$_ProductDto) _then)
      : super(_value, (v) => _then(v as _$_ProductDto));

  @override
  _$_ProductDto get _value => super._value as _$_ProductDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? barcode = freezed,
    Object? weight = freezed,
    Object? nutrientFacts = freezed,
    Object? category = freezed,
    Object? name = freezed,
    Object? brand = freezed,
    Object? description = freezed,
    Object? ingredients = freezed,
    Object? photosUrls = freezed,
  }) {
    return _then(_$_ProductDto(
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
      nutrientFacts: nutrientFacts == freezed
          ? _value.nutrientFacts
          : nutrientFacts // ignore: cast_nullable_to_non_nullable
              as NutrientFactsDto?,
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
          ? _value._photosUrls
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
      this.nutrientFacts,
      required this.category,
      required this.name,
      required this.brand,
      required this.description,
      required this.ingredients,
      required final List<String> photosUrls})
      : _photosUrls = photosUrls,
        super._();

  factory _$_ProductDto.fromJson(Map<String, dynamic> json) =>
      _$$_ProductDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String id;
  @override
  final String barcode;
  @override
  final WeightDto weight;
  @override
  final NutrientFactsDto? nutrientFacts;
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
  final List<String> _photosUrls;
  @override
  List<String> get photosUrls {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_photosUrls);
  }

  @override
  String toString() {
    return 'ProductDto(id: $id, barcode: $barcode, weight: $weight, nutrientFacts: $nutrientFacts, category: $category, name: $name, brand: $brand, description: $description, ingredients: $ingredients, photosUrls: $photosUrls)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.barcode, barcode) &&
            const DeepCollectionEquality().equals(other.weight, weight) &&
            const DeepCollectionEquality()
                .equals(other.nutrientFacts, nutrientFacts) &&
            const DeepCollectionEquality().equals(other.category, category) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.brand, brand) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other.ingredients, ingredients) &&
            const DeepCollectionEquality()
                .equals(other._photosUrls, _photosUrls));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(barcode),
      const DeepCollectionEquality().hash(weight),
      const DeepCollectionEquality().hash(nutrientFacts),
      const DeepCollectionEquality().hash(category),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(brand),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(ingredients),
      const DeepCollectionEquality().hash(_photosUrls));

  @JsonKey(ignore: true)
  @override
  _$$_ProductDtoCopyWith<_$_ProductDto> get copyWith =>
      __$$_ProductDtoCopyWithImpl<_$_ProductDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductDtoToJson(this);
  }
}

abstract class _ProductDto extends ProductDto {
  const factory _ProductDto(
      {@JsonKey(ignore: true) final String id,
      required final String barcode,
      required final WeightDto weight,
      final NutrientFactsDto? nutrientFacts,
      required final String category,
      required final String name,
      required final String brand,
      required final String description,
      required final String ingredients,
      required final List<String> photosUrls}) = _$_ProductDto;
  const _ProductDto._() : super._();

  factory _ProductDto.fromJson(Map<String, dynamic> json) =
      _$_ProductDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String get id => throw _privateConstructorUsedError;
  @override
  String get barcode => throw _privateConstructorUsedError;
  @override
  WeightDto get weight => throw _privateConstructorUsedError;
  @override
  NutrientFactsDto? get nutrientFacts => throw _privateConstructorUsedError;
  @override
  String get category => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get brand => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  String get ingredients => throw _privateConstructorUsedError;
  @override
  List<String> get photosUrls => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ProductDtoCopyWith<_$_ProductDto> get copyWith =>
      throw _privateConstructorUsedError;
}

WeightDto _$WeightDtoFromJson(Map<String, dynamic> json) {
  return _WeightDto.fromJson(json);
}

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
abstract class _$$_WeightDtoCopyWith<$Res> implements $WeightDtoCopyWith<$Res> {
  factory _$$_WeightDtoCopyWith(
          _$_WeightDto value, $Res Function(_$_WeightDto) then) =
      __$$_WeightDtoCopyWithImpl<$Res>;
  @override
  $Res call({double weight, String weightUnit});
}

/// @nodoc
class __$$_WeightDtoCopyWithImpl<$Res> extends _$WeightDtoCopyWithImpl<$Res>
    implements _$$_WeightDtoCopyWith<$Res> {
  __$$_WeightDtoCopyWithImpl(
      _$_WeightDto _value, $Res Function(_$_WeightDto) _then)
      : super(_value, (v) => _then(v as _$_WeightDto));

  @override
  _$_WeightDto get _value => super._value as _$_WeightDto;

  @override
  $Res call({
    Object? weight = freezed,
    Object? weightUnit = freezed,
  }) {
    return _then(_$_WeightDto(
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
            other is _$_WeightDto &&
            const DeepCollectionEquality().equals(other.weight, weight) &&
            const DeepCollectionEquality()
                .equals(other.weightUnit, weightUnit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(weight),
      const DeepCollectionEquality().hash(weightUnit));

  @JsonKey(ignore: true)
  @override
  _$$_WeightDtoCopyWith<_$_WeightDto> get copyWith =>
      __$$_WeightDtoCopyWithImpl<_$_WeightDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeightDtoToJson(this);
  }
}

abstract class _WeightDto extends WeightDto {
  const factory _WeightDto(
      {required final double weight,
      required final String weightUnit}) = _$_WeightDto;
  const _WeightDto._() : super._();

  factory _WeightDto.fromJson(Map<String, dynamic> json) =
      _$_WeightDto.fromJson;

  @override
  double get weight => throw _privateConstructorUsedError;
  @override
  String get weightUnit => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_WeightDtoCopyWith<_$_WeightDto> get copyWith =>
      throw _privateConstructorUsedError;
}

PriceDto _$PriceDtoFromJson(Map<String, dynamic> json) {
  return _PriceDto.fromJson(json);
}

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
abstract class _$$_PriceDtoCopyWith<$Res> implements $PriceDtoCopyWith<$Res> {
  factory _$$_PriceDtoCopyWith(
          _$_PriceDto value, $Res Function(_$_PriceDto) then) =
      __$$_PriceDtoCopyWithImpl<$Res>;
  @override
  $Res call({double price, String currency});
}

/// @nodoc
class __$$_PriceDtoCopyWithImpl<$Res> extends _$PriceDtoCopyWithImpl<$Res>
    implements _$$_PriceDtoCopyWith<$Res> {
  __$$_PriceDtoCopyWithImpl(
      _$_PriceDto _value, $Res Function(_$_PriceDto) _then)
      : super(_value, (v) => _then(v as _$_PriceDto));

  @override
  _$_PriceDto get _value => super._value as _$_PriceDto;

  @override
  $Res call({
    Object? price = freezed,
    Object? currency = freezed,
  }) {
    return _then(_$_PriceDto(
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
            other is _$_PriceDto &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.currency, currency));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(currency));

  @JsonKey(ignore: true)
  @override
  _$$_PriceDtoCopyWith<_$_PriceDto> get copyWith =>
      __$$_PriceDtoCopyWithImpl<_$_PriceDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PriceDtoToJson(this);
  }
}

abstract class _PriceDto extends PriceDto {
  const factory _PriceDto(
      {required final double price,
      required final String currency}) = _$_PriceDto;
  const _PriceDto._() : super._();

  factory _PriceDto.fromJson(Map<String, dynamic> json) = _$_PriceDto.fromJson;

  @override
  double get price => throw _privateConstructorUsedError;
  @override
  String get currency => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_PriceDtoCopyWith<_$_PriceDto> get copyWith =>
      throw _privateConstructorUsedError;
}

NutrientDto _$NutrientDtoFromJson(Map<String, dynamic> json) {
  return _NutrientDto.fromJson(json);
}

/// @nodoc
mixin _$NutrientDto {
  WeightDto get weight => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NutrientDtoCopyWith<NutrientDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NutrientDtoCopyWith<$Res> {
  factory $NutrientDtoCopyWith(
          NutrientDto value, $Res Function(NutrientDto) then) =
      _$NutrientDtoCopyWithImpl<$Res>;
  $Res call({WeightDto weight, String name});

  $WeightDtoCopyWith<$Res> get weight;
}

/// @nodoc
class _$NutrientDtoCopyWithImpl<$Res> implements $NutrientDtoCopyWith<$Res> {
  _$NutrientDtoCopyWithImpl(this._value, this._then);

  final NutrientDto _value;
  // ignore: unused_field
  final $Res Function(NutrientDto) _then;

  @override
  $Res call({
    Object? weight = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      weight: weight == freezed
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as WeightDto,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $WeightDtoCopyWith<$Res> get weight {
    return $WeightDtoCopyWith<$Res>(_value.weight, (value) {
      return _then(_value.copyWith(weight: value));
    });
  }
}

/// @nodoc
abstract class _$$_NutrientDtoCopyWith<$Res>
    implements $NutrientDtoCopyWith<$Res> {
  factory _$$_NutrientDtoCopyWith(
          _$_NutrientDto value, $Res Function(_$_NutrientDto) then) =
      __$$_NutrientDtoCopyWithImpl<$Res>;
  @override
  $Res call({WeightDto weight, String name});

  @override
  $WeightDtoCopyWith<$Res> get weight;
}

/// @nodoc
class __$$_NutrientDtoCopyWithImpl<$Res> extends _$NutrientDtoCopyWithImpl<$Res>
    implements _$$_NutrientDtoCopyWith<$Res> {
  __$$_NutrientDtoCopyWithImpl(
      _$_NutrientDto _value, $Res Function(_$_NutrientDto) _then)
      : super(_value, (v) => _then(v as _$_NutrientDto));

  @override
  _$_NutrientDto get _value => super._value as _$_NutrientDto;

  @override
  $Res call({
    Object? weight = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_NutrientDto(
      weight: weight == freezed
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as WeightDto,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NutrientDto extends _NutrientDto {
  const _$_NutrientDto({required this.weight, required this.name}) : super._();

  factory _$_NutrientDto.fromJson(Map<String, dynamic> json) =>
      _$$_NutrientDtoFromJson(json);

  @override
  final WeightDto weight;
  @override
  final String name;

  @override
  String toString() {
    return 'NutrientDto(weight: $weight, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NutrientDto &&
            const DeepCollectionEquality().equals(other.weight, weight) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(weight),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$$_NutrientDtoCopyWith<_$_NutrientDto> get copyWith =>
      __$$_NutrientDtoCopyWithImpl<_$_NutrientDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NutrientDtoToJson(this);
  }
}

abstract class _NutrientDto extends NutrientDto {
  const factory _NutrientDto(
      {required final WeightDto weight,
      required final String name}) = _$_NutrientDto;
  const _NutrientDto._() : super._();

  factory _NutrientDto.fromJson(Map<String, dynamic> json) =
      _$_NutrientDto.fromJson;

  @override
  WeightDto get weight => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_NutrientDtoCopyWith<_$_NutrientDto> get copyWith =>
      throw _privateConstructorUsedError;
}

FatsDto _$FatsDtoFromJson(Map<String, dynamic> json) {
  return _FatsDto.fromJson(json);
}

/// @nodoc
mixin _$FatsDto {
  NutrientDto get fat => throw _privateConstructorUsedError;
  NutrientDto get saturatedFat => throw _privateConstructorUsedError;
  NutrientDto get transFat => throw _privateConstructorUsedError;
  NutrientDto get monosaturatedFat => throw _privateConstructorUsedError;
  NutrientDto get polysaturatedFat => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FatsDtoCopyWith<FatsDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FatsDtoCopyWith<$Res> {
  factory $FatsDtoCopyWith(FatsDto value, $Res Function(FatsDto) then) =
      _$FatsDtoCopyWithImpl<$Res>;
  $Res call(
      {NutrientDto fat,
      NutrientDto saturatedFat,
      NutrientDto transFat,
      NutrientDto monosaturatedFat,
      NutrientDto polysaturatedFat});

  $NutrientDtoCopyWith<$Res> get fat;
  $NutrientDtoCopyWith<$Res> get saturatedFat;
  $NutrientDtoCopyWith<$Res> get transFat;
  $NutrientDtoCopyWith<$Res> get monosaturatedFat;
  $NutrientDtoCopyWith<$Res> get polysaturatedFat;
}

/// @nodoc
class _$FatsDtoCopyWithImpl<$Res> implements $FatsDtoCopyWith<$Res> {
  _$FatsDtoCopyWithImpl(this._value, this._then);

  final FatsDto _value;
  // ignore: unused_field
  final $Res Function(FatsDto) _then;

  @override
  $Res call({
    Object? fat = freezed,
    Object? saturatedFat = freezed,
    Object? transFat = freezed,
    Object? monosaturatedFat = freezed,
    Object? polysaturatedFat = freezed,
  }) {
    return _then(_value.copyWith(
      fat: fat == freezed
          ? _value.fat
          : fat // ignore: cast_nullable_to_non_nullable
              as NutrientDto,
      saturatedFat: saturatedFat == freezed
          ? _value.saturatedFat
          : saturatedFat // ignore: cast_nullable_to_non_nullable
              as NutrientDto,
      transFat: transFat == freezed
          ? _value.transFat
          : transFat // ignore: cast_nullable_to_non_nullable
              as NutrientDto,
      monosaturatedFat: monosaturatedFat == freezed
          ? _value.monosaturatedFat
          : monosaturatedFat // ignore: cast_nullable_to_non_nullable
              as NutrientDto,
      polysaturatedFat: polysaturatedFat == freezed
          ? _value.polysaturatedFat
          : polysaturatedFat // ignore: cast_nullable_to_non_nullable
              as NutrientDto,
    ));
  }

  @override
  $NutrientDtoCopyWith<$Res> get fat {
    return $NutrientDtoCopyWith<$Res>(_value.fat, (value) {
      return _then(_value.copyWith(fat: value));
    });
  }

  @override
  $NutrientDtoCopyWith<$Res> get saturatedFat {
    return $NutrientDtoCopyWith<$Res>(_value.saturatedFat, (value) {
      return _then(_value.copyWith(saturatedFat: value));
    });
  }

  @override
  $NutrientDtoCopyWith<$Res> get transFat {
    return $NutrientDtoCopyWith<$Res>(_value.transFat, (value) {
      return _then(_value.copyWith(transFat: value));
    });
  }

  @override
  $NutrientDtoCopyWith<$Res> get monosaturatedFat {
    return $NutrientDtoCopyWith<$Res>(_value.monosaturatedFat, (value) {
      return _then(_value.copyWith(monosaturatedFat: value));
    });
  }

  @override
  $NutrientDtoCopyWith<$Res> get polysaturatedFat {
    return $NutrientDtoCopyWith<$Res>(_value.polysaturatedFat, (value) {
      return _then(_value.copyWith(polysaturatedFat: value));
    });
  }
}

/// @nodoc
abstract class _$$_FatsDtoCopyWith<$Res> implements $FatsDtoCopyWith<$Res> {
  factory _$$_FatsDtoCopyWith(
          _$_FatsDto value, $Res Function(_$_FatsDto) then) =
      __$$_FatsDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {NutrientDto fat,
      NutrientDto saturatedFat,
      NutrientDto transFat,
      NutrientDto monosaturatedFat,
      NutrientDto polysaturatedFat});

  @override
  $NutrientDtoCopyWith<$Res> get fat;
  @override
  $NutrientDtoCopyWith<$Res> get saturatedFat;
  @override
  $NutrientDtoCopyWith<$Res> get transFat;
  @override
  $NutrientDtoCopyWith<$Res> get monosaturatedFat;
  @override
  $NutrientDtoCopyWith<$Res> get polysaturatedFat;
}

/// @nodoc
class __$$_FatsDtoCopyWithImpl<$Res> extends _$FatsDtoCopyWithImpl<$Res>
    implements _$$_FatsDtoCopyWith<$Res> {
  __$$_FatsDtoCopyWithImpl(_$_FatsDto _value, $Res Function(_$_FatsDto) _then)
      : super(_value, (v) => _then(v as _$_FatsDto));

  @override
  _$_FatsDto get _value => super._value as _$_FatsDto;

  @override
  $Res call({
    Object? fat = freezed,
    Object? saturatedFat = freezed,
    Object? transFat = freezed,
    Object? monosaturatedFat = freezed,
    Object? polysaturatedFat = freezed,
  }) {
    return _then(_$_FatsDto(
      fat: fat == freezed
          ? _value.fat
          : fat // ignore: cast_nullable_to_non_nullable
              as NutrientDto,
      saturatedFat: saturatedFat == freezed
          ? _value.saturatedFat
          : saturatedFat // ignore: cast_nullable_to_non_nullable
              as NutrientDto,
      transFat: transFat == freezed
          ? _value.transFat
          : transFat // ignore: cast_nullable_to_non_nullable
              as NutrientDto,
      monosaturatedFat: monosaturatedFat == freezed
          ? _value.monosaturatedFat
          : monosaturatedFat // ignore: cast_nullable_to_non_nullable
              as NutrientDto,
      polysaturatedFat: polysaturatedFat == freezed
          ? _value.polysaturatedFat
          : polysaturatedFat // ignore: cast_nullable_to_non_nullable
              as NutrientDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FatsDto extends _FatsDto {
  const _$_FatsDto(
      {required this.fat,
      required this.saturatedFat,
      required this.transFat,
      required this.monosaturatedFat,
      required this.polysaturatedFat})
      : super._();

  factory _$_FatsDto.fromJson(Map<String, dynamic> json) =>
      _$$_FatsDtoFromJson(json);

  @override
  final NutrientDto fat;
  @override
  final NutrientDto saturatedFat;
  @override
  final NutrientDto transFat;
  @override
  final NutrientDto monosaturatedFat;
  @override
  final NutrientDto polysaturatedFat;

  @override
  String toString() {
    return 'FatsDto(fat: $fat, saturatedFat: $saturatedFat, transFat: $transFat, monosaturatedFat: $monosaturatedFat, polysaturatedFat: $polysaturatedFat)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FatsDto &&
            const DeepCollectionEquality().equals(other.fat, fat) &&
            const DeepCollectionEquality()
                .equals(other.saturatedFat, saturatedFat) &&
            const DeepCollectionEquality().equals(other.transFat, transFat) &&
            const DeepCollectionEquality()
                .equals(other.monosaturatedFat, monosaturatedFat) &&
            const DeepCollectionEquality()
                .equals(other.polysaturatedFat, polysaturatedFat));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(fat),
      const DeepCollectionEquality().hash(saturatedFat),
      const DeepCollectionEquality().hash(transFat),
      const DeepCollectionEquality().hash(monosaturatedFat),
      const DeepCollectionEquality().hash(polysaturatedFat));

  @JsonKey(ignore: true)
  @override
  _$$_FatsDtoCopyWith<_$_FatsDto> get copyWith =>
      __$$_FatsDtoCopyWithImpl<_$_FatsDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FatsDtoToJson(this);
  }
}

abstract class _FatsDto extends FatsDto {
  const factory _FatsDto(
      {required final NutrientDto fat,
      required final NutrientDto saturatedFat,
      required final NutrientDto transFat,
      required final NutrientDto monosaturatedFat,
      required final NutrientDto polysaturatedFat}) = _$_FatsDto;
  const _FatsDto._() : super._();

  factory _FatsDto.fromJson(Map<String, dynamic> json) = _$_FatsDto.fromJson;

  @override
  NutrientDto get fat => throw _privateConstructorUsedError;
  @override
  NutrientDto get saturatedFat => throw _privateConstructorUsedError;
  @override
  NutrientDto get transFat => throw _privateConstructorUsedError;
  @override
  NutrientDto get monosaturatedFat => throw _privateConstructorUsedError;
  @override
  NutrientDto get polysaturatedFat => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_FatsDtoCopyWith<_$_FatsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

ProteinsDto _$ProteinsDtoFromJson(Map<String, dynamic> json) {
  return _ProteinsDto.fromJson(json);
}

/// @nodoc
mixin _$ProteinsDto {
  NutrientDto get protein => throw _privateConstructorUsedError;
  NutrientDto get animalProtein => throw _privateConstructorUsedError;
  NutrientDto get plantProtein => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProteinsDtoCopyWith<ProteinsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProteinsDtoCopyWith<$Res> {
  factory $ProteinsDtoCopyWith(
          ProteinsDto value, $Res Function(ProteinsDto) then) =
      _$ProteinsDtoCopyWithImpl<$Res>;
  $Res call(
      {NutrientDto protein,
      NutrientDto animalProtein,
      NutrientDto plantProtein});

  $NutrientDtoCopyWith<$Res> get protein;
  $NutrientDtoCopyWith<$Res> get animalProtein;
  $NutrientDtoCopyWith<$Res> get plantProtein;
}

/// @nodoc
class _$ProteinsDtoCopyWithImpl<$Res> implements $ProteinsDtoCopyWith<$Res> {
  _$ProteinsDtoCopyWithImpl(this._value, this._then);

  final ProteinsDto _value;
  // ignore: unused_field
  final $Res Function(ProteinsDto) _then;

  @override
  $Res call({
    Object? protein = freezed,
    Object? animalProtein = freezed,
    Object? plantProtein = freezed,
  }) {
    return _then(_value.copyWith(
      protein: protein == freezed
          ? _value.protein
          : protein // ignore: cast_nullable_to_non_nullable
              as NutrientDto,
      animalProtein: animalProtein == freezed
          ? _value.animalProtein
          : animalProtein // ignore: cast_nullable_to_non_nullable
              as NutrientDto,
      plantProtein: plantProtein == freezed
          ? _value.plantProtein
          : plantProtein // ignore: cast_nullable_to_non_nullable
              as NutrientDto,
    ));
  }

  @override
  $NutrientDtoCopyWith<$Res> get protein {
    return $NutrientDtoCopyWith<$Res>(_value.protein, (value) {
      return _then(_value.copyWith(protein: value));
    });
  }

  @override
  $NutrientDtoCopyWith<$Res> get animalProtein {
    return $NutrientDtoCopyWith<$Res>(_value.animalProtein, (value) {
      return _then(_value.copyWith(animalProtein: value));
    });
  }

  @override
  $NutrientDtoCopyWith<$Res> get plantProtein {
    return $NutrientDtoCopyWith<$Res>(_value.plantProtein, (value) {
      return _then(_value.copyWith(plantProtein: value));
    });
  }
}

/// @nodoc
abstract class _$$_ProteinsDtoCopyWith<$Res>
    implements $ProteinsDtoCopyWith<$Res> {
  factory _$$_ProteinsDtoCopyWith(
          _$_ProteinsDto value, $Res Function(_$_ProteinsDto) then) =
      __$$_ProteinsDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {NutrientDto protein,
      NutrientDto animalProtein,
      NutrientDto plantProtein});

  @override
  $NutrientDtoCopyWith<$Res> get protein;
  @override
  $NutrientDtoCopyWith<$Res> get animalProtein;
  @override
  $NutrientDtoCopyWith<$Res> get plantProtein;
}

/// @nodoc
class __$$_ProteinsDtoCopyWithImpl<$Res> extends _$ProteinsDtoCopyWithImpl<$Res>
    implements _$$_ProteinsDtoCopyWith<$Res> {
  __$$_ProteinsDtoCopyWithImpl(
      _$_ProteinsDto _value, $Res Function(_$_ProteinsDto) _then)
      : super(_value, (v) => _then(v as _$_ProteinsDto));

  @override
  _$_ProteinsDto get _value => super._value as _$_ProteinsDto;

  @override
  $Res call({
    Object? protein = freezed,
    Object? animalProtein = freezed,
    Object? plantProtein = freezed,
  }) {
    return _then(_$_ProteinsDto(
      protein: protein == freezed
          ? _value.protein
          : protein // ignore: cast_nullable_to_non_nullable
              as NutrientDto,
      animalProtein: animalProtein == freezed
          ? _value.animalProtein
          : animalProtein // ignore: cast_nullable_to_non_nullable
              as NutrientDto,
      plantProtein: plantProtein == freezed
          ? _value.plantProtein
          : plantProtein // ignore: cast_nullable_to_non_nullable
              as NutrientDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProteinsDto extends _ProteinsDto {
  const _$_ProteinsDto(
      {required this.protein,
      required this.animalProtein,
      required this.plantProtein})
      : super._();

  factory _$_ProteinsDto.fromJson(Map<String, dynamic> json) =>
      _$$_ProteinsDtoFromJson(json);

  @override
  final NutrientDto protein;
  @override
  final NutrientDto animalProtein;
  @override
  final NutrientDto plantProtein;

  @override
  String toString() {
    return 'ProteinsDto(protein: $protein, animalProtein: $animalProtein, plantProtein: $plantProtein)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProteinsDto &&
            const DeepCollectionEquality().equals(other.protein, protein) &&
            const DeepCollectionEquality()
                .equals(other.animalProtein, animalProtein) &&
            const DeepCollectionEquality()
                .equals(other.plantProtein, plantProtein));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(protein),
      const DeepCollectionEquality().hash(animalProtein),
      const DeepCollectionEquality().hash(plantProtein));

  @JsonKey(ignore: true)
  @override
  _$$_ProteinsDtoCopyWith<_$_ProteinsDto> get copyWith =>
      __$$_ProteinsDtoCopyWithImpl<_$_ProteinsDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProteinsDtoToJson(this);
  }
}

abstract class _ProteinsDto extends ProteinsDto {
  const factory _ProteinsDto(
      {required final NutrientDto protein,
      required final NutrientDto animalProtein,
      required final NutrientDto plantProtein}) = _$_ProteinsDto;
  const _ProteinsDto._() : super._();

  factory _ProteinsDto.fromJson(Map<String, dynamic> json) =
      _$_ProteinsDto.fromJson;

  @override
  NutrientDto get protein => throw _privateConstructorUsedError;
  @override
  NutrientDto get animalProtein => throw _privateConstructorUsedError;
  @override
  NutrientDto get plantProtein => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ProteinsDtoCopyWith<_$_ProteinsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

CarbohydratesDto _$CarbohydratesDtoFromJson(Map<String, dynamic> json) {
  return _CarbohydratesDto.fromJson(json);
}

/// @nodoc
mixin _$CarbohydratesDto {
  NutrientDto get carbohydrate => throw _privateConstructorUsedError;
  NutrientDto get sugar => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CarbohydratesDtoCopyWith<CarbohydratesDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarbohydratesDtoCopyWith<$Res> {
  factory $CarbohydratesDtoCopyWith(
          CarbohydratesDto value, $Res Function(CarbohydratesDto) then) =
      _$CarbohydratesDtoCopyWithImpl<$Res>;
  $Res call({NutrientDto carbohydrate, NutrientDto sugar});

  $NutrientDtoCopyWith<$Res> get carbohydrate;
  $NutrientDtoCopyWith<$Res> get sugar;
}

/// @nodoc
class _$CarbohydratesDtoCopyWithImpl<$Res>
    implements $CarbohydratesDtoCopyWith<$Res> {
  _$CarbohydratesDtoCopyWithImpl(this._value, this._then);

  final CarbohydratesDto _value;
  // ignore: unused_field
  final $Res Function(CarbohydratesDto) _then;

  @override
  $Res call({
    Object? carbohydrate = freezed,
    Object? sugar = freezed,
  }) {
    return _then(_value.copyWith(
      carbohydrate: carbohydrate == freezed
          ? _value.carbohydrate
          : carbohydrate // ignore: cast_nullable_to_non_nullable
              as NutrientDto,
      sugar: sugar == freezed
          ? _value.sugar
          : sugar // ignore: cast_nullable_to_non_nullable
              as NutrientDto,
    ));
  }

  @override
  $NutrientDtoCopyWith<$Res> get carbohydrate {
    return $NutrientDtoCopyWith<$Res>(_value.carbohydrate, (value) {
      return _then(_value.copyWith(carbohydrate: value));
    });
  }

  @override
  $NutrientDtoCopyWith<$Res> get sugar {
    return $NutrientDtoCopyWith<$Res>(_value.sugar, (value) {
      return _then(_value.copyWith(sugar: value));
    });
  }
}

/// @nodoc
abstract class _$$_CarbohydratesDtoCopyWith<$Res>
    implements $CarbohydratesDtoCopyWith<$Res> {
  factory _$$_CarbohydratesDtoCopyWith(
          _$_CarbohydratesDto value, $Res Function(_$_CarbohydratesDto) then) =
      __$$_CarbohydratesDtoCopyWithImpl<$Res>;
  @override
  $Res call({NutrientDto carbohydrate, NutrientDto sugar});

  @override
  $NutrientDtoCopyWith<$Res> get carbohydrate;
  @override
  $NutrientDtoCopyWith<$Res> get sugar;
}

/// @nodoc
class __$$_CarbohydratesDtoCopyWithImpl<$Res>
    extends _$CarbohydratesDtoCopyWithImpl<$Res>
    implements _$$_CarbohydratesDtoCopyWith<$Res> {
  __$$_CarbohydratesDtoCopyWithImpl(
      _$_CarbohydratesDto _value, $Res Function(_$_CarbohydratesDto) _then)
      : super(_value, (v) => _then(v as _$_CarbohydratesDto));

  @override
  _$_CarbohydratesDto get _value => super._value as _$_CarbohydratesDto;

  @override
  $Res call({
    Object? carbohydrate = freezed,
    Object? sugar = freezed,
  }) {
    return _then(_$_CarbohydratesDto(
      carbohydrate: carbohydrate == freezed
          ? _value.carbohydrate
          : carbohydrate // ignore: cast_nullable_to_non_nullable
              as NutrientDto,
      sugar: sugar == freezed
          ? _value.sugar
          : sugar // ignore: cast_nullable_to_non_nullable
              as NutrientDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CarbohydratesDto extends _CarbohydratesDto {
  const _$_CarbohydratesDto({required this.carbohydrate, required this.sugar})
      : super._();

  factory _$_CarbohydratesDto.fromJson(Map<String, dynamic> json) =>
      _$$_CarbohydratesDtoFromJson(json);

  @override
  final NutrientDto carbohydrate;
  @override
  final NutrientDto sugar;

  @override
  String toString() {
    return 'CarbohydratesDto(carbohydrate: $carbohydrate, sugar: $sugar)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CarbohydratesDto &&
            const DeepCollectionEquality()
                .equals(other.carbohydrate, carbohydrate) &&
            const DeepCollectionEquality().equals(other.sugar, sugar));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(carbohydrate),
      const DeepCollectionEquality().hash(sugar));

  @JsonKey(ignore: true)
  @override
  _$$_CarbohydratesDtoCopyWith<_$_CarbohydratesDto> get copyWith =>
      __$$_CarbohydratesDtoCopyWithImpl<_$_CarbohydratesDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CarbohydratesDtoToJson(this);
  }
}

abstract class _CarbohydratesDto extends CarbohydratesDto {
  const factory _CarbohydratesDto(
      {required final NutrientDto carbohydrate,
      required final NutrientDto sugar}) = _$_CarbohydratesDto;
  const _CarbohydratesDto._() : super._();

  factory _CarbohydratesDto.fromJson(Map<String, dynamic> json) =
      _$_CarbohydratesDto.fromJson;

  @override
  NutrientDto get carbohydrate => throw _privateConstructorUsedError;
  @override
  NutrientDto get sugar => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_CarbohydratesDtoCopyWith<_$_CarbohydratesDto> get copyWith =>
      throw _privateConstructorUsedError;
}

NutrientFactsDto _$NutrientFactsDtoFromJson(Map<String, dynamic> json) {
  return _NutrientFactsDto.fromJson(json);
}

/// @nodoc
mixin _$NutrientFactsDto {
  FatsDto get fats => throw _privateConstructorUsedError;
  ProteinsDto get proteins => throw _privateConstructorUsedError;
  CarbohydratesDto get carbohydrates => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NutrientFactsDtoCopyWith<NutrientFactsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NutrientFactsDtoCopyWith<$Res> {
  factory $NutrientFactsDtoCopyWith(
          NutrientFactsDto value, $Res Function(NutrientFactsDto) then) =
      _$NutrientFactsDtoCopyWithImpl<$Res>;
  $Res call(
      {FatsDto fats, ProteinsDto proteins, CarbohydratesDto carbohydrates});

  $FatsDtoCopyWith<$Res> get fats;
  $ProteinsDtoCopyWith<$Res> get proteins;
  $CarbohydratesDtoCopyWith<$Res> get carbohydrates;
}

/// @nodoc
class _$NutrientFactsDtoCopyWithImpl<$Res>
    implements $NutrientFactsDtoCopyWith<$Res> {
  _$NutrientFactsDtoCopyWithImpl(this._value, this._then);

  final NutrientFactsDto _value;
  // ignore: unused_field
  final $Res Function(NutrientFactsDto) _then;

  @override
  $Res call({
    Object? fats = freezed,
    Object? proteins = freezed,
    Object? carbohydrates = freezed,
  }) {
    return _then(_value.copyWith(
      fats: fats == freezed
          ? _value.fats
          : fats // ignore: cast_nullable_to_non_nullable
              as FatsDto,
      proteins: proteins == freezed
          ? _value.proteins
          : proteins // ignore: cast_nullable_to_non_nullable
              as ProteinsDto,
      carbohydrates: carbohydrates == freezed
          ? _value.carbohydrates
          : carbohydrates // ignore: cast_nullable_to_non_nullable
              as CarbohydratesDto,
    ));
  }

  @override
  $FatsDtoCopyWith<$Res> get fats {
    return $FatsDtoCopyWith<$Res>(_value.fats, (value) {
      return _then(_value.copyWith(fats: value));
    });
  }

  @override
  $ProteinsDtoCopyWith<$Res> get proteins {
    return $ProteinsDtoCopyWith<$Res>(_value.proteins, (value) {
      return _then(_value.copyWith(proteins: value));
    });
  }

  @override
  $CarbohydratesDtoCopyWith<$Res> get carbohydrates {
    return $CarbohydratesDtoCopyWith<$Res>(_value.carbohydrates, (value) {
      return _then(_value.copyWith(carbohydrates: value));
    });
  }
}

/// @nodoc
abstract class _$$_NutrientFactsDtoCopyWith<$Res>
    implements $NutrientFactsDtoCopyWith<$Res> {
  factory _$$_NutrientFactsDtoCopyWith(
          _$_NutrientFactsDto value, $Res Function(_$_NutrientFactsDto) then) =
      __$$_NutrientFactsDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {FatsDto fats, ProteinsDto proteins, CarbohydratesDto carbohydrates});

  @override
  $FatsDtoCopyWith<$Res> get fats;
  @override
  $ProteinsDtoCopyWith<$Res> get proteins;
  @override
  $CarbohydratesDtoCopyWith<$Res> get carbohydrates;
}

/// @nodoc
class __$$_NutrientFactsDtoCopyWithImpl<$Res>
    extends _$NutrientFactsDtoCopyWithImpl<$Res>
    implements _$$_NutrientFactsDtoCopyWith<$Res> {
  __$$_NutrientFactsDtoCopyWithImpl(
      _$_NutrientFactsDto _value, $Res Function(_$_NutrientFactsDto) _then)
      : super(_value, (v) => _then(v as _$_NutrientFactsDto));

  @override
  _$_NutrientFactsDto get _value => super._value as _$_NutrientFactsDto;

  @override
  $Res call({
    Object? fats = freezed,
    Object? proteins = freezed,
    Object? carbohydrates = freezed,
  }) {
    return _then(_$_NutrientFactsDto(
      fats: fats == freezed
          ? _value.fats
          : fats // ignore: cast_nullable_to_non_nullable
              as FatsDto,
      proteins: proteins == freezed
          ? _value.proteins
          : proteins // ignore: cast_nullable_to_non_nullable
              as ProteinsDto,
      carbohydrates: carbohydrates == freezed
          ? _value.carbohydrates
          : carbohydrates // ignore: cast_nullable_to_non_nullable
              as CarbohydratesDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NutrientFactsDto extends _NutrientFactsDto {
  const _$_NutrientFactsDto(
      {required this.fats, required this.proteins, required this.carbohydrates})
      : super._();

  factory _$_NutrientFactsDto.fromJson(Map<String, dynamic> json) =>
      _$$_NutrientFactsDtoFromJson(json);

  @override
  final FatsDto fats;
  @override
  final ProteinsDto proteins;
  @override
  final CarbohydratesDto carbohydrates;

  @override
  String toString() {
    return 'NutrientFactsDto(fats: $fats, proteins: $proteins, carbohydrates: $carbohydrates)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NutrientFactsDto &&
            const DeepCollectionEquality().equals(other.fats, fats) &&
            const DeepCollectionEquality().equals(other.proteins, proteins) &&
            const DeepCollectionEquality()
                .equals(other.carbohydrates, carbohydrates));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(fats),
      const DeepCollectionEquality().hash(proteins),
      const DeepCollectionEquality().hash(carbohydrates));

  @JsonKey(ignore: true)
  @override
  _$$_NutrientFactsDtoCopyWith<_$_NutrientFactsDto> get copyWith =>
      __$$_NutrientFactsDtoCopyWithImpl<_$_NutrientFactsDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NutrientFactsDtoToJson(this);
  }
}

abstract class _NutrientFactsDto extends NutrientFactsDto {
  const factory _NutrientFactsDto(
      {required final FatsDto fats,
      required final ProteinsDto proteins,
      required final CarbohydratesDto carbohydrates}) = _$_NutrientFactsDto;
  const _NutrientFactsDto._() : super._();

  factory _NutrientFactsDto.fromJson(Map<String, dynamic> json) =
      _$_NutrientFactsDto.fromJson;

  @override
  FatsDto get fats => throw _privateConstructorUsedError;
  @override
  ProteinsDto get proteins => throw _privateConstructorUsedError;
  @override
  CarbohydratesDto get carbohydrates => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_NutrientFactsDtoCopyWith<_$_NutrientFactsDto> get copyWith =>
      throw _privateConstructorUsedError;
}
