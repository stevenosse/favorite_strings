// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    AllStringsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AllStringsScreen(),
      );
    },
    StringsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(child: const StringsScreen()),
      );
    },
    FavoriteStringsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const FavoriteStringsScreen(),
      );
    },
  };
}

/// generated route for
/// [AllStringsScreen]
class AllStringsRoute extends PageRouteInfo<void> {
  const AllStringsRoute({List<PageRouteInfo>? children})
      : super(
          AllStringsRoute.name,
          initialChildren: children,
        );

  static const String name = 'AllStringsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [StringsScreen]
class StringsRoute extends PageRouteInfo<void> {
  const StringsRoute({List<PageRouteInfo>? children})
      : super(
          StringsRoute.name,
          initialChildren: children,
        );

  static const String name = 'StringsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [FavoriteStringsScreen]
class FavoriteStringsRoute extends PageRouteInfo<void> {
  const FavoriteStringsRoute({List<PageRouteInfo>? children})
      : super(
          FavoriteStringsRoute.name,
          initialChildren: children,
        );

  static const String name = 'FavoriteStringsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
