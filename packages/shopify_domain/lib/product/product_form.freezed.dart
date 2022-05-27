// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product_form.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProductFormTearOff {
  const _$ProductFormTearOff();

  _Product call(
      {required UniqueId id,
      required Barcode barcode,
      required Weight weight,
      required Price price,
      required Category category,
      required ProductName name,
      required BrandName brand,
      required ProductDescription description,
      required ProductDescription ingredients,
      required Either<NonEmptyList5<ShopifyUrl>, NonEmptyList5<ProductPhoto>>
          photos}) {
    return _Product(
      id: id,
      barcode: barcode,
      weight: weight,
      price: price,
      category: category,
      name: name,
      brand: brand,
      description: description,
      ingredients: ingredients,
      photos: photos,
    );
  }
}

/// @nodoc
const $ProductForm = _$ProductFormTearOff();

/// @nodoc
mixin _$ProductForm {
  UniqueId get id => throw _privateConstructorUsedError;
  Barcode get barcode => throw _privateConstructorUsedError;
  Weight get weight => throw _privateConstructorUsedError; //required Fats fats,
  Price get price => throw _privateConstructorUsedError;
  Category get category => throw _privateConstructorUsedError;
  ProductName get name => throw _privateConstructorUsedError;
  BrandName get brand => throw _privateConstructorUsedError;
  ProductDescription get description => throw _privateConstructorUsedError;
  ProductDescription get ingredients => throw _privateConstructorUsedError;
  Either<NonEmptyList5<ShopifyUrl>, NonEmptyList5<ProductPhoto>> get photos =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductFormCopyWith<ProductForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductFormCopyWith<$Res> {
  factory $ProductFormCopyWith(
          ProductForm value, $Res Function(ProductForm) then) =
      _$ProductFormCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      Barcode barcode,
      Weight weight,
      Price price,
      Category category,
      ProductName name,
      BrandName brand,
      ProductDescription description,
      ProductDescription ingredients,
      Either<NonEmptyList5<ShopifyUrl>, NonEmptyList5<ProductPhoto>> photos});

  $WeightCopyWith<$Res> get weight;
  $PriceCopyWith<$Res> get price;
}

/// @nodoc
class _$ProductFormCopyWithImpl<$Res> implements $ProductFormCopyWith<$Res> {
  _$ProductFormCopyWithImpl(this._value, this._then);

  final ProductForm _value;
  // ignore: unused_field
  final $Res Function(ProductForm) _then;

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
    Object? photos = freezed,
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
      weight: weight == freezed
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as Weight,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Price,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as ProductName,
      brand: brand == freezed
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as BrandName,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as ProductDescription,
      ingredients: ingredients == freezed
          ? _value.ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as ProductDescription,
      photos: photos == freezed
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as Either<NonEmptyList5<ShopifyUrl>, NonEmptyList5<ProductPhoto>>,
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
}

/// @nodoc
abstract class _$ProductCopyWith<$Res> implements $ProductFormCopyWith<$Res> {
  factory _$ProductCopyWith(_Product value, $Res Function(_Product) then) =
      __$ProductCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      Barcode barcode,
      Weight weight,
      Price price,
      Category category,
      ProductName name,
      BrandName brand,
      ProductDescription description,
      ProductDescription ingredients,
      Either<NonEmptyList5<ShopifyUrl>, NonEmptyList5<ProductPhoto>> photos});

  @override
  $WeightCopyWith<$Res> get weight;
  @override
  $PriceCopyWith<$Res> get price;
}

/// @nodoc
class __$ProductCopyWithImpl<$Res> extends _$ProductFormCopyWithImpl<$Res>
    implements _$ProductCopyWith<$Res> {
  __$ProductCopyWithImpl(_Product _value, $Res Function(_Product) _then)
      : super(_value, (v) => _then(v as _Product));

  @override
  _Product get _value => super._value as _Product;

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
    Object? photos = freezed,
  }) {
    return _then(_Product(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      barcode: barcode == freezed
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as Barcode,
      weight: weight == freezed
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as Weight,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Price,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as ProductName,
      brand: brand == freezed
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as BrandName,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as ProductDescription,
      ingredients: ingredients == freezed
          ? _value.ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as ProductDescription,
      photos: photos == freezed
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as Either<NonEmptyList5<ShopifyUrl>, NonEmptyList5<ProductPhoto>>,
    ));
  }
}

/// @nodoc

class _$_Product extends _Product {
  const _$_Product(
      {required this.id,
      required this.barcode,
      required this.weight,
      required this.price,
      required this.category,
      required this.name,
      required this.brand,
      required this.description,
      required this.ingredients,
      required this.photos})
      : super._();

  @override
  final UniqueId id;
  @override
  final Barcode barcode;
  @override
  final Weight weight;
  @override //required Fats fats,
  final Price price;
  @override
  final Category category;
  @override
  final ProductName name;
  @override
  final BrandName brand;
  @override
  final ProductDescription description;
  @override
  final ProductDescription ingredients;
  @override
  final Either<NonEmptyList5<ShopifyUrl>, NonEmptyList5<ProductPhoto>> photos;

  @override
  String toString() {
    return 'ProductForm(id: $id, barcode: $barcode, weight: $weight, price: $price, category: $category, name: $name, brand: $brand, description: $description, ingredients: $ingredients, photos: $photos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Product &&
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
            const DeepCollectionEquality().equals(other.photos, photos));
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
      const DeepCollectionEquality().hash(photos));

  @JsonKey(ignore: true)
  @override
  _$ProductCopyWith<_Product> get copyWith =>
      __$ProductCopyWithImpl<_Product>(this, _$identity);
}

abstract class _Product extends ProductForm {
  const factory _Product(
      {required UniqueId id,
      required Barcode barcode,
      required Weight weight,
      required Price price,
      required Category category,
      required ProductName name,
      required BrandName brand,
      required ProductDescription description,
      required ProductDescription ingredients,
      required Either<NonEmptyList5<ShopifyUrl>, NonEmptyList5<ProductPhoto>>
          photos}) = _$_Product;
  const _Product._() : super._();

  @override
  UniqueId get id;
  @override
  Barcode get barcode;
  @override
  Weight get weight;
  @override //required Fats fats,
  Price get price;
  @override
  Category get category;
  @override
  ProductName get name;
  @override
  BrandName get brand;
  @override
  ProductDescription get description;
  @override
  ProductDescription get ingredients;
  @override
  Either<NonEmptyList5<ShopifyUrl>, NonEmptyList5<ProductPhoto>> get photos;
  @override
  @JsonKey(ignore: true)
  _$ProductCopyWith<_Product> get copyWith =>
      throw _privateConstructorUsedError;
}
