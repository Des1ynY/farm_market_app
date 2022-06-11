import 'package:farm_market_app/data/implementations/firebase_database.dart';
import 'package:farm_market_app/screens/catalog/blocs/categories_bloc/categories_bloc.dart';
import 'package:farm_market_app/screens/catalog/blocs/items_bloc/items_bloc.dart';
import 'package:farm_market_app/screens/catalog/widgets/catalog_appbar_widget.dart';
import 'package:farm_market_app/screens/catalog/widgets/drawer/catalog_drawer_widget.dart';
import 'package:farm_market_app/screens/catalog/widgets/items_list/items_list_view.dart';
import 'package:farm_market_app/shared/widgets/background_gradient_widget.dart';
import 'package:farm_market_app/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CatalogScreen extends StatelessWidget {
  const CatalogScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ItemsBloc(database: FirebaseDatabase())
            ..add(const ItemsEvent.started(selectedCategory: [])),
        ),
        BlocProvider(
          create: (context) => CategoriesBloc(database: FirebaseDatabase())
            ..add(const CategoriesEvent.started()),
        ),
      ],
      child: Scaffold(
        drawer: const CatalogDrawer(),
        body: BackgroundGradient(
          child: SafeArea(
            child: Column(
              children: const [
                CatalogAppBar(),
                Expanded(
                  child: Padding(
                    padding: kPageDefaultPadding,
                    child: CatalogItemsListView(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
