// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderModel _$$_OrderModelFromJson(Map<String, dynamic> json) =>
    _$_OrderModel(
      json['uid'] as String?,
      (json['items'] as List<dynamic>?)
          ?.map((e) => ItemInOrderModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['delivery_type'] as String?,
      json['deliveryAddress'] as String?,
      json['contactPhone'] as String?,
      json['comment'] as String?,
      (json['price'] as num?)?.toDouble(),
      json['creation_date'] as String?,
    );

Map<String, dynamic> _$$_OrderModelToJson(_$_OrderModel instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'items': instance.items,
      'delivery_type': instance.deliveryType,
      'deliveryAddress': instance.deliveryAddress,
      'contactPhone': instance.contactPhone,
      'comment': instance.comment,
      'price': instance.price,
      'creation_date': instance.creationDate,
    };
