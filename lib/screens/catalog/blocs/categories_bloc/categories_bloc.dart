import 'package:bloc/bloc.dart';
import 'package:farm_market_app/data/interfaces/database_interface.dart';
import 'package:farm_market_app/shared/models/category_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'categories_event.dart';
part 'categories_state.dart';
part 'categories_bloc.freezed.dart';

class CategoriesBloc extends Bloc<CategoriesEvent, CategoriesState> {
  CategoriesBloc({required this.database}) : super(const _Initial()) {
    on<_Started>(_onStarted);
  }

  final IDatabase database;

  void _onStarted(_Started event, Emitter<CategoriesState> emit) async {
    emit(const CategoriesState.loading());
    try {
      final categories = await database.getCategories(
        parentCategoryId: event.parentCategoryId,
      );
      emit(CategoriesState.loaded(categories));
    } on Object catch (error, stackTrace) {
      addError(error, stackTrace);
      emit(const CategoriesState.error());
    }
  }
}
