import 'package:flutter/material.dart';
import 'package:favoritable_strings/src/core/i18n/l10n.dart';
import 'package:favoritable_strings/src/core/routing/app_router.dart';
import 'package:favoritable_strings/src/core/theme/app_theme.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class Application extends StatelessWidget {
  Application({super.key});

  final AppRouter appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Favorite Strings',
      routerDelegate: appRouter.delegate(),
      routeInformationProvider: appRouter.routeInfoProvider(),
      routeInformationParser: appRouter.defaultRouteParser(),
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        I18n.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', 'US'),
      ],
    );
  }
}
