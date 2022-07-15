// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'favourite_product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FavouriteProduct {
  UniqueId get id => throw _privateConstructorUsedError;
  Barcode get barcode => throw _privateConstructorUsedError;
  UniqueId get productId => throw _privateConstructorUsedError;
  ProductName get productName => throw _privateConstructorUsedError;
  Category get category => throw _privateConstructorUsedError;
  BrandName get brand => throw _privateConstructorUsedError;
  ShopifyUrl get photoUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FavouriteProductCopyWith<FavouriteProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavouriteProductCopyWith<$Res> {
  factory $FavouriteProductCopyWith(
          FavouriteProduct value, $Res Function(FavouriteProduct) then) =
      _$FavouriteProductCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      Barcode barcode,
      UniqueId productId,
      ProductName productName,
      Category category,
      BrandName brand,
      ShopifyUrl photoUrl});
}

/// @nodoc
class _$FavouriteProductCopyWithImpl<$Res>
    implements $FavouriteProductCopyWith<$Res> {
  _$FavouriteProductCopyWithImpl(this._value, this._then);

  final FavouriteProduct _value;
  // ignore: unused_field
  final $Res Function(FavouriteProduct) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? barcode = freezed,
    Object? productId = freezed,
    Object? productName = freezed,
    Object? category = freezed,
    Object? brand = freezed,
    Object? photoUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      barcode: barcode == freezed
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as Barcode,
      productId: productId == freezed
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      productName: productName == freezed
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as ProductName,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category,
      brand: brand == freezed
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as BrandName,
      photoUrl: photoUrl == freezed
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as ShopifyUrl,
    ));
  }
}

/// @nodoc
abstract class _$$_FavouriteProductCopyWith<$Res>
    implements $FavouriteProductCopyWith<$Res> {
  factory _$$_FavouriteProductCopyWith(
          _$_FavouriteProduct value, $Res Function(_$_FavouriteProduct) then) =
      __$$_FavouriteProductCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      Barcode barcode,
      UniqueId productId,
      ProductName productName,
      Category category,
      BrandName brand,
      ShopifyUrl photoUrl});
}

/// @nodoc
class __$$_FavouriteProductCopyWithImpl<$Res>
    extends _$FavouriteProductCopyWithImpl<$Res>
    implements _$$_FavouriteProductCopyWith<$Res> {
  __$$_FavouriteProductCopyWithImpl(
      _$_FavouriteProduct _value, $Res Function(_$_FavouriteProduct) _then)
      : super(_value, (v) => _then(v as _$_FavouriteProduct));

  @override
  _$_FavouriteProduct get _value => super._value as _$_FavouriteProduct;

  @override
  $Res call({
    Object? id = freezed,
    Object? barcode = freezed,
    Object? productId = freezed,
    Object? productName = freezed,
    Object? category = freezed,
    Object? brand = freezed,
    Object? photoUrl = freezed,
  }) {
    return _then(_$_FavouriteProduct(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      barcode: barcode == freezed
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as Barcode,
      productId: productId == freezed
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      productName: productName == freezed
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as ProductName,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category,
      brand: brand == freezed
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as BrandName,
      photoUrl: photoUrl == freezed
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as ShopifyUrl,
    ));
  }
}

/// @nodoc

class _$_FavouriteProduct implements _FavouriteProduct {
  const _$_FavouriteProduct(
      {required this.id,
      required this.barcode,
      required this.productId,
      required this.productName,
      required this.category,
      required this.brand,
      required this.photoUrl});

  @override
  final UniqueId id;
  @override
  final Barcode barcode;
  @override
  final UniqueId productId;
  @override
  final ProductName productName;
  @override
  final Category category;
  @override
  final BrandName brand;
  @override
  final ShopifyUrl photoUrl;

  @override
  String toString() {
    return 'FavouriteProduct(id: $id, barcode: $barcode, productId: $productId, productName: $productName, category: $category, brand: $brand, photoUrl: $photoUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FavouriteProduct &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.barcode, barcode) &&
            const DeepCollectionEquality().equals(other.productId, productId) &&
            const DeepCollectionEquality()
                .equals(other.productName, productName) &&
            const DeepCollectionEquality().equals(other.category, category) &&
            const DeepCollectionEquality().equals(other.brand, brand) &&
            const DeepCollectionEquality().equals(other.photoUrl, photoUrl));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(barcode),
      const DeepCollectionEquality().hash(productId),
      const DeepCollectionEquality().hash(productName),
      const DeepCollectionEquality().hash(category),
      const DeepCollectionEquality().hash(brand),
      const DeepCollectionEquality().hash(photoUrl));

  @JsonKey(ignore: true)
  @override
  _$$_FavouriteProductCopyWith<_$_FavouriteProduct> get copyWith =>
      __$$_FavouriteProductCopyWithImpl<_$_FavouriteProduct>(this, _$identity);
}

abstract class _FavouriteProduct implements FavouriteProduct {
  const factory _FavouriteProduct(
      {required final UniqueId id,
      required final Barcode barcode,
      required final UniqueId productId,
      required final ProductName productName,
      required final Category category,
      required final BrandName brand,
      required final ShopifyUrl photoUrl}) = _$_FavouriteProduct;

  @override
  UniqueId get id => throw _privateConstructorUsedError;
  @override
  Barcode get barcode => throw _privateConstructorUsedError;
  @override
  UniqueId get productId => throw _privateConstructorUsedError;
  @override
  ProductName get productName => throw _privateConstructorUsedError;
  @override
  Category get category => throw _privateConstructorUsedError;
  @override
  BrandName get brand => throw _privateConstructorUsedError;
  @override
  ShopifyUrl get photoUrl => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_FavouriteProductCopyWith<_$_FavouriteProduct> get copyWith =>
      throw _privateConstructorUsedError;
}
