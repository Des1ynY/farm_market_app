// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CategoryModel _$$_CategoryModelFromJson(Map<String, dynamic> json) =>
    _$_CategoryModel(
      json['uid'] as String?,
      json['name'] as String?,
      json['category_icon'] as String?,
      json['parent'] as String?,
      (json['items'] as List<dynamic>?)?.map((e) => e as String).toList(),
      (json['children'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_CategoryModelToJson(_$_CategoryModel instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'name': instance.name,
      'category_icon': instance.icon,
      'parent': instance.parentCategory,
      'items': instance.items,
      'children': instance.children,
    };
