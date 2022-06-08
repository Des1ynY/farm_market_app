// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ItemModel _$$_ItemModelFromJson(Map<String, dynamic> json) => _$_ItemModel(
      json['uid'] as String?,
      json['title'] as String?,
      json['description'] as String?,
      json['category'] as String?,
      json['composition'] as String?,
      (json['list_of_images'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      (json['prices'] as List<dynamic>?)
          ?.map((e) => PriceModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ItemModelToJson(_$_ItemModel instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'title': instance.name,
      'description': instance.description,
      'category': instance.category,
      'composition': instance.composition,
      'list_of_images': instance.images,
      'prices': instance.prices,
    };
