import 'package:equatable/equatable.dart';

class FavoritableString extends Equatable {
  final String string;
  final bool isFavorite;

  const FavoritableString({
    required this.string,
    this.isFavorite = false,
  });

  @override
  List<Object?> get props => [string, isFavorite];

  @override
  String toString() {
    return '{$string, $isFavorite}';
  }

  FavoritableString copyWith({String? string, bool? isFavorite}) {
    return FavoritableString(
      string: string ?? this.string,
      isFavorite: isFavorite ?? this.isFavorite,
    );
  }
}
