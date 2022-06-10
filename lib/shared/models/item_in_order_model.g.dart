// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_in_order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ItemInOrderModel _$$_ItemInOrderModelFromJson(Map<String, dynamic> json) =>
    _$_ItemInOrderModel(
      json['item_id'] as String,
      PriceModel.fromJson(json['selected_price'] as Map<String, dynamic>),
      json['count'] as int,
    );

Map<String, dynamic> _$$_ItemInOrderModelToJson(_$_ItemInOrderModel instance) =>
    <String, dynamic>{
      'item_id': instance.itemId,
      'selected_price': instance.selectedPrice,
      'count': instance.count,
    };
