import 'package:auto_route/auto_route.dart';
import 'package:farm_market_app/data/app_config_repository.dart';
import 'package:farm_market_app/utils/router/router.dart';

class FirstLaunchGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    if (await AppConfig.isFirstLaunch) {
      await AppConfig.appWasLaunched();
      resolver.next();
    } else {
      router.replace(
        await AppConfig.cityIsSet
            ? const CatalogRoute()
            : const SelectCityRoute(),
      );
    }
  }
}
