import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_term_model.freezed.dart';
part 'location_term_model.g.dart';

@freezed
class LocationTermModel with _$LocationTermModel {
  const factory LocationTermModel(
    int offset,
    String value,
  ) = _LocationTermModel;

  factory LocationTermModel.fromJson(Map<String, dynamic> json) =>
      _$LocationTermModelFromJson(json);
}
