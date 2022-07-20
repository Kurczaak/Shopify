// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'favourites_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FavouritesWatcherState {
  KtList<FavouriteProduct> get favourites => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  Option<FavouriteFailure> get failureOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FavouritesWatcherStateCopyWith<FavouritesWatcherState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavouritesWatcherStateCopyWith<$Res> {
  factory $FavouritesWatcherStateCopyWith(FavouritesWatcherState value,
          $Res Function(FavouritesWatcherState) then) =
      _$FavouritesWatcherStateCopyWithImpl<$Res>;
  $Res call(
      {KtList<FavouriteProduct> favourites,
      bool isLoading,
      Option<FavouriteFailure> failureOption});
}

/// @nodoc
class _$FavouritesWatcherStateCopyWithImpl<$Res>
    implements $FavouritesWatcherStateCopyWith<$Res> {
  _$FavouritesWatcherStateCopyWithImpl(this._value, this._then);

  final FavouritesWatcherState _value;
  // ignore: unused_field
  final $Res Function(FavouritesWatcherState) _then;

  @override
  $Res call({
    Object? favourites = freezed,
    Object? isLoading = freezed,
    Object? failureOption = freezed,
  }) {
    return _then(_value.copyWith(
      favourites: favourites == freezed
          ? _value.favourites
          : favourites // ignore: cast_nullable_to_non_nullable
              as KtList<FavouriteProduct>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOption: failureOption == freezed
          ? _value.failureOption
          : failureOption // ignore: cast_nullable_to_non_nullable
              as Option<FavouriteFailure>,
    ));
  }
}

/// @nodoc
abstract class _$$_FavouritesWatcherStateCopyWith<$Res>
    implements $FavouritesWatcherStateCopyWith<$Res> {
  factory _$$_FavouritesWatcherStateCopyWith(_$_FavouritesWatcherState value,
          $Res Function(_$_FavouritesWatcherState) then) =
      __$$_FavouritesWatcherStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {KtList<FavouriteProduct> favourites,
      bool isLoading,
      Option<FavouriteFailure> failureOption});
}

/// @nodoc
class __$$_FavouritesWatcherStateCopyWithImpl<$Res>
    extends _$FavouritesWatcherStateCopyWithImpl<$Res>
    implements _$$_FavouritesWatcherStateCopyWith<$Res> {
  __$$_FavouritesWatcherStateCopyWithImpl(_$_FavouritesWatcherState _value,
      $Res Function(_$_FavouritesWatcherState) _then)
      : super(_value, (v) => _then(v as _$_FavouritesWatcherState));

  @override
  _$_FavouritesWatcherState get _value =>
      super._value as _$_FavouritesWatcherState;

  @override
  $Res call({
    Object? favourites = freezed,
    Object? isLoading = freezed,
    Object? failureOption = freezed,
  }) {
    return _then(_$_FavouritesWatcherState(
      favourites: favourites == freezed
          ? _value.favourites
          : favourites // ignore: cast_nullable_to_non_nullable
              as KtList<FavouriteProduct>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOption: failureOption == freezed
          ? _value.failureOption
          : failureOption // ignore: cast_nullable_to_non_nullable
              as Option<FavouriteFailure>,
    ));
  }
}

/// @nodoc

class _$_FavouritesWatcherState implements _FavouritesWatcherState {
  const _$_FavouritesWatcherState(
      {required this.favourites,
      required this.isLoading,
      required this.failureOption});

  @override
  final KtList<FavouriteProduct> favourites;
  @override
  final bool isLoading;
  @override
  final Option<FavouriteFailure> failureOption;

  @override
  String toString() {
    return 'FavouritesWatcherState(favourites: $favourites, isLoading: $isLoading, failureOption: $failureOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FavouritesWatcherState &&
            const DeepCollectionEquality()
                .equals(other.favourites, favourites) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.failureOption, failureOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(favourites),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(failureOption));

  @JsonKey(ignore: true)
  @override
  _$$_FavouritesWatcherStateCopyWith<_$_FavouritesWatcherState> get copyWith =>
      __$$_FavouritesWatcherStateCopyWithImpl<_$_FavouritesWatcherState>(
          this, _$identity);
}

abstract class _FavouritesWatcherState implements FavouritesWatcherState {
  const factory _FavouritesWatcherState(
          {required final KtList<FavouriteProduct> favourites,
          required final bool isLoading,
          required final Option<FavouriteFailure> failureOption}) =
      _$_FavouritesWatcherState;

  @override
  KtList<FavouriteProduct> get favourites => throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  Option<FavouriteFailure> get failureOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_FavouritesWatcherStateCopyWith<_$_FavouritesWatcherState> get copyWith =>
      throw _privateConstructorUsedError;
}
