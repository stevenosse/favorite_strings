import 'package:favoritable_strings/src/features/strings/data/data_sources/favoritable_strings_local_data_source.dart';
import 'package:favoritable_strings/src/features/strings/repositories/favoritable_string_repository.dart';
import 'package:get_it/get_it.dart';

final GetIt locator = GetIt.instance
  ..registerLazySingleton(() => FavoritableStringsLocalDataSource())
  ..registerLazySingleton(() => FavoritableStringRepository());
