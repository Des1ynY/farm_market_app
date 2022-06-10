import 'package:bloc/bloc.dart';
import 'package:farm_market_app/data/app_config_repository.dart';
import 'package:farm_market_app/shared/models/city_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'select_city_event.dart';
part 'select_city_state.dart';
part 'select_city_bloc.freezed.dart';

class SelectCityBloc extends Bloc<SelectCityEvent, SelectCityState> {
  SelectCityBloc() : super(const _Initial()) {
    on<_SetCity>(_setCity);
  }

  void _setCity(_SetCity event, Emitter<SelectCityState> emit) async {
    emit(const SelectCityState.processing());
    try {
      await AppConfig.setCity(event.city);
      emit(const SelectCityState.success());
    } on Object catch (error, stackTrace) {
      addError(error, stackTrace);
      emit(const SelectCityState.error());
    }
  }
}
