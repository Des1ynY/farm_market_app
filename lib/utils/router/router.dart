import 'package:auto_route/auto_route.dart';
import 'package:farm_market_app/screens/screens.dart';
import 'package:farm_market_app/shared/models/category_model.dart';
import 'package:farm_market_app/shared/models/item_model.dart';
import 'package:farm_market_app/shared/models/pickup_model.dart';
import 'package:farm_market_app/utils/router/first_launch_guard.dart';
import 'package:farm_market_app/utils/router/router_screen.dart';
import 'package:flutter/material.dart';

part 'router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Screen,Route',
  routes: [
    AutoRoute(
      page: RouterScreen,
      path: '/',
      children: [
        AutoRoute(
          page: OnboardingScreen,
          path: 'onboarding',
          initial: true,
          guards: [FirstLaunchGuard],
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
        AutoRoute(
          page: CreateOrderScreen,
          path: 'create_order',
        ),
        AutoRoute(
          page: SelectCityScreen,
          path: 'select_city',
        ),
        AutoRoute(
          page: OrderFinishScreen,
          path: 'order_finish',
        )
      ],
    ),
  ],
)
class AppRouter extends _$AppRouter {
  AppRouter({required super.firstLaunchGuard});
}
