// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product_snippets.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductSnipper {
  UniqueId get productId => throw _privateConstructorUsedError;
  Barcode get barcode => throw _privateConstructorUsedError;
  ProductName get name => throw _privateConstructorUsedError;
  BrandName get brand => throw _privateConstructorUsedError;
  Price get price => throw _privateConstructorUsedError;
  Category get category => throw _privateConstructorUsedError;
  Weight get weight => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductSnipperCopyWith<ProductSnippet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductSnipperCopyWith<$Res> {
  factory $ProductSnipperCopyWith(
          ProductSnippet value, $Res Function(ProductSnippet) then) =
      _$ProductSnipperCopyWithImpl<$Res>;
  $Res call(
      {UniqueId productId,
      Barcode barcode,
      ProductName name,
      BrandName brand,
      Price price,
      Category category,
      Weight weight});

  $PriceCopyWith<$Res> get price;
  $WeightCopyWith<$Res> get weight;
}

/// @nodoc
class _$ProductSnipperCopyWithImpl<$Res>
    implements $ProductSnipperCopyWith<$Res> {
  _$ProductSnipperCopyWithImpl(this._value, this._then);

  final ProductSnippet _value;
  // ignore: unused_field
  final $Res Function(ProductSnippet) _then;

  @override
  $Res call({
    Object? productId = freezed,
    Object? barcode = freezed,
    Object? name = freezed,
    Object? brand = freezed,
    Object? price = freezed,
    Object? category = freezed,
    Object? weight = freezed,
  }) {
    return _then(_value.copyWith(
      productId: productId == freezed
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      barcode: barcode == freezed
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as Barcode,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as ProductName,
      brand: brand == freezed
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as BrandName,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Price,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category,
      weight: weight == freezed
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as Weight,
    ));
  }

  @override
  $PriceCopyWith<$Res> get price {
    return $PriceCopyWith<$Res>(_value.price, (value) {
      return _then(_value.copyWith(price: value));
    });
  }

  @override
  $WeightCopyWith<$Res> get weight {
    return $WeightCopyWith<$Res>(_value.weight, (value) {
      return _then(_value.copyWith(weight: value));
    });
  }
}

/// @nodoc
abstract class _$$_ProductSnipperCopyWith<$Res>
    implements $ProductSnipperCopyWith<$Res> {
  factory _$$_ProductSnipperCopyWith(
          _$_ProductSnipper value, $Res Function(_$_ProductSnipper) then) =
      __$$_ProductSnipperCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId productId,
      Barcode barcode,
      ProductName name,
      BrandName brand,
      Price price,
      Category category,
      Weight weight});

  @override
  $PriceCopyWith<$Res> get price;
  @override
  $WeightCopyWith<$Res> get weight;
}

/// @nodoc
class __$$_ProductSnipperCopyWithImpl<$Res>
    extends _$ProductSnipperCopyWithImpl<$Res>
    implements _$$_ProductSnipperCopyWith<$Res> {
  __$$_ProductSnipperCopyWithImpl(
      _$_ProductSnipper _value, $Res Function(_$_ProductSnipper) _then)
      : super(_value, (v) => _then(v as _$_ProductSnipper));

  @override
  _$_ProductSnipper get _value => super._value as _$_ProductSnipper;

  @override
  $Res call({
    Object? productId = freezed,
    Object? barcode = freezed,
    Object? name = freezed,
    Object? brand = freezed,
    Object? price = freezed,
    Object? category = freezed,
    Object? weight = freezed,
  }) {
    return _then(_$_ProductSnipper(
      productId: productId == freezed
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      barcode: barcode == freezed
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as Barcode,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as ProductName,
      brand: brand == freezed
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as BrandName,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Price,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category,
      weight: weight == freezed
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as Weight,
    ));
  }
}

/// @nodoc

class _$_ProductSnipper implements _ProductSnipper {
  const _$_ProductSnipper(
      {required this.productId,
      required this.barcode,
      required this.name,
      required this.brand,
      required this.price,
      required this.category,
      required this.weight});

  @override
  final UniqueId productId;
  @override
  final Barcode barcode;
  @override
  final ProductName name;
  @override
  final BrandName brand;
  @override
  final Price price;
  @override
  final Category category;
  @override
  final Weight weight;

  @override
  String toString() {
    return 'ProductSnipper(productId: $productId, barcode: $barcode, name: $name, brand: $brand, price: $price, category: $category, weight: $weight)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductSnipper &&
            const DeepCollectionEquality().equals(other.productId, productId) &&
            const DeepCollectionEquality().equals(other.barcode, barcode) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.brand, brand) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.category, category) &&
            const DeepCollectionEquality().equals(other.weight, weight));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(productId),
      const DeepCollectionEquality().hash(barcode),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(brand),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(category),
      const DeepCollectionEquality().hash(weight));

  @JsonKey(ignore: true)
  @override
  _$$_ProductSnipperCopyWith<_$_ProductSnipper> get copyWith =>
      __$$_ProductSnipperCopyWithImpl<_$_ProductSnipper>(this, _$identity);
}

abstract class _ProductSnipper implements ProductSnippet {
  const factory _ProductSnipper(
      {required final UniqueId productId,
      required final Barcode barcode,
      required final ProductName name,
      required final BrandName brand,
      required final Price price,
      required final Category category,
      required final Weight weight}) = _$_ProductSnipper;

  @override
  UniqueId get productId => throw _privateConstructorUsedError;
  @override
  Barcode get barcode => throw _privateConstructorUsedError;
  @override
  ProductName get name => throw _privateConstructorUsedError;
  @override
  BrandName get brand => throw _privateConstructorUsedError;
  @override
  Price get price => throw _privateConstructorUsedError;
  @override
  Category get category => throw _privateConstructorUsedError;
  @override
  Weight get weight => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ProductSnipperCopyWith<_$_ProductSnipper> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AddedProduct {
  UniqueId get productId => throw _privateConstructorUsedError;
  Barcode get barcode => throw _privateConstructorUsedError;
  Category get category => throw _privateConstructorUsedError;
  ProductName get name => throw _privateConstructorUsedError;
  NonEmptyList5<ShopifyUrl> get productPhotos =>
      throw _privateConstructorUsedError;
  Weight get weight => throw _privateConstructorUsedError;
  Price get price => throw _privateConstructorUsedError;
  UniqueId get shopId => throw _privateConstructorUsedError;
  Location get shopLocation => throw _privateConstructorUsedError;
  Address get shopAddress => throw _privateConstructorUsedError;
  ShopifyUrl get shopLogo => throw _privateConstructorUsedError;
  ShopName get shopName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddedProductCopyWith<AddedProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddedProductCopyWith<$Res> {
  factory $AddedProductCopyWith(
          AddedProduct value, $Res Function(AddedProduct) then) =
      _$AddedProductCopyWithImpl<$Res>;
  $Res call(
      {UniqueId productId,
      Barcode barcode,
      Category category,
      ProductName name,
      NonEmptyList5<ShopifyUrl> productPhotos,
      Weight weight,
      Price price,
      UniqueId shopId,
      Location shopLocation,
      Address shopAddress,
      ShopifyUrl shopLogo,
      ShopName shopName});

  $WeightCopyWith<$Res> get weight;
  $PriceCopyWith<$Res> get price;
  $LocationCopyWith<$Res> get shopLocation;
  $AddressCopyWith<$Res> get shopAddress;
}

/// @nodoc
class _$AddedProductCopyWithImpl<$Res> implements $AddedProductCopyWith<$Res> {
  _$AddedProductCopyWithImpl(this._value, this._then);

  final AddedProduct _value;
  // ignore: unused_field
  final $Res Function(AddedProduct) _then;

  @override
  $Res call({
    Object? productId = freezed,
    Object? barcode = freezed,
    Object? category = freezed,
    Object? name = freezed,
    Object? productPhotos = freezed,
    Object? weight = freezed,
    Object? price = freezed,
    Object? shopId = freezed,
    Object? shopLocation = freezed,
    Object? shopAddress = freezed,
    Object? shopLogo = freezed,
    Object? shopName = freezed,
  }) {
    return _then(_value.copyWith(
      productId: productId == freezed
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      barcode: barcode == freezed
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as Barcode,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as ProductName,
      productPhotos: productPhotos == freezed
          ? _value.productPhotos
          : productPhotos // ignore: cast_nullable_to_non_nullable
              as NonEmptyList5<ShopifyUrl>,
      weight: weight == freezed
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as Weight,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Price,
      shopId: shopId == freezed
          ? _value.shopId
          : shopId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      shopLocation: shopLocation == freezed
          ? _value.shopLocation
          : shopLocation // ignore: cast_nullable_to_non_nullable
              as Location,
      shopAddress: shopAddress == freezed
          ? _value.shopAddress
          : shopAddress // ignore: cast_nullable_to_non_nullable
              as Address,
      shopLogo: shopLogo == freezed
          ? _value.shopLogo
          : shopLogo // ignore: cast_nullable_to_non_nullable
              as ShopifyUrl,
      shopName: shopName == freezed
          ? _value.shopName
          : shopName // ignore: cast_nullable_to_non_nullable
              as ShopName,
    ));
  }

  @override
  $WeightCopyWith<$Res> get weight {
    return $WeightCopyWith<$Res>(_value.weight, (value) {
      return _then(_value.copyWith(weight: value));
    });
  }

  @override
  $PriceCopyWith<$Res> get price {
    return $PriceCopyWith<$Res>(_value.price, (value) {
      return _then(_value.copyWith(price: value));
    });
  }

  @override
  $LocationCopyWith<$Res> get shopLocation {
    return $LocationCopyWith<$Res>(_value.shopLocation, (value) {
      return _then(_value.copyWith(shopLocation: value));
    });
  }

  @override
  $AddressCopyWith<$Res> get shopAddress {
    return $AddressCopyWith<$Res>(_value.shopAddress, (value) {
      return _then(_value.copyWith(shopAddress: value));
    });
  }
}

/// @nodoc
abstract class _$$_AddedProductCopyWith<$Res>
    implements $AddedProductCopyWith<$Res> {
  factory _$$_AddedProductCopyWith(
          _$_AddedProduct value, $Res Function(_$_AddedProduct) then) =
      __$$_AddedProductCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId productId,
      Barcode barcode,
      Category category,
      ProductName name,
      NonEmptyList5<ShopifyUrl> productPhotos,
      Weight weight,
      Price price,
      UniqueId shopId,
      Location shopLocation,
      Address shopAddress,
      ShopifyUrl shopLogo,
      ShopName shopName});

  @override
  $WeightCopyWith<$Res> get weight;
  @override
  $PriceCopyWith<$Res> get price;
  @override
  $LocationCopyWith<$Res> get shopLocation;
  @override
  $AddressCopyWith<$Res> get shopAddress;
}

/// @nodoc
class __$$_AddedProductCopyWithImpl<$Res>
    extends _$AddedProductCopyWithImpl<$Res>
    implements _$$_AddedProductCopyWith<$Res> {
  __$$_AddedProductCopyWithImpl(
      _$_AddedProduct _value, $Res Function(_$_AddedProduct) _then)
      : super(_value, (v) => _then(v as _$_AddedProduct));

  @override
  _$_AddedProduct get _value => super._value as _$_AddedProduct;

  @override
  $Res call({
    Object? productId = freezed,
    Object? barcode = freezed,
    Object? category = freezed,
    Object? name = freezed,
    Object? productPhotos = freezed,
    Object? weight = freezed,
    Object? price = freezed,
    Object? shopId = freezed,
    Object? shopLocation = freezed,
    Object? shopAddress = freezed,
    Object? shopLogo = freezed,
    Object? shopName = freezed,
  }) {
    return _then(_$_AddedProduct(
      productId: productId == freezed
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      barcode: barcode == freezed
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as Barcode,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as ProductName,
      productPhotos: productPhotos == freezed
          ? _value.productPhotos
          : productPhotos // ignore: cast_nullable_to_non_nullable
              as NonEmptyList5<ShopifyUrl>,
      weight: weight == freezed
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as Weight,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Price,
      shopId: shopId == freezed
          ? _value.shopId
          : shopId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      shopLocation: shopLocation == freezed
          ? _value.shopLocation
          : shopLocation // ignore: cast_nullable_to_non_nullable
              as Location,
      shopAddress: shopAddress == freezed
          ? _value.shopAddress
          : shopAddress // ignore: cast_nullable_to_non_nullable
              as Address,
      shopLogo: shopLogo == freezed
          ? _value.shopLogo
          : shopLogo // ignore: cast_nullable_to_non_nullable
              as ShopifyUrl,
      shopName: shopName == freezed
          ? _value.shopName
          : shopName // ignore: cast_nullable_to_non_nullable
              as ShopName,
    ));
  }
}

/// @nodoc

class _$_AddedProduct extends _AddedProduct {
  const _$_AddedProduct(
      {required this.productId,
      required this.barcode,
      required this.category,
      required this.name,
      required this.productPhotos,
      required this.weight,
      required this.price,
      required this.shopId,
      required this.shopLocation,
      required this.shopAddress,
      required this.shopLogo,
      required this.shopName})
      : super._();

  @override
  final UniqueId productId;
  @override
  final Barcode barcode;
  @override
  final Category category;
  @override
  final ProductName name;
  @override
  final NonEmptyList5<ShopifyUrl> productPhotos;
  @override
  final Weight weight;
  @override
  final Price price;
  @override
  final UniqueId shopId;
  @override
  final Location shopLocation;
  @override
  final Address shopAddress;
  @override
  final ShopifyUrl shopLogo;
  @override
  final ShopName shopName;

  @override
  String toString() {
    return 'AddedProduct(productId: $productId, barcode: $barcode, category: $category, name: $name, productPhotos: $productPhotos, weight: $weight, price: $price, shopId: $shopId, shopLocation: $shopLocation, shopAddress: $shopAddress, shopLogo: $shopLogo, shopName: $shopName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddedProduct &&
            const DeepCollectionEquality().equals(other.productId, productId) &&
            const DeepCollectionEquality().equals(other.barcode, barcode) &&
            const DeepCollectionEquality().equals(other.category, category) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.productPhotos, productPhotos) &&
            const DeepCollectionEquality().equals(other.weight, weight) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.shopId, shopId) &&
            const DeepCollectionEquality()
                .equals(other.shopLocation, shopLocation) &&
            const DeepCollectionEquality()
                .equals(other.shopAddress, shopAddress) &&
            const DeepCollectionEquality().equals(other.shopLogo, shopLogo) &&
            const DeepCollectionEquality().equals(other.shopName, shopName));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(productId),
      const DeepCollectionEquality().hash(barcode),
      const DeepCollectionEquality().hash(category),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(productPhotos),
      const DeepCollectionEquality().hash(weight),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(shopId),
      const DeepCollectionEquality().hash(shopLocation),
      const DeepCollectionEquality().hash(shopAddress),
      const DeepCollectionEquality().hash(shopLogo),
      const DeepCollectionEquality().hash(shopName));

  @JsonKey(ignore: true)
  @override
  _$$_AddedProductCopyWith<_$_AddedProduct> get copyWith =>
      __$$_AddedProductCopyWithImpl<_$_AddedProduct>(this, _$identity);
}

abstract class _AddedProduct extends AddedProduct {
  const factory _AddedProduct(
      {required final UniqueId productId,
      required final Barcode barcode,
      required final Category category,
      required final ProductName name,
      required final NonEmptyList5<ShopifyUrl> productPhotos,
      required final Weight weight,
      required final Price price,
      required final UniqueId shopId,
      required final Location shopLocation,
      required final Address shopAddress,
      required final ShopifyUrl shopLogo,
      required final ShopName shopName}) = _$_AddedProduct;
  const _AddedProduct._() : super._();

  @override
  UniqueId get productId => throw _privateConstructorUsedError;
  @override
  Barcode get barcode => throw _privateConstructorUsedError;
  @override
  Category get category => throw _privateConstructorUsedError;
  @override
  ProductName get name => throw _privateConstructorUsedError;
  @override
  NonEmptyList5<ShopifyUrl> get productPhotos =>
      throw _privateConstructorUsedError;
  @override
  Weight get weight => throw _privateConstructorUsedError;
  @override
  Price get price => throw _privateConstructorUsedError;
  @override
  UniqueId get shopId => throw _privateConstructorUsedError;
  @override
  Location get shopLocation => throw _privateConstructorUsedError;
  @override
  Address get shopAddress => throw _privateConstructorUsedError;
  @override
  ShopifyUrl get shopLogo => throw _privateConstructorUsedError;
  @override
  ShopName get shopName => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_AddedProductCopyWith<_$_AddedProduct> get copyWith =>
      throw _privateConstructorUsedError;
}
