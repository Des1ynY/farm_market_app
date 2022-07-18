// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'structed_formatting_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StructuredFormattingModel _$$_StructuredFormattingModelFromJson(
        Map<String, dynamic> json) =>
    _$_StructuredFormattingModel(
      json['main_text'] as String?,
      (json['main_text_matched_substrings'] as List<dynamic>?)
          ?.map(
              (e) => MatchedSubstringModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['secondary_text'] as String?,
      (json['secondary_text_matched_substrings'] as List<dynamic>?)
          ?.map(
              (e) => MatchedSubstringModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_StructuredFormattingModelToJson(
        _$_StructuredFormattingModel instance) =>
    <String, dynamic>{
      'main_text': instance.mainText,
      'main_text_matched_substrings': instance.mainTextMatch,
      'secondary_text': instance.secondaryText,
      'secondary_text_matched_substrings': instance.secondaryTextMatch,
    };
