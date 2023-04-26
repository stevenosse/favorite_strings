// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'all_strings_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AllStringsState {
  List<FavoritableString> get strings => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AllStringsStateCopyWith<AllStringsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllStringsStateCopyWith<$Res> {
  factory $AllStringsStateCopyWith(
          AllStringsState value, $Res Function(AllStringsState) then) =
      _$AllStringsStateCopyWithImpl<$Res, AllStringsState>;
  @useResult
  $Res call({List<FavoritableString> strings});
}

/// @nodoc
class _$AllStringsStateCopyWithImpl<$Res, $Val extends AllStringsState>
    implements $AllStringsStateCopyWith<$Res> {
  _$AllStringsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? strings = null,
  }) {
    return _then(_value.copyWith(
      strings: null == strings
          ? _value.strings
          : strings // ignore: cast_nullable_to_non_nullable
              as List<FavoritableString>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AllStringsStateCopyWith<$Res>
    implements $AllStringsStateCopyWith<$Res> {
  factory _$$_AllStringsStateCopyWith(
          _$_AllStringsState value, $Res Function(_$_AllStringsState) then) =
      __$$_AllStringsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<FavoritableString> strings});
}

/// @nodoc
class __$$_AllStringsStateCopyWithImpl<$Res>
    extends _$AllStringsStateCopyWithImpl<$Res, _$_AllStringsState>
    implements _$$_AllStringsStateCopyWith<$Res> {
  __$$_AllStringsStateCopyWithImpl(
      _$_AllStringsState _value, $Res Function(_$_AllStringsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? strings = null,
  }) {
    return _then(_$_AllStringsState(
      strings: null == strings
          ? _value._strings
          : strings // ignore: cast_nullable_to_non_nullable
              as List<FavoritableString>,
    ));
  }
}

/// @nodoc

class _$_AllStringsState implements _AllStringsState {
  _$_AllStringsState({final List<FavoritableString> strings = const []})
      : _strings = strings;

  final List<FavoritableString> _strings;
  @override
  @JsonKey()
  List<FavoritableString> get strings {
    if (_strings is EqualUnmodifiableListView) return _strings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_strings);
  }

  @override
  String toString() {
    return 'AllStringsState(strings: $strings)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AllStringsState &&
            const DeepCollectionEquality().equals(other._strings, _strings));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_strings));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AllStringsStateCopyWith<_$_AllStringsState> get copyWith =>
      __$$_AllStringsStateCopyWithImpl<_$_AllStringsState>(this, _$identity);
}

abstract class _AllStringsState implements AllStringsState {
  factory _AllStringsState({final List<FavoritableString> strings}) =
      _$_AllStringsState;

  @override
  List<FavoritableString> get strings;
  @override
  @JsonKey(ignore: true)
  _$$_AllStringsStateCopyWith<_$_AllStringsState> get copyWith =>
      throw _privateConstructorUsedError;
}
