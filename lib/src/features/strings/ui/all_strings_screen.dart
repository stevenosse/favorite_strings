import 'package:auto_route/auto_route.dart';
import 'package:favoritable_strings/src/core/i18n/l10n.dart';
import 'package:favoritable_strings/src/features/strings/logic/all_strings/all_strings_cubit.dart';
import 'package:favoritable_strings/src/features/strings/logic/all_strings/all_strings_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class AllStringsScreen extends StatefulWidget {
  const AllStringsScreen({super.key});

  @override
  State<AllStringsScreen> createState() => _AllStringsScreenState();
}

class _AllStringsScreenState extends State<AllStringsScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AllStringsCubit, AllStringsState>(
      listener: (context, state) {
        state.whenOrNull(
          idle: (strings) => VoidCallback,
          itemUnfaved: (item, strings) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('You\'ve removed ${item.string} from your favorites'),
                action: SnackBarAction(
                  label: I18n.of(context).undo,
                  onPressed: () => context.read<AllStringsCubit>().toggleFavorite(item),
                ),
              ),
            );
          },
        );
      },
      builder: (context, state) {
        return ListView.builder(
          itemCount: state.strings.length,
          itemBuilder: (context, index) {
            final string = state.strings[index];
            return ListTile(
              title: Text(string.string),
              trailing: Icon(
                Icons.favorite,
                color: string.isFavorite ? Colors.red : Colors.grey,
              ),
              onTap: () => context.read<AllStringsCubit>().toggleFavorite(string),
            );
          },
        );
      },
    );
  }
}
