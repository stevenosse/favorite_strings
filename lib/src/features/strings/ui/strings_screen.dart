import 'package:auto_route/auto_route.dart';
import 'package:favoritable_strings/src/features/strings/logic/all_strings/all_strings_cubit.dart';
import 'package:favoritable_strings/src/features/strings/logic/favorite_strings/favorite_strings_cubit.dart';
import 'package:flutter/material.dart';
import 'package:favoritable_strings/src/core/i18n/l10n.dart';
import 'package:favoritable_strings/src/core/routing/app_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class StringsScreen extends StatelessWidget with AutoRouteWrapper {
  const StringsScreen({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AllStringsCubit>(
          create: (_) => AllStringsCubit()..getAllStrings(),
        ),
        BlocProvider<FavoriteStringsCubit>(
          create: (_) => FavoriteStringsCubit(),
        ),
      ],
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      appBarBuilder: (context, tabsRouter) => AppBar(
        title: Text(I18n.of(context).strings_pageTitle),
      ),
      routes: const [
        AllStringsRoute(),
        FavoriteStringsRoute(),
      ],
      bottomNavigationBuilder: (context, tabsRouter) {
        return BottomNavigationBar(
          onTap: (index) {
            tabsRouter.setActiveIndex(index);
          },
          currentIndex: tabsRouter.activeIndex,
          items: [
            BottomNavigationBarItem(
              icon: const Icon(Icons.list),
              label: I18n.of(context).strings_allTab_title,
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.favorite),
              label: I18n.of(context).strings_favoritesTab_title,
            ),
          ],
        );
      },
    );
  }
}
