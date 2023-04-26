// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorite_strings_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FavoriteStringsState {
  List<FavoritableString> get favorites => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FavoriteStringsStateCopyWith<FavoriteStringsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteStringsStateCopyWith<$Res> {
  factory $FavoriteStringsStateCopyWith(FavoriteStringsState value,
          $Res Function(FavoriteStringsState) then) =
      _$FavoriteStringsStateCopyWithImpl<$Res, FavoriteStringsState>;
  @useResult
  $Res call({List<FavoritableString> favorites});
}

/// @nodoc
class _$FavoriteStringsStateCopyWithImpl<$Res,
        $Val extends FavoriteStringsState>
    implements $FavoriteStringsStateCopyWith<$Res> {
  _$FavoriteStringsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favorites = null,
  }) {
    return _then(_value.copyWith(
      favorites: null == favorites
          ? _value.favorites
          : favorites // ignore: cast_nullable_to_non_nullable
              as List<FavoritableString>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FavoriteStringsStateCopyWith<$Res>
    implements $FavoriteStringsStateCopyWith<$Res> {
  factory _$$_FavoriteStringsStateCopyWith(_$_FavoriteStringsState value,
          $Res Function(_$_FavoriteStringsState) then) =
      __$$_FavoriteStringsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<FavoritableString> favorites});
}

/// @nodoc
class __$$_FavoriteStringsStateCopyWithImpl<$Res>
    extends _$FavoriteStringsStateCopyWithImpl<$Res, _$_FavoriteStringsState>
    implements _$$_FavoriteStringsStateCopyWith<$Res> {
  __$$_FavoriteStringsStateCopyWithImpl(_$_FavoriteStringsState _value,
      $Res Function(_$_FavoriteStringsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favorites = null,
  }) {
    return _then(_$_FavoriteStringsState(
      favorites: null == favorites
          ? _value._favorites
          : favorites // ignore: cast_nullable_to_non_nullable
              as List<FavoritableString>,
    ));
  }
}

/// @nodoc

class _$_FavoriteStringsState implements _FavoriteStringsState {
  const _$_FavoriteStringsState(
      {final List<FavoritableString> favorites = const []})
      : _favorites = favorites;

  final List<FavoritableString> _favorites;
  @override
  @JsonKey()
  List<FavoritableString> get favorites {
    if (_favorites is EqualUnmodifiableListView) return _favorites;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favorites);
  }

  @override
  String toString() {
    return 'FavoriteStringsState(favorites: $favorites)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FavoriteStringsState &&
            const DeepCollectionEquality()
                .equals(other._favorites, _favorites));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_favorites));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FavoriteStringsStateCopyWith<_$_FavoriteStringsState> get copyWith =>
      __$$_FavoriteStringsStateCopyWithImpl<_$_FavoriteStringsState>(
          this, _$identity);
}

abstract class _FavoriteStringsState implements FavoriteStringsState {
  const factory _FavoriteStringsState(
      {final List<FavoritableString> favorites}) = _$_FavoriteStringsState;

  @override
  List<FavoritableString> get favorites;
  @override
  @JsonKey(ignore: true)
  _$$_FavoriteStringsStateCopyWith<_$_FavoriteStringsState> get copyWith =>
      throw _privateConstructorUsedError;
}
