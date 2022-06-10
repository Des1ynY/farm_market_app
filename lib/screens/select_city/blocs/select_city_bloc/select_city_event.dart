part of 'select_city_bloc.dart';

@freezed
class SelectCityEvent with _$SelectCityEvent {
  const factory SelectCityEvent.setCity(CityModel city) = _SetCity;
}
