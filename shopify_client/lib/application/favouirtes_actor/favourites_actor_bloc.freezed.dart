// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'favourites_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FavouritesActorState {
  Option<bool> get isFavouirte => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  Option<FavouriteFailure> get favouriteFailureOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FavouritesActorStateCopyWith<FavouritesActorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavouritesActorStateCopyWith<$Res> {
  factory $FavouritesActorStateCopyWith(FavouritesActorState value,
          $Res Function(FavouritesActorState) then) =
      _$FavouritesActorStateCopyWithImpl<$Res>;
  $Res call(
      {Option<bool> isFavouirte,
      bool isLoading,
      Option<FavouriteFailure> favouriteFailureOption});
}

/// @nodoc
class _$FavouritesActorStateCopyWithImpl<$Res>
    implements $FavouritesActorStateCopyWith<$Res> {
  _$FavouritesActorStateCopyWithImpl(this._value, this._then);

  final FavouritesActorState _value;
  // ignore: unused_field
  final $Res Function(FavouritesActorState) _then;

  @override
  $Res call({
    Object? isFavouirte = freezed,
    Object? isLoading = freezed,
    Object? favouriteFailureOption = freezed,
  }) {
    return _then(_value.copyWith(
      isFavouirte: isFavouirte == freezed
          ? _value.isFavouirte
          : isFavouirte // ignore: cast_nullable_to_non_nullable
              as Option<bool>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      favouriteFailureOption: favouriteFailureOption == freezed
          ? _value.favouriteFailureOption
          : favouriteFailureOption // ignore: cast_nullable_to_non_nullable
              as Option<FavouriteFailure>,
    ));
  }
}

/// @nodoc
abstract class _$$_FavouritesActorStateCopyWith<$Res>
    implements $FavouritesActorStateCopyWith<$Res> {
  factory _$$_FavouritesActorStateCopyWith(_$_FavouritesActorState value,
          $Res Function(_$_FavouritesActorState) then) =
      __$$_FavouritesActorStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Option<bool> isFavouirte,
      bool isLoading,
      Option<FavouriteFailure> favouriteFailureOption});
}

/// @nodoc
class __$$_FavouritesActorStateCopyWithImpl<$Res>
    extends _$FavouritesActorStateCopyWithImpl<$Res>
    implements _$$_FavouritesActorStateCopyWith<$Res> {
  __$$_FavouritesActorStateCopyWithImpl(_$_FavouritesActorState _value,
      $Res Function(_$_FavouritesActorState) _then)
      : super(_value, (v) => _then(v as _$_FavouritesActorState));

  @override
  _$_FavouritesActorState get _value => super._value as _$_FavouritesActorState;

  @override
  $Res call({
    Object? isFavouirte = freezed,
    Object? isLoading = freezed,
    Object? favouriteFailureOption = freezed,
  }) {
    return _then(_$_FavouritesActorState(
      isFavouirte: isFavouirte == freezed
          ? _value.isFavouirte
          : isFavouirte // ignore: cast_nullable_to_non_nullable
              as Option<bool>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      favouriteFailureOption: favouriteFailureOption == freezed
          ? _value.favouriteFailureOption
          : favouriteFailureOption // ignore: cast_nullable_to_non_nullable
              as Option<FavouriteFailure>,
    ));
  }
}

/// @nodoc

class _$_FavouritesActorState implements _FavouritesActorState {
  const _$_FavouritesActorState(
      {required this.isFavouirte,
      required this.isLoading,
      required this.favouriteFailureOption});

  @override
  final Option<bool> isFavouirte;
  @override
  final bool isLoading;
  @override
  final Option<FavouriteFailure> favouriteFailureOption;

  @override
  String toString() {
    return 'FavouritesActorState(isFavouirte: $isFavouirte, isLoading: $isLoading, favouriteFailureOption: $favouriteFailureOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FavouritesActorState &&
            const DeepCollectionEquality()
                .equals(other.isFavouirte, isFavouirte) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.favouriteFailureOption, favouriteFailureOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isFavouirte),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(favouriteFailureOption));

  @JsonKey(ignore: true)
  @override
  _$$_FavouritesActorStateCopyWith<_$_FavouritesActorState> get copyWith =>
      __$$_FavouritesActorStateCopyWithImpl<_$_FavouritesActorState>(
          this, _$identity);
}

abstract class _FavouritesActorState implements FavouritesActorState {
  const factory _FavouritesActorState(
          {required final Option<bool> isFavouirte,
          required final bool isLoading,
          required final Option<FavouriteFailure> favouriteFailureOption}) =
      _$_FavouritesActorState;

  @override
  Option<bool> get isFavouirte => throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  Option<FavouriteFailure> get favouriteFailureOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_FavouritesActorStateCopyWith<_$_FavouritesActorState> get copyWith =>
      throw _privateConstructorUsedError;
}
