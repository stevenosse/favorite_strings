import 'package:auto_route/auto_route.dart';
import 'package:favoritable_strings/src/features/strings/ui/all_strings_screen.dart';
import 'package:favoritable_strings/src/features/strings/ui/favorite_strings_screen.dart';
import 'package:favoritable_strings/src/features/strings/ui/strings_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Screen,Route',
)
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> routes = [
    AutoRoute(
      initial: true,
      page: StringsRoute.page,
      children: [
        AutoRoute(page: AllStringsRoute.page, initial: true),
        AutoRoute(page: FavoriteStringsRoute.page),
      ],
    ),
  ];
}
