import 'package:favoritable_strings/src/features/strings/data/models/favoritable_string.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorite_strings_state.freezed.dart';

@freezed
class FavoriteStringsState with _$FavoriteStringsState {
  const factory FavoriteStringsState({
    @Default([]) final List<FavoritableString> favorites,
  }) = _FavoriteStringsState;
}
