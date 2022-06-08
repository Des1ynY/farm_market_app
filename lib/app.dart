import 'package:farm_market_app/utils/l10n/generated/l10n.dart';
import 'package:farm_market_app/utils/router/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FarmMarketApp extends StatefulWidget {
  const FarmMarketApp({required this.prefs, Key? key}) : super(key: key);

  final SharedPreferences prefs;

  @override
  State<FarmMarketApp> createState() => _FarmMarketAppState();
}

class _FarmMarketAppState extends State<FarmMarketApp> {
  late final AppRouter _appRouter;

  @override
  void initState() {
    super.initState();
    _appRouter = AppRouter();
  }

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => widget.prefs,
      child: MaterialApp.router(
        routeInformationParser: _appRouter.defaultRouteParser(),
        routerDelegate: _appRouter.delegate(),
        localizationsDelegates: const [
          GlobalCupertinoLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          S.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        theme: ThemeData(fontFamily: 'Manrope'),
      ),
    );
  }
}
