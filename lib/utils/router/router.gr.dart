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
  _$AppRouter(
      {GlobalKey<NavigatorState>? navigatorKey, required this.firstLaunchGuard})
      : super(navigatorKey);

  final FirstLaunchGuard firstLaunchGuard;

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
          child: ItemOverviewScreen(
              item: args.item, itemCategory: args.itemCategory, key: args.key));
    },
    CreateOrderRoute.name: (routeData) {
      final args = routeData.argsAs<CreateOrderRouteArgs>();
      return MaterialPageX<dynamic>(
          routeData: routeData,
          child: CreateOrderScreen(
              deliveryType: args.deliveryType, key: args.key));
    },
    SelectCityRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const SelectCityScreen());
    },
    OrderFinishRoute.name: (routeData) {
      final args = routeData.argsAs<OrderFinishRouteArgs>();
      return MaterialPageX<dynamic>(
          routeData: routeData,
          child:
              OrderFinishScreen(pickupPoint: args.pickupPoint, key: args.key));
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
              path: 'onboarding',
              parent: RouterRoute.name,
              guards: [firstLaunchGuard]),
          RouteConfig(CatalogRoute.name,
              path: 'catalog', parent: RouterRoute.name),
          RouteConfig(CartRoute.name, path: 'cart', parent: RouterRoute.name),
          RouteConfig(ItemOverviewRoute.name,
              path: 'item', parent: RouterRoute.name),
          RouteConfig(CreateOrderRoute.name,
              path: 'create_order', parent: RouterRoute.name),
          RouteConfig(SelectCityRoute.name,
              path: 'select_city', parent: RouterRoute.name),
          RouteConfig(OrderFinishRoute.name,
              path: 'order_finish', parent: RouterRoute.name)
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
  ItemOverviewRoute(
      {required ItemModel item, required CategoryModel? itemCategory, Key? key})
      : super(ItemOverviewRoute.name,
            path: 'item',
            args: ItemOverviewRouteArgs(
                item: item, itemCategory: itemCategory, key: key));

  static const String name = 'ItemOverviewRoute';
}

class ItemOverviewRouteArgs {
  const ItemOverviewRouteArgs(
      {required this.item, required this.itemCategory, this.key});

  final ItemModel item;

  final CategoryModel? itemCategory;

  final Key? key;

  @override
  String toString() {
    return 'ItemOverviewRouteArgs{item: $item, itemCategory: $itemCategory, key: $key}';
  }
}

/// generated route for
/// [CreateOrderScreen]
class CreateOrderRoute extends PageRouteInfo<CreateOrderRouteArgs> {
  CreateOrderRoute({required DeliveryType deliveryType, Key? key})
      : super(CreateOrderRoute.name,
            path: 'create_order',
            args: CreateOrderRouteArgs(deliveryType: deliveryType, key: key));

  static const String name = 'CreateOrderRoute';
}

class CreateOrderRouteArgs {
  const CreateOrderRouteArgs({required this.deliveryType, this.key});

  final DeliveryType deliveryType;

  final Key? key;

  @override
  String toString() {
    return 'CreateOrderRouteArgs{deliveryType: $deliveryType, key: $key}';
  }
}

/// generated route for
/// [SelectCityScreen]
class SelectCityRoute extends PageRouteInfo<void> {
  const SelectCityRoute() : super(SelectCityRoute.name, path: 'select_city');

  static const String name = 'SelectCityRoute';
}

/// generated route for
/// [OrderFinishScreen]
class OrderFinishRoute extends PageRouteInfo<OrderFinishRouteArgs> {
  OrderFinishRoute({required PickupModel? pickupPoint, Key? key})
      : super(OrderFinishRoute.name,
            path: 'order_finish',
            args: OrderFinishRouteArgs(pickupPoint: pickupPoint, key: key));

  static const String name = 'OrderFinishRoute';
}

class OrderFinishRouteArgs {
  const OrderFinishRouteArgs({required this.pickupPoint, this.key});

  final PickupModel? pickupPoint;

  final Key? key;

  @override
  String toString() {
    return 'OrderFinishRouteArgs{pickupPoint: $pickupPoint, key: $key}';
  }
}
