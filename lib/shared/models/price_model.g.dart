// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'price_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PriceModel _$$_PriceModelFromJson(Map<String, dynamic> json) =>
    _$_PriceModel(
      (json['capacity'] as num?)?.toDouble(),
      json['capacity_type'] as String?,
      (json['price'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_PriceModelToJson(_$_PriceModel instance) =>
    <String, dynamic>{
      'capacity': instance.capacity,
      'capacity_type': instance.capacityType,
      'price': instance.price,
    };
