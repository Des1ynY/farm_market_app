import 'package:auto_route/auto_route.dart';
import 'package:farm_market_app/screens/catalog/blocs/categories_bloc/categories_bloc.dart';
import 'package:farm_market_app/screens/catalog/blocs/drawer_cubit/drawer_cubit.dart';
import 'package:farm_market_app/screens/catalog/widgets/drawer/category_button.dart';
import 'package:farm_market_app/screens/catalog/widgets/drawer/drawer_appbar.dart';
import 'package:farm_market_app/screens/catalog/widgets/drawer/restore_filter_button.dart';
import 'package:farm_market_app/shared/models/category_model.dart';
import 'package:farm_market_app/shared/widgets/background_gradient_widget.dart';
import 'package:farm_market_app/shared/widgets/error_widget.dart';
import 'package:farm_market_app/shared/widgets/loading_indicator_widget.dart';
import 'package:farm_market_app/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CatalogDrawer extends StatefulWidget {
  const CatalogDrawer({Key? key}) : super(key: key);

  @override
  State<CatalogDrawer> createState() => _CatalogDrawerState();
}

class _CatalogDrawerState extends State<CatalogDrawer> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DrawerCubit(),
      // List of previous category models. Used to be global variable
      child: RepositoryProvider<List<CategoryModel>>(
        create: (context) => [],
        child: Drawer(
          width: MediaQuery.of(context).size.width,
          child: BackgroundGradient(
            child: SafeArea(
              child: Column(
                children: [
                  const CatalogDrawerAppBar(),
                  Expanded(
                    child: BlocConsumer<CategoriesBloc, CategoriesState>(
                      listener: ((context, state) {
                        state.whenOrNull(
                          loaded: (categories) =>
                              context.read<DrawerCubit>().push(categories),
                        );
                      }),
                      builder: (context, state) {
                        return state.maybeWhen(
                          orElse: () => const LoadingIndicator(),
                          error: () => Padding(
                            padding: kPageDefaultPadding,
                            child: CustomErrorWidget(
                              onRefreshButtonPressed: () => _onRefresh(context),
                            ),
                          ),
                          loaded: (categories) {
                            return BlocConsumer<DrawerCubit, DrawerState>(
                              listener: (context, state) {
                                if (state.categoriesHistory.isEmpty) {
                                  context.router.pop();
                                }
                              },
                              builder: (context, state) {
                                return SingleChildScrollView(
                                  padding: kPageDefaultPadding,
                                  child: Column(
                                    children: state
                                        .categoriesHistory.lastOrEmpty
                                        .map((e) => CategoryButton(category: e))
                                        .toList(),
                                  ),
                                );
                              },
                            );
                          },
                        );
                      },
                    ),
                  ),
                  const RestoreFiltersButton(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _onRefresh(BuildContext context) {
    context.read<CategoriesBloc>().add(const CategoriesEvent.started());
  }
}

extension<T> on List<List<T>> {
  List<T> get lastOrEmpty {
    try {
      return last;
    } on Object {
      return [];
    }
  }
}
