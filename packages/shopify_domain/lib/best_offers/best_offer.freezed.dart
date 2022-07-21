// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'best_offer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BestOffer {
  Shop get shop => throw _privateConstructorUsedError;
  Price get price => throw _privateConstructorUsedError;
  NonnegativeNumber get distance => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BestOfferCopyWith<BestOffer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BestOfferCopyWith<$Res> {
  factory $BestOfferCopyWith(BestOffer value, $Res Function(BestOffer) then) =
      _$BestOfferCopyWithImpl<$Res>;
  $Res call({Shop shop, Price price, NonnegativeNumber distance});

  $ShopCopyWith<$Res> get shop;
  $PriceCopyWith<$Res> get price;
}

/// @nodoc
class _$BestOfferCopyWithImpl<$Res> implements $BestOfferCopyWith<$Res> {
  _$BestOfferCopyWithImpl(this._value, this._then);

  final BestOffer _value;
  // ignore: unused_field
  final $Res Function(BestOffer) _then;

  @override
  $Res call({
    Object? shop = freezed,
    Object? price = freezed,
    Object? distance = freezed,
  }) {
    return _then(_value.copyWith(
      shop: shop == freezed
          ? _value.shop
          : shop // ignore: cast_nullable_to_non_nullable
              as Shop,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Price,
      distance: distance == freezed
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as NonnegativeNumber,
    ));
  }

  @override
  $ShopCopyWith<$Res> get shop {
    return $ShopCopyWith<$Res>(_value.shop, (value) {
      return _then(_value.copyWith(shop: value));
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
abstract class _$$_BestOfferCopyWith<$Res> implements $BestOfferCopyWith<$Res> {
  factory _$$_BestOfferCopyWith(
          _$_BestOffer value, $Res Function(_$_BestOffer) then) =
      __$$_BestOfferCopyWithImpl<$Res>;
  @override
  $Res call({Shop shop, Price price, NonnegativeNumber distance});

  @override
  $ShopCopyWith<$Res> get shop;
  @override
  $PriceCopyWith<$Res> get price;
}

/// @nodoc
class __$$_BestOfferCopyWithImpl<$Res> extends _$BestOfferCopyWithImpl<$Res>
    implements _$$_BestOfferCopyWith<$Res> {
  __$$_BestOfferCopyWithImpl(
      _$_BestOffer _value, $Res Function(_$_BestOffer) _then)
      : super(_value, (v) => _then(v as _$_BestOffer));

  @override
  _$_BestOffer get _value => super._value as _$_BestOffer;

  @override
  $Res call({
    Object? shop = freezed,
    Object? price = freezed,
    Object? distance = freezed,
  }) {
    return _then(_$_BestOffer(
      shop: shop == freezed
          ? _value.shop
          : shop // ignore: cast_nullable_to_non_nullable
              as Shop,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Price,
      distance: distance == freezed
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as NonnegativeNumber,
    ));
  }
}

/// @nodoc

class _$_BestOffer implements _BestOffer {
  const _$_BestOffer(
      {required this.shop, required this.price, required this.distance});

  @override
  final Shop shop;
  @override
  final Price price;
  @override
  final NonnegativeNumber distance;

  @override
  String toString() {
    return 'BestOffer(shop: $shop, price: $price, distance: $distance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BestOffer &&
            const DeepCollectionEquality().equals(other.shop, shop) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.distance, distance));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(shop),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(distance));

  @JsonKey(ignore: true)
  @override
  _$$_BestOfferCopyWith<_$_BestOffer> get copyWith =>
      __$$_BestOfferCopyWithImpl<_$_BestOffer>(this, _$identity);
}

abstract class _BestOffer implements BestOffer {
  const factory _BestOffer(
      {required final Shop shop,
      required final Price price,
      required final NonnegativeNumber distance}) = _$_BestOffer;

  @override
  Shop get shop => throw _privateConstructorUsedError;
  @override
  Price get price => throw _privateConstructorUsedError;
  @override
  NonnegativeNumber get distance => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_BestOfferCopyWith<_$_BestOffer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProductBestOffers {
  Product get product => throw _privateConstructorUsedError;
  KtList<BestOffer> get bestOffers => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductBestOffersCopyWith<ProductBestOffers> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductBestOffersCopyWith<$Res> {
  factory $ProductBestOffersCopyWith(
          ProductBestOffers value, $Res Function(ProductBestOffers) then) =
      _$ProductBestOffersCopyWithImpl<$Res>;
  $Res call({Product product, KtList<BestOffer> bestOffers});

  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class _$ProductBestOffersCopyWithImpl<$Res>
    implements $ProductBestOffersCopyWith<$Res> {
  _$ProductBestOffersCopyWithImpl(this._value, this._then);

  final ProductBestOffers _value;
  // ignore: unused_field
  final $Res Function(ProductBestOffers) _then;

  @override
  $Res call({
    Object? product = freezed,
    Object? bestOffers = freezed,
  }) {
    return _then(_value.copyWith(
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
      bestOffers: bestOffers == freezed
          ? _value.bestOffers
          : bestOffers // ignore: cast_nullable_to_non_nullable
              as KtList<BestOffer>,
    ));
  }

  @override
  $ProductCopyWith<$Res> get product {
    return $ProductCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value));
    });
  }
}

/// @nodoc
abstract class _$$_ProductBestOffersCopyWith<$Res>
    implements $ProductBestOffersCopyWith<$Res> {
  factory _$$_ProductBestOffersCopyWith(_$_ProductBestOffers value,
          $Res Function(_$_ProductBestOffers) then) =
      __$$_ProductBestOffersCopyWithImpl<$Res>;
  @override
  $Res call({Product product, KtList<BestOffer> bestOffers});

  @override
  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class __$$_ProductBestOffersCopyWithImpl<$Res>
    extends _$ProductBestOffersCopyWithImpl<$Res>
    implements _$$_ProductBestOffersCopyWith<$Res> {
  __$$_ProductBestOffersCopyWithImpl(
      _$_ProductBestOffers _value, $Res Function(_$_ProductBestOffers) _then)
      : super(_value, (v) => _then(v as _$_ProductBestOffers));

  @override
  _$_ProductBestOffers get _value => super._value as _$_ProductBestOffers;

  @override
  $Res call({
    Object? product = freezed,
    Object? bestOffers = freezed,
  }) {
    return _then(_$_ProductBestOffers(
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
      bestOffers: bestOffers == freezed
          ? _value.bestOffers
          : bestOffers // ignore: cast_nullable_to_non_nullable
              as KtList<BestOffer>,
    ));
  }
}

/// @nodoc

class _$_ProductBestOffers implements _ProductBestOffers {
  const _$_ProductBestOffers({required this.product, required this.bestOffers});

  @override
  final Product product;
  @override
  final KtList<BestOffer> bestOffers;

  @override
  String toString() {
    return 'ProductBestOffers(product: $product, bestOffers: $bestOffers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductBestOffers &&
            const DeepCollectionEquality().equals(other.product, product) &&
            const DeepCollectionEquality()
                .equals(other.bestOffers, bestOffers));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(product),
      const DeepCollectionEquality().hash(bestOffers));

  @JsonKey(ignore: true)
  @override
  _$$_ProductBestOffersCopyWith<_$_ProductBestOffers> get copyWith =>
      __$$_ProductBestOffersCopyWithImpl<_$_ProductBestOffers>(
          this, _$identity);
}

abstract class _ProductBestOffers implements ProductBestOffers {
  const factory _ProductBestOffers(
      {required final Product product,
      required final KtList<BestOffer> bestOffers}) = _$_ProductBestOffers;

  @override
  Product get product => throw _privateConstructorUsedError;
  @override
  KtList<BestOffer> get bestOffers => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ProductBestOffersCopyWith<_$_ProductBestOffers> get copyWith =>
      throw _privateConstructorUsedError;
}
