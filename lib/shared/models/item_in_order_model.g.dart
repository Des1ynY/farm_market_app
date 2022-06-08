// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_in_order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ItemInOrder _$$_ItemInOrderFromJson(Map<String, dynamic> json) =>
    _$_ItemInOrder(
      json['item_id'] as String?,
      json['selected_price'] == null
          ? null
          : PriceModel.fromJson(json['selected_price'] as Map<String, dynamic>),
      json['count'] as int?,
    );

Map<String, dynamic> _$$_ItemInOrderToJson(_$_ItemInOrder instance) =>
    <String, dynamic>{
      'item_id': instance.itemId,
      'selected_price': instance.selectedPrice,
      'count': instance.count,
    };
