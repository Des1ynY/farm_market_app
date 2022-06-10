// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'city_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CityModel _$CityModelFromJson(Map<String, dynamic> json) {
  return _CityModel.fromJson(json);
}

/// @nodoc
mixin _$CityModel {
  @JsonKey(name: 'city_name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'city_latitude')
  num get latitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'city_longitude')
  num get longitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'has_delivery')
  bool get hasDelivery => throw _privateConstructorUsedError;
  @JsonKey(name: 'delivery_price')
  num? get deliveryPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'has_pickup')
  bool get hasPickup => throw _privateConstructorUsedError;
  @JsonKey(name: 'pickup_addresses')
  List<PickupModel>? get pickupAddersses => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CityModelCopyWith<CityModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CityModelCopyWith<$Res> {
  factory $CityModelCopyWith(CityModel value, $Res Function(CityModel) then) =
      _$CityModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'city_name') String name,
      @JsonKey(name: 'city_latitude') num latitude,
      @JsonKey(name: 'city_longitude') num longitude,
      @JsonKey(name: 'has_delivery') bool hasDelivery,
      @JsonKey(name: 'delivery_price') num? deliveryPrice,
      @JsonKey(name: 'has_pickup') bool hasPickup,
      @JsonKey(name: 'pickup_addresses') List<PickupModel>? pickupAddersses});
}

/// @nodoc
class _$CityModelCopyWithImpl<$Res> implements $CityModelCopyWith<$Res> {
  _$CityModelCopyWithImpl(this._value, this._then);

  final CityModel _value;
  // ignore: unused_field
  final $Res Function(CityModel) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? hasDelivery = freezed,
    Object? deliveryPrice = freezed,
    Object? hasPickup = freezed,
    Object? pickupAddersses = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as num,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as num,
      hasDelivery: hasDelivery == freezed
          ? _value.hasDelivery
          : hasDelivery // ignore: cast_nullable_to_non_nullable
              as bool,
      deliveryPrice: deliveryPrice == freezed
          ? _value.deliveryPrice
          : deliveryPrice // ignore: cast_nullable_to_non_nullable
              as num?,
      hasPickup: hasPickup == freezed
          ? _value.hasPickup
          : hasPickup // ignore: cast_nullable_to_non_nullable
              as bool,
      pickupAddersses: pickupAddersses == freezed
          ? _value.pickupAddersses
          : pickupAddersses // ignore: cast_nullable_to_non_nullable
              as List<PickupModel>?,
    ));
  }
}

/// @nodoc
abstract class _$$_CityModelCopyWith<$Res> implements $CityModelCopyWith<$Res> {
  factory _$$_CityModelCopyWith(
          _$_CityModel value, $Res Function(_$_CityModel) then) =
      __$$_CityModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'city_name') String name,
      @JsonKey(name: 'city_latitude') num latitude,
      @JsonKey(name: 'city_longitude') num longitude,
      @JsonKey(name: 'has_delivery') bool hasDelivery,
      @JsonKey(name: 'delivery_price') num? deliveryPrice,
      @JsonKey(name: 'has_pickup') bool hasPickup,
      @JsonKey(name: 'pickup_addresses') List<PickupModel>? pickupAddersses});
}

/// @nodoc
class __$$_CityModelCopyWithImpl<$Res> extends _$CityModelCopyWithImpl<$Res>
    implements _$$_CityModelCopyWith<$Res> {
  __$$_CityModelCopyWithImpl(
      _$_CityModel _value, $Res Function(_$_CityModel) _then)
      : super(_value, (v) => _then(v as _$_CityModel));

  @override
  _$_CityModel get _value => super._value as _$_CityModel;

  @override
  $Res call({
    Object? name = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? hasDelivery = freezed,
    Object? deliveryPrice = freezed,
    Object? hasPickup = freezed,
    Object? pickupAddersses = freezed,
  }) {
    return _then(_$_CityModel(
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as num,
      longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as num,
      hasDelivery == freezed
          ? _value.hasDelivery
          : hasDelivery // ignore: cast_nullable_to_non_nullable
              as bool,
      deliveryPrice == freezed
          ? _value.deliveryPrice
          : deliveryPrice // ignore: cast_nullable_to_non_nullable
              as num?,
      hasPickup == freezed
          ? _value.hasPickup
          : hasPickup // ignore: cast_nullable_to_non_nullable
              as bool,
      pickupAddersses == freezed
          ? _value._pickupAddersses
          : pickupAddersses // ignore: cast_nullable_to_non_nullable
              as List<PickupModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CityModel implements _CityModel {
  const _$_CityModel(
      @JsonKey(name: 'city_name')
          this.name,
      @JsonKey(name: 'city_latitude')
          this.latitude,
      @JsonKey(name: 'city_longitude')
          this.longitude,
      @JsonKey(name: 'has_delivery')
          this.hasDelivery,
      @JsonKey(name: 'delivery_price')
          this.deliveryPrice,
      @JsonKey(name: 'has_pickup')
          this.hasPickup,
      @JsonKey(name: 'pickup_addresses')
          final List<PickupModel>? pickupAddersses)
      : _pickupAddersses = pickupAddersses;

  factory _$_CityModel.fromJson(Map<String, dynamic> json) =>
      _$$_CityModelFromJson(json);

  @override
  @JsonKey(name: 'city_name')
  final String name;
  @override
  @JsonKey(name: 'city_latitude')
  final num latitude;
  @override
  @JsonKey(name: 'city_longitude')
  final num longitude;
  @override
  @JsonKey(name: 'has_delivery')
  final bool hasDelivery;
  @override
  @JsonKey(name: 'delivery_price')
  final num? deliveryPrice;
  @override
  @JsonKey(name: 'has_pickup')
  final bool hasPickup;
  final List<PickupModel>? _pickupAddersses;
  @override
  @JsonKey(name: 'pickup_addresses')
  List<PickupModel>? get pickupAddersses {
    final value = _pickupAddersses;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CityModel(name: $name, latitude: $latitude, longitude: $longitude, hasDelivery: $hasDelivery, deliveryPrice: $deliveryPrice, hasPickup: $hasPickup, pickupAddersses: $pickupAddersses)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CityModel &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.latitude, latitude) &&
            const DeepCollectionEquality().equals(other.longitude, longitude) &&
            const DeepCollectionEquality()
                .equals(other.hasDelivery, hasDelivery) &&
            const DeepCollectionEquality()
                .equals(other.deliveryPrice, deliveryPrice) &&
            const DeepCollectionEquality().equals(other.hasPickup, hasPickup) &&
            const DeepCollectionEquality()
                .equals(other._pickupAddersses, _pickupAddersses));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(latitude),
      const DeepCollectionEquality().hash(longitude),
      const DeepCollectionEquality().hash(hasDelivery),
      const DeepCollectionEquality().hash(deliveryPrice),
      const DeepCollectionEquality().hash(hasPickup),
      const DeepCollectionEquality().hash(_pickupAddersses));

  @JsonKey(ignore: true)
  @override
  _$$_CityModelCopyWith<_$_CityModel> get copyWith =>
      __$$_CityModelCopyWithImpl<_$_CityModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CityModelToJson(this);
  }
}

abstract class _CityModel implements CityModel {
  const factory _CityModel(
      @JsonKey(name: 'city_name')
          final String name,
      @JsonKey(name: 'city_latitude')
          final num latitude,
      @JsonKey(name: 'city_longitude')
          final num longitude,
      @JsonKey(name: 'has_delivery')
          final bool hasDelivery,
      @JsonKey(name: 'delivery_price')
          final num? deliveryPrice,
      @JsonKey(name: 'has_pickup')
          final bool hasPickup,
      @JsonKey(name: 'pickup_addresses')
          final List<PickupModel>? pickupAddersses) = _$_CityModel;

  factory _CityModel.fromJson(Map<String, dynamic> json) =
      _$_CityModel.fromJson;

  @override
  @JsonKey(name: 'city_name')
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'city_latitude')
  num get latitude => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'city_longitude')
  num get longitude => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'has_delivery')
  bool get hasDelivery => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'delivery_price')
  num? get deliveryPrice => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'has_pickup')
  bool get hasPickup => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'pickup_addresses')
  List<PickupModel>? get pickupAddersses => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_CityModelCopyWith<_$_CityModel> get copyWith =>
      throw _privateConstructorUsedError;
}
