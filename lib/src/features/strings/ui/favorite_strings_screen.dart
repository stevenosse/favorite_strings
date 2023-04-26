import 'package:auto_route/auto_route.dart';
import 'package:favoritable_strings/src/core/i18n/l10n.dart';
import 'package:favoritable_strings/src/features/strings/logic/favorite_strings/favorite_strings_cubit.dart';
import 'package:favoritable_strings/src/features/strings/logic/favorite_strings/favorite_strings_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class FavoriteStringsScreen extends StatefulWidget {
  const FavoriteStringsScreen({super.key});

  @override
  State<FavoriteStringsScreen> createState() => _FavoriteStringsScreenState();
}

class _FavoriteStringsScreenState extends State<FavoriteStringsScreen> {
  @override
  void initState() {
    context.read<FavoriteStringsCubit>().fetchFavorites();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavoriteStringsCubit, FavoriteStringsState>(
      builder: (context, state) {
        if (state.favorites.isEmpty) {
          return Center(
            child: Text(I18n.of(context).strings_favoritesTab_emptyList),
          );
        }
        return ListView.builder(
          itemCount: state.favorites.length,
          itemBuilder: (context, index) {
            final string = state.favorites[index];
            return ListTile(
              title: Text(string.string),
              trailing: Icon(
                Icons.favorite,
                color: string.isFavorite ? Colors.red : Colors.grey,
              ),
              onTap: () =>
                  context.read<FavoriteStringsCubit>().toggleFavorite(string),
            );
          },
        );
      },
    );
  }
}
