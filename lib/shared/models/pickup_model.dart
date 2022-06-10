// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'pickup_model.freezed.dart';
part 'pickup_model.g.dart';

@freezed
class PickupModel with _$PickupModel {
  const factory PickupModel(
    String address,
    @JsonKey(name: 'pickup_latitude') num latitude,
    @JsonKey(name: 'pickup_longitude') num longitude,
  ) = _PickupModel;

  factory PickupModel.fromJson(Map<String, dynamic> json) =>
      _$PickupModelFromJson(json);
}
