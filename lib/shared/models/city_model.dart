// ignore_for_file: invalid_annotation_target

import 'package:farm_market_app/shared/models/pickup_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'city_model.freezed.dart';
part 'city_model.g.dart';

@freezed
class CityModel with _$CityModel {
  const factory CityModel(
    @JsonKey(name: 'city_name') String name,
    @JsonKey(name: 'city_latitude') num latitude,
    @JsonKey(name: 'city_longitude') num longitude,
    @JsonKey(name: 'has_delivery') bool hasDelivery,
    @JsonKey(name: 'delivery_price') num? deliveryPrice,
    @JsonKey(name: 'has_pickup') bool hasPickup,
    @JsonKey(name: 'pickup_addresses') List<PickupModel>? pickupAddersses,
  ) = _CityModel;

  factory CityModel.fromJson(Map<String, dynamic> json) =>
      _$CityModelFromJson(json);
}
