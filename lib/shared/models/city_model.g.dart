// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CityModel _$$_CityModelFromJson(Map<String, dynamic> json) => _$_CityModel(
      json['city_name'] as String,
      json['city_latitude'] as num,
      json['city_longitude'] as num,
      json['has_delivery'] as bool,
      json['delivery_price'] as num?,
      json['has_pickup'] as bool,
      (json['pickup_addresses'] as List<dynamic>?)
          ?.map((e) => PickupModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CityModelToJson(_$_CityModel instance) =>
    <String, dynamic>{
      'city_name': instance.name,
      'city_latitude': instance.latitude,
      'city_longitude': instance.longitude,
      'has_delivery': instance.hasDelivery,
      'delivery_price': instance.deliveryPrice,
      'has_pickup': instance.hasPickup,
      'pickup_addresses': instance.pickupAddersses,
    };
