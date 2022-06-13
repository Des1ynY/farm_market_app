import 'package:farm_market_app/screens/item_overview/blocs/item_bloc/item_bloc.dart';
import 'package:farm_market_app/screens/item_overview/widgets/description_block/description_block_tabbar.dart';
import 'package:farm_market_app/shared/models/item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DescriptionBlockWidget extends StatefulWidget {
  const DescriptionBlockWidget({Key? key}) : super(key: key);

  @override
  State<DescriptionBlockWidget> createState() => _DescriptionBlockWidgetState();
}

class _DescriptionBlockWidgetState extends State<DescriptionBlockWidget>
    with TickerProviderStateMixin {
  late final TabController _tabController;
  late final ItemModel _item;
  late final bool _hasComposition;
  late final bool _hasDescription;
  late final int _tabsCount;

  @override
  void initState() {
    super.initState();
    _item = RepositoryProvider.of<ItemModel>(context);
    _hasComposition = _item.composition != null;
    _hasDescription = _item.description != null;
    _tabsCount = [_hasComposition, _hasDescription]
        .map((e) => e ? 1 : 0)
        .fold(0, (previousValue, element) => previousValue + element);
    _tabController = TabController(length: _tabsCount, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ItemBloc, ItemState>(
      builder: (context, state) {
        if (state.selectedTabIndex == null) return Container();

        return Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              DescriptionBlockTabBar(
                tabController: _tabController,
                hasComposition: _hasComposition,
                hasDescription: _hasDescription,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Builder(
                  builder: (context) {
                    if (_tabsCount == 1) {
                      return _hasDescription
                          ? Text(_item.description!)
                          : Text(_item.composition!);
                    } else {
                      return state.selectedTabIndex == 0
                          ? Text(_item.description!)
                          : Text(_item.composition!);
                    }
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
