// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    RouterRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const RouterScreen());
    },
    OnboardingRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const OnboardingScreen());
    },
    CatalogRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const CatalogScreen());
    },
    CartRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const CartScreen());
    },
    ItemOverviewRoute.name: (routeData) {
      final args = routeData.argsAs<ItemOverviewRouteArgs>();
      return MaterialPageX<dynamic>(
          routeData: routeData,
          child: ItemOverviewScreen(item: args.item, key: args.key));
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(RouterRoute.name, path: '/', children: [
          RouteConfig('#redirect',
              path: '',
              parent: RouterRoute.name,
              redirectTo: 'onboarding',
              fullMatch: true),
          RouteConfig(OnboardingRoute.name,
              path: 'onboarding', parent: RouterRoute.name),
          RouteConfig(CatalogRoute.name,
              path: 'catalog', parent: RouterRoute.name),
          RouteConfig(CartRoute.name, path: 'cart', parent: RouterRoute.name),
          RouteConfig(ItemOverviewRoute.name,
              path: 'item', parent: RouterRoute.name)
        ])
      ];
}

/// generated route for
/// [RouterScreen]
class RouterRoute extends PageRouteInfo<void> {
  const RouterRoute({List<PageRouteInfo>? children})
      : super(RouterRoute.name, path: '/', initialChildren: children);

  static const String name = 'RouterRoute';
}

/// generated route for
/// [OnboardingScreen]
class OnboardingRoute extends PageRouteInfo<void> {
  const OnboardingRoute() : super(OnboardingRoute.name, path: 'onboarding');

  static const String name = 'OnboardingRoute';
}

/// generated route for
/// [CatalogScreen]
class CatalogRoute extends PageRouteInfo<void> {
  const CatalogRoute() : super(CatalogRoute.name, path: 'catalog');

  static const String name = 'CatalogRoute';
}

/// generated route for
/// [CartScreen]
class CartRoute extends PageRouteInfo<void> {
  const CartRoute() : super(CartRoute.name, path: 'cart');

  static const String name = 'CartRoute';
}

/// generated route for
/// [ItemOverviewScreen]
class ItemOverviewRoute extends PageRouteInfo<ItemOverviewRouteArgs> {
  ItemOverviewRoute({required ItemModel item, Key? key})
      : super(ItemOverviewRoute.name,
            path: 'item', args: ItemOverviewRouteArgs(item: item, key: key));

  static const String name = 'ItemOverviewRoute';
}

class ItemOverviewRouteArgs {
  const ItemOverviewRouteArgs({required this.item, this.key});

  final ItemModel item;

  final Key? key;

  @override
  String toString() {
    return 'ItemOverviewRouteArgs{item: $item, key: $key}';
  }
}
