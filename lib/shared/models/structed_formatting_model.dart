// ignore_for_file: invalid_annotation_target

import 'package:farm_market_app/shared/models/matched_substring_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'structed_formatting_model.freezed.dart';
part 'structed_formatting_model.g.dart';

@freezed
class StructuredFormattingModel with _$StructuredFormattingModel {
  const factory StructuredFormattingModel(
    @JsonKey(name: 'main_text') String? mainText,
    @JsonKey(name: 'main_text_matched_substrings')
        List<MatchedSubstringModel>? mainTextMatch,
    @JsonKey(name: 'secondary_text') String? secondaryText,
    @JsonKey(name: 'secondary_text_matched_substrings')
        List<MatchedSubstringModel>? secondaryTextMatch,
  ) = _StructuredFormattingModel;

  factory StructuredFormattingModel.fromJson(Map<String, dynamic> json) =>
      _$StructuredFormattingModelFromJson(json);
}
