import 'package:freezed_annotation/freezed_annotation.dart';

part 'matched_substring_model.freezed.dart';
part 'matched_substring_model.g.dart';

@freezed
class MatchedSubstringModel with _$MatchedSubstringModel {
  const factory MatchedSubstringModel(
    int length,
    int offset,
  ) = _MatchedSubstringModel;

  factory MatchedSubstringModel.fromJson(Map<String, dynamic> json) =>
      _$MatchedSubstringModelFromJson(json);
}
