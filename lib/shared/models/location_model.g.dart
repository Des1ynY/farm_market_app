// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LocationModel _$$_LocationModelFromJson(Map<String, dynamic> json) =>
    _$_LocationModel(
      json['description'] as String?,
      json['place_id'] as String?,
      json['reference'] as String?,
      json['structured_formatting'] == null
          ? null
          : StructuredFormattingModel.fromJson(
              json['structured_formatting'] as Map<String, dynamic>),
      (json['terms'] as List<dynamic>?)
          ?.map((e) => LocationTermModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['types'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_LocationModelToJson(_$_LocationModel instance) =>
    <String, dynamic>{
      'description': instance.description,
      'place_id': instance.placeId,
      'reference': instance.reference,
      'structured_formatting': instance.structuredFormatting,
      'terms': instance.terms,
      'types': instance.types,
    };
