// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'favourite_product_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FavouriteProductDto _$FavouriteProductDtoFromJson(Map<String, dynamic> json) {
  return _FavouriteProductDto.fromJson(json);
}

/// @nodoc
mixin _$FavouriteProductDto {
  String get id => throw _privateConstructorUsedError;
  String get barcode => throw _privateConstructorUsedError;
  String get productId => throw _privateConstructorUsedError;
  String get productName => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  String get brand => throw _privateConstructorUsedError;
  String get photoUrl => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FavouriteProductDtoCopyWith<FavouriteProductDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavouriteProductDtoCopyWith<$Res> {
  factory $FavouriteProductDtoCopyWith(
          FavouriteProductDto value, $Res Function(FavouriteProductDto) then) =
      _$FavouriteProductDtoCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String barcode,
      String productId,
      String productName,
      String category,
      String brand,
      String photoUrl,
      String userId});
}

/// @nodoc
class _$FavouriteProductDtoCopyWithImpl<$Res>
    implements $FavouriteProductDtoCopyWith<$Res> {
  _$FavouriteProductDtoCopyWithImpl(this._value, this._then);

  final FavouriteProductDto _value;
  // ignore: unused_field
  final $Res Function(FavouriteProductDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? barcode = freezed,
    Object? productId = freezed,
    Object? productName = freezed,
    Object? category = freezed,
    Object? brand = freezed,
    Object? photoUrl = freezed,
    Object? userId = freezed,
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
      productId: productId == freezed
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      productName: productName == freezed
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      brand: brand == freezed
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrl: photoUrl == freezed
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_FavouriteProductDtoCopyWith<$Res>
    implements $FavouriteProductDtoCopyWith<$Res> {
  factory _$$_FavouriteProductDtoCopyWith(_$_FavouriteProductDto value,
          $Res Function(_$_FavouriteProductDto) then) =
      __$$_FavouriteProductDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String barcode,
      String productId,
      String productName,
      String category,
      String brand,
      String photoUrl,
      String userId});
}

/// @nodoc
class __$$_FavouriteProductDtoCopyWithImpl<$Res>
    extends _$FavouriteProductDtoCopyWithImpl<$Res>
    implements _$$_FavouriteProductDtoCopyWith<$Res> {
  __$$_FavouriteProductDtoCopyWithImpl(_$_FavouriteProductDto _value,
      $Res Function(_$_FavouriteProductDto) _then)
      : super(_value, (v) => _then(v as _$_FavouriteProductDto));

  @override
  _$_FavouriteProductDto get _value => super._value as _$_FavouriteProductDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? barcode = freezed,
    Object? productId = freezed,
    Object? productName = freezed,
    Object? category = freezed,
    Object? brand = freezed,
    Object? photoUrl = freezed,
    Object? userId = freezed,
  }) {
    return _then(_$_FavouriteProductDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      barcode: barcode == freezed
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String,
      productId: productId == freezed
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      productName: productName == freezed
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      brand: brand == freezed
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrl: photoUrl == freezed
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FavouriteProductDto extends _FavouriteProductDto {
  const _$_FavouriteProductDto(
      {required this.id,
      required this.barcode,
      required this.productId,
      required this.productName,
      required this.category,
      required this.brand,
      required this.photoUrl,
      required this.userId})
      : super._();

  factory _$_FavouriteProductDto.fromJson(Map<String, dynamic> json) =>
      _$$_FavouriteProductDtoFromJson(json);

  @override
  final String id;
  @override
  final String barcode;
  @override
  final String productId;
  @override
  final String productName;
  @override
  final String category;
  @override
  final String brand;
  @override
  final String photoUrl;
  @override
  final String userId;

  @override
  String toString() {
    return 'FavouriteProductDto(id: $id, barcode: $barcode, productId: $productId, productName: $productName, category: $category, brand: $brand, photoUrl: $photoUrl, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FavouriteProductDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.barcode, barcode) &&
            const DeepCollectionEquality().equals(other.productId, productId) &&
            const DeepCollectionEquality()
                .equals(other.productName, productName) &&
            const DeepCollectionEquality().equals(other.category, category) &&
            const DeepCollectionEquality().equals(other.brand, brand) &&
            const DeepCollectionEquality().equals(other.photoUrl, photoUrl) &&
            const DeepCollectionEquality().equals(other.userId, userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(barcode),
      const DeepCollectionEquality().hash(productId),
      const DeepCollectionEquality().hash(productName),
      const DeepCollectionEquality().hash(category),
      const DeepCollectionEquality().hash(brand),
      const DeepCollectionEquality().hash(photoUrl),
      const DeepCollectionEquality().hash(userId));

  @JsonKey(ignore: true)
  @override
  _$$_FavouriteProductDtoCopyWith<_$_FavouriteProductDto> get copyWith =>
      __$$_FavouriteProductDtoCopyWithImpl<_$_FavouriteProductDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FavouriteProductDtoToJson(this);
  }
}

abstract class _FavouriteProductDto extends FavouriteProductDto {
  const factory _FavouriteProductDto(
      {required final String id,
      required final String barcode,
      required final String productId,
      required final String productName,
      required final String category,
      required final String brand,
      required final String photoUrl,
      required final String userId}) = _$_FavouriteProductDto;
  const _FavouriteProductDto._() : super._();

  factory _FavouriteProductDto.fromJson(Map<String, dynamic> json) =
      _$_FavouriteProductDto.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get barcode => throw _privateConstructorUsedError;
  @override
  String get productId => throw _privateConstructorUsedError;
  @override
  String get productName => throw _privateConstructorUsedError;
  @override
  String get category => throw _privateConstructorUsedError;
  @override
  String get brand => throw _privateConstructorUsedError;
  @override
  String get photoUrl => throw _privateConstructorUsedError;
  @override
  String get userId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_FavouriteProductDtoCopyWith<_$_FavouriteProductDto> get copyWith =>
      throw _privateConstructorUsedError;
}
