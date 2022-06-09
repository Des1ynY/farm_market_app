import 'package:farm_market_app/data/interfaces/cart_interface.dart';
import 'package:farm_market_app/shared/blocs/add_to_cart_bloc/add_to_cart_bloc.dart';
import 'package:farm_market_app/shared/blocs/cart_bloc/cart_bloc.dart';
import 'package:farm_market_app/utils/l10n/generated/l10n.dart';
import 'package:farm_market_app/utils/router/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class FarmMarketApp extends StatefulWidget {
  const FarmMarketApp({required this.cart, Key? key}) : super(key: key);

  final ICart cart;

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
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              CartBloc(cart: widget.cart)..add(const CartEvent.refresh()),
        ),
        BlocProvider(create: (context) => AddToCartBloc(cart: widget.cart)),
      ],
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
