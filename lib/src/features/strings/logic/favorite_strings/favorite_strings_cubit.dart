import 'dart:async';

import 'package:favoritable_strings/src/features/strings/logic/favorite_strings/favorite_strings_state.dart';
import 'package:favoritable_strings/src/features/strings/repositories/favoritable_string_repository.dart';
import 'package:favoritable_strings/src/shared/locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/models/favoritable_string.dart';

class FavoriteStringsCubit extends Cubit<FavoriteStringsState> {
  final FavoritableStringRepository _repository;

  late StreamSubscription<List<FavoritableString>> _streamSubscription;

  FavoriteStringsCubit({
    FavoritableStringRepository? repository,
  })  : _repository = repository ?? locator<FavoritableStringRepository>(),
        super(const FavoriteStringsState(favorites: [])) {
    _streamSubscription = _repository.dataStream.listen(_handleListUpdated);
  }

  void _handleListUpdated(List<FavoritableString> data) {
    emit(state.copyWith(favorites: [...data.where((element) => element.isFavorite)]));
  }

  void fetchFavorites() => _repository.read();

  void toggleFavorite(FavoritableString string) {
    _repository.update(string.string, !string.isFavorite);
  }

  @override
  Future<void> close() {
    _streamSubscription.cancel();
    return super.close();
  }
}
