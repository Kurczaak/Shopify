// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'best_product_offer_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BestProductOfferWatcherState {
  KtList<BestOffer> get bestOffers => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  Option<BestOfferFailure> get failureOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BestProductOfferWatcherStateCopyWith<BestProductOfferWatcherState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BestProductOfferWatcherStateCopyWith<$Res> {
  factory $BestProductOfferWatcherStateCopyWith(
          BestProductOfferWatcherState value,
          $Res Function(BestProductOfferWatcherState) then) =
      _$BestProductOfferWatcherStateCopyWithImpl<$Res>;
  $Res call(
      {KtList<BestOffer> bestOffers,
      bool isLoading,
      Option<BestOfferFailure> failureOption});
}

/// @nodoc
class _$BestProductOfferWatcherStateCopyWithImpl<$Res>
    implements $BestProductOfferWatcherStateCopyWith<$Res> {
  _$BestProductOfferWatcherStateCopyWithImpl(this._value, this._then);

  final BestProductOfferWatcherState _value;
  // ignore: unused_field
  final $Res Function(BestProductOfferWatcherState) _then;

  @override
  $Res call({
    Object? bestOffers = freezed,
    Object? isLoading = freezed,
    Object? failureOption = freezed,
  }) {
    return _then(_value.copyWith(
      bestOffers: bestOffers == freezed
          ? _value.bestOffers
          : bestOffers // ignore: cast_nullable_to_non_nullable
              as KtList<BestOffer>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOption: failureOption == freezed
          ? _value.failureOption
          : failureOption // ignore: cast_nullable_to_non_nullable
              as Option<BestOfferFailure>,
    ));
  }
}

/// @nodoc
abstract class _$$_BestProductOfferWatcherStateCopyWith<$Res>
    implements $BestProductOfferWatcherStateCopyWith<$Res> {
  factory _$$_BestProductOfferWatcherStateCopyWith(
          _$_BestProductOfferWatcherState value,
          $Res Function(_$_BestProductOfferWatcherState) then) =
      __$$_BestProductOfferWatcherStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {KtList<BestOffer> bestOffers,
      bool isLoading,
      Option<BestOfferFailure> failureOption});
}

/// @nodoc
class __$$_BestProductOfferWatcherStateCopyWithImpl<$Res>
    extends _$BestProductOfferWatcherStateCopyWithImpl<$Res>
    implements _$$_BestProductOfferWatcherStateCopyWith<$Res> {
  __$$_BestProductOfferWatcherStateCopyWithImpl(
      _$_BestProductOfferWatcherState _value,
      $Res Function(_$_BestProductOfferWatcherState) _then)
      : super(_value, (v) => _then(v as _$_BestProductOfferWatcherState));

  @override
  _$_BestProductOfferWatcherState get _value =>
      super._value as _$_BestProductOfferWatcherState;

  @override
  $Res call({
    Object? bestOffers = freezed,
    Object? isLoading = freezed,
    Object? failureOption = freezed,
  }) {
    return _then(_$_BestProductOfferWatcherState(
      bestOffers: bestOffers == freezed
          ? _value.bestOffers
          : bestOffers // ignore: cast_nullable_to_non_nullable
              as KtList<BestOffer>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOption: failureOption == freezed
          ? _value.failureOption
          : failureOption // ignore: cast_nullable_to_non_nullable
              as Option<BestOfferFailure>,
    ));
  }
}

/// @nodoc

class _$_BestProductOfferWatcherState implements _BestProductOfferWatcherState {
  const _$_BestProductOfferWatcherState(
      {required this.bestOffers,
      required this.isLoading,
      required this.failureOption});

  @override
  final KtList<BestOffer> bestOffers;
  @override
  final bool isLoading;
  @override
  final Option<BestOfferFailure> failureOption;

  @override
  String toString() {
    return 'BestProductOfferWatcherState(bestOffers: $bestOffers, isLoading: $isLoading, failureOption: $failureOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BestProductOfferWatcherState &&
            const DeepCollectionEquality()
                .equals(other.bestOffers, bestOffers) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.failureOption, failureOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(bestOffers),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(failureOption));

  @JsonKey(ignore: true)
  @override
  _$$_BestProductOfferWatcherStateCopyWith<_$_BestProductOfferWatcherState>
      get copyWith => __$$_BestProductOfferWatcherStateCopyWithImpl<
          _$_BestProductOfferWatcherState>(this, _$identity);
}

abstract class _BestProductOfferWatcherState
    implements BestProductOfferWatcherState {
  const factory _BestProductOfferWatcherState(
          {required final KtList<BestOffer> bestOffers,
          required final bool isLoading,
          required final Option<BestOfferFailure> failureOption}) =
      _$_BestProductOfferWatcherState;

  @override
  KtList<BestOffer> get bestOffers => throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  Option<BestOfferFailure> get failureOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_BestProductOfferWatcherStateCopyWith<_$_BestProductOfferWatcherState>
      get copyWith => throw _privateConstructorUsedError;
}
