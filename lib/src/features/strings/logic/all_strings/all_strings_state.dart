import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/favoritable_string.dart';

part 'all_strings_state.freezed.dart';

@freezed
class AllStringsState with _$AllStringsState {
  factory AllStringsState.idle({
    @Default([]) final List<FavoritableString> strings,
  }) = _AllStringsState;

  factory AllStringsState.itemfaved({
    required FavoritableString item,
    @Default([]) final List<FavoritableString> strings,
  }) = _ItemFaved;

  factory AllStringsState.itemUnfaved({
    required FavoritableString item,
    @Default([]) final List<FavoritableString> strings,
  }) = _ItemUnfaved;
}
