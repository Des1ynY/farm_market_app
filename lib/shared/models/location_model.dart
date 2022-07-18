// ignore_for_file: invalid_annotation_target
import 'package:farm_market_app/shared/models/location_term_model.dart';
import 'package:farm_market_app/shared/models/structed_formatting_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_model.freezed.dart';
part 'location_model.g.dart';

@freezed
class LocationModel with _$LocationModel {
  const factory LocationModel(
    String? description,
    @JsonKey(name: 'place_id') String? placeId,
    String? reference,
    @JsonKey(name: 'structured_formatting')
        StructuredFormattingModel? structuredFormatting,
    List<LocationTermModel>? terms,
    List<String>? types,
  ) = _LocationModel;

  factory LocationModel.fromJson(Map<String, dynamic> json) =>
      _$LocationModelFromJson(json);
}
