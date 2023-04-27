import 'dart:async';

import 'package:favoritable_strings/src/features/strings/data/data_sources/favoritable_strings_local_data_source.dart';
import 'package:favoritable_strings/src/shared/locator.dart';

import '../data/models/favoritable_string.dart';

class FavoritableStringRepository {
  final FavoritableStringsLocalDataSource _localDataSource;

  FavoritableStringRepository({
    FavoritableStringsLocalDataSource? localDataSource,
  }) : _localDataSource = localDataSource ?? locator();

  final _streamController = StreamController<List<FavoritableString>>.broadcast(sync: true);

  Stream<List<FavoritableString>> get dataStream => _streamController.stream;

  void read() {
    _streamController.add(_localDataSource.read());
  }

  void update(String title, bool fav) {
    _localDataSource.update(title, fav);
    read();
  }

  void dispose() {
    if (!_streamController.hasListener) {
      unawaited(_streamController.close());
    }
  }
}
