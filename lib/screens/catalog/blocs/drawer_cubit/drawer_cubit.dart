import 'package:bloc/bloc.dart';
import 'package:farm_market_app/shared/models/category_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'drawer_state.dart';
part 'drawer_cubit.freezed.dart';

class DrawerCubit extends Cubit<DrawerState> {
  DrawerCubit() : super(const DrawerState([]));

  void push(List<CategoryModel> categories) {
    final history = List<List<CategoryModel>>.from(state.categoriesHistory);
    history.add(categories);
    emit(DrawerState(history));
  }

  void pop() {
    final history = List<List<CategoryModel>>.from(state.categoriesHistory);
    history.removeLast();
    emit(DrawerState(history));
  }
}
