import 'package:auto_route/auto_route.dart';
import 'package:farm_market_app/screens/screens.dart';
import 'package:farm_market_app/shared/models/item_model.dart';
import 'package:farm_market_app/utils/router/router_screen.dart';
import 'package:flutter/material.dart';

part 'router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Screen,Route',
  routes: [
    AutoRoute(
      page: RouterScreen,
      path: '/',
      initial: true,
      children: [
        // FIXME
        AutoRoute(
          page: OnboardingScreen,
          path: 'onboarding',
          initial: true,
        ),
        AutoRoute(
          page: CatalogScreen,
          path: 'catalog',
        ),
        AutoRoute(
          page: CartScreen,
          path: 'cart',
        ),
        AutoRoute(
          page: ItemOverviewScreen,
          path: 'item',
        ),
      ],
    ),
  ],
)
class AppRouter extends _$AppRouter {}
