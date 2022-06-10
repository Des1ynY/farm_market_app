// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pickup_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PickupModel _$PickupModelFromJson(Map<String, dynamic> json) {
  return _PickupModel.fromJson(json);
}

/// @nodoc
mixin _$PickupModel {
  String get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'pickup_latitude')
  num get latitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'pickup_longitude')
  num get longitude => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PickupModelCopyWith<PickupModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PickupModelCopyWith<$Res> {
  factory $PickupModelCopyWith(
          PickupModel value, $Res Function(PickupModel) then) =
      _$PickupModelCopyWithImpl<$Res>;
  $Res call(
      {String address,
      @JsonKey(name: 'pickup_latitude') num latitude,
      @JsonKey(name: 'pickup_longitude') num longitude});
}

/// @nodoc
class _$PickupModelCopyWithImpl<$Res> implements $PickupModelCopyWith<$Res> {
  _$PickupModelCopyWithImpl(this._value, this._then);

  final PickupModel _value;
  // ignore: unused_field
  final $Res Function(PickupModel) _then;

  @override
  $Res call({
    Object? address = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_value.copyWith(
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as num,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
abstract class _$$_PickupModelCopyWith<$Res>
    implements $PickupModelCopyWith<$Res> {
  factory _$$_PickupModelCopyWith(
          _$_PickupModel value, $Res Function(_$_PickupModel) then) =
      __$$_PickupModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String address,
      @JsonKey(name: 'pickup_latitude') num latitude,
      @JsonKey(name: 'pickup_longitude') num longitude});
}

/// @nodoc
class __$$_PickupModelCopyWithImpl<$Res> extends _$PickupModelCopyWithImpl<$Res>
    implements _$$_PickupModelCopyWith<$Res> {
  __$$_PickupModelCopyWithImpl(
      _$_PickupModel _value, $Res Function(_$_PickupModel) _then)
      : super(_value, (v) => _then(v as _$_PickupModel));

  @override
  _$_PickupModel get _value => super._value as _$_PickupModel;

  @override
  $Res call({
    Object? address = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_$_PickupModel(
      address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as num,
      longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PickupModel implements _PickupModel {
  const _$_PickupModel(
      this.address,
      @JsonKey(name: 'pickup_latitude') this.latitude,
      @JsonKey(name: 'pickup_longitude') this.longitude);

  factory _$_PickupModel.fromJson(Map<String, dynamic> json) =>
      _$$_PickupModelFromJson(json);

  @override
  final String address;
  @override
  @JsonKey(name: 'pickup_latitude')
  final num latitude;
  @override
  @JsonKey(name: 'pickup_longitude')
  final num longitude;

  @override
  String toString() {
    return 'PickupModel(address: $address, latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PickupModel &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality().equals(other.latitude, latitude) &&
            const DeepCollectionEquality().equals(other.longitude, longitude));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(address),
      const DeepCollectionEquality().hash(latitude),
      const DeepCollectionEquality().hash(longitude));

  @JsonKey(ignore: true)
  @override
  _$$_PickupModelCopyWith<_$_PickupModel> get copyWith =>
      __$$_PickupModelCopyWithImpl<_$_PickupModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PickupModelToJson(this);
  }
}

abstract class _PickupModel implements PickupModel {
  const factory _PickupModel(
      final String address,
      @JsonKey(name: 'pickup_latitude') final num latitude,
      @JsonKey(name: 'pickup_longitude') final num longitude) = _$_PickupModel;

  factory _PickupModel.fromJson(Map<String, dynamic> json) =
      _$_PickupModel.fromJson;

  @override
  String get address => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'pickup_latitude')
  num get latitude => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'pickup_longitude')
  num get longitude => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_PickupModelCopyWith<_$_PickupModel> get copyWith =>
      throw _privateConstructorUsedError;
}
