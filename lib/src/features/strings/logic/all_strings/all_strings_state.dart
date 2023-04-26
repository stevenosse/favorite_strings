import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/favoritable_string.dart';

part 'all_strings_state.freezed.dart';

@freezed
class AllStringsState with _$AllStringsState {
  factory AllStringsState({
    @Default([]) final List<FavoritableString> strings,
  }) = _AllStringsState;
}
