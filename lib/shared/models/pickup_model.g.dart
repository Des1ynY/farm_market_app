// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pickup_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PickupModel _$$_PickupModelFromJson(Map<String, dynamic> json) =>
    _$_PickupModel(
      json['address'] as String,
      json['pickup_latitude'] as num,
      json['pickup_longitude'] as num,
    );

Map<String, dynamic> _$$_PickupModelToJson(_$_PickupModel instance) =>
    <String, dynamic>{
      'address': instance.address,
      'pickup_latitude': instance.latitude,
      'pickup_longitude': instance.longitude,
    };
