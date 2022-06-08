// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'price_model.freezed.dart';
part 'price_model.g.dart';

@freezed
class PriceModel with _$PriceModel {
  const factory PriceModel(
    double? capacity,
    @JsonKey(name: 'capacity_type') String? capacityType,
    double? price,
  ) = _PriceModel;

  factory PriceModel.fromJson(Map<String, dynamic> json) =>
      _$PriceModelFromJson(json);
}
