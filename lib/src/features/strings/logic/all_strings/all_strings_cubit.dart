import 'dart:async';

import 'package:favoritable_strings/src/shared/locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:favoritable_strings/src/features/strings/logic/all_strings/all_strings_state.dart';

import '../../data/models/favoritable_string.dart';
import '../../repositories/favoritable_string_repository.dart';

class AllStringsCubit extends Cubit<AllStringsState> {
  final FavoritableStringRepository _repository;

  late StreamSubscription<List<FavoritableString>> _streamSubscription;

  AllStringsCubit({FavoritableStringRepository? repository})
      : _repository = repository ?? locator<FavoritableStringRepository>(),
        super(AllStringsState()) {
    _repository.dataStream.listen(_handleDataReceived);
  }

  void _handleDataReceived(List<FavoritableString> data) {
    emit(state.copyWith(strings: [...data]));
  }

  void getAllStrings() => _repository.read();

  void toggleFavorite(FavoritableString string) {
    _repository.update(string.string, !string.isFavorite);
  }

  @override
  Future<void> close() {
    _streamSubscription.cancel();
    return super.close();
  }
}
