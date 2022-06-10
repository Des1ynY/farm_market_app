part of 'select_city_bloc.dart';

@freezed
class SelectCityState with _$SelectCityState {
  const factory SelectCityState.initial() = _Initial;

  const factory SelectCityState.processing() = _Processing;

  const factory SelectCityState.success() = _Success;

  const factory SelectCityState.error() = _Error;
}
