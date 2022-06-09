// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'price_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PriceModel _$PriceModelFromJson(Map<String, dynamic> json) {
  return _PriceModel.fromJson(json);
}

/// @nodoc
mixin _$PriceModel {
  num? get capacity => throw _privateConstructorUsedError;
  @JsonKey(name: 'capacity_type')
  String? get capacityType => throw _privateConstructorUsedError;
  num get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PriceModelCopyWith<PriceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PriceModelCopyWith<$Res> {
  factory $PriceModelCopyWith(
          PriceModel value, $Res Function(PriceModel) then) =
      _$PriceModelCopyWithImpl<$Res>;
  $Res call(
      {num? capacity,
      @JsonKey(name: 'capacity_type') String? capacityType,
      num price});
}

/// @nodoc
class _$PriceModelCopyWithImpl<$Res> implements $PriceModelCopyWith<$Res> {
  _$PriceModelCopyWithImpl(this._value, this._then);

  final PriceModel _value;
  // ignore: unused_field
  final $Res Function(PriceModel) _then;

  @override
  $Res call({
    Object? capacity = freezed,
    Object? capacityType = freezed,
    Object? price = freezed,
  }) {
    return _then(_value.copyWith(
      capacity: capacity == freezed
          ? _value.capacity
          : capacity // ignore: cast_nullable_to_non_nullable
              as num?,
      capacityType: capacityType == freezed
          ? _value.capacityType
          : capacityType // ignore: cast_nullable_to_non_nullable
              as String?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
abstract class _$$_PriceModelCopyWith<$Res>
    implements $PriceModelCopyWith<$Res> {
  factory _$$_PriceModelCopyWith(
          _$_PriceModel value, $Res Function(_$_PriceModel) then) =
      __$$_PriceModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {num? capacity,
      @JsonKey(name: 'capacity_type') String? capacityType,
      num price});
}

/// @nodoc
class __$$_PriceModelCopyWithImpl<$Res> extends _$PriceModelCopyWithImpl<$Res>
    implements _$$_PriceModelCopyWith<$Res> {
  __$$_PriceModelCopyWithImpl(
      _$_PriceModel _value, $Res Function(_$_PriceModel) _then)
      : super(_value, (v) => _then(v as _$_PriceModel));

  @override
  _$_PriceModel get _value => super._value as _$_PriceModel;

  @override
  $Res call({
    Object? capacity = freezed,
    Object? capacityType = freezed,
    Object? price = freezed,
  }) {
    return _then(_$_PriceModel(
      capacity == freezed
          ? _value.capacity
          : capacity // ignore: cast_nullable_to_non_nullable
              as num?,
      capacityType == freezed
          ? _value.capacityType
          : capacityType // ignore: cast_nullable_to_non_nullable
              as String?,
      price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PriceModel implements _PriceModel {
  const _$_PriceModel(this.capacity,
      @JsonKey(name: 'capacity_type') this.capacityType, this.price);

  factory _$_PriceModel.fromJson(Map<String, dynamic> json) =>
      _$$_PriceModelFromJson(json);

  @override
  final num? capacity;
  @override
  @JsonKey(name: 'capacity_type')
  final String? capacityType;
  @override
  final num price;

  @override
  String toString() {
    return 'PriceModel(capacity: $capacity, capacityType: $capacityType, price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PriceModel &&
            const DeepCollectionEquality().equals(other.capacity, capacity) &&
            const DeepCollectionEquality()
                .equals(other.capacityType, capacityType) &&
            const DeepCollectionEquality().equals(other.price, price));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(capacity),
      const DeepCollectionEquality().hash(capacityType),
      const DeepCollectionEquality().hash(price));

  @JsonKey(ignore: true)
  @override
  _$$_PriceModelCopyWith<_$_PriceModel> get copyWith =>
      __$$_PriceModelCopyWithImpl<_$_PriceModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PriceModelToJson(this);
  }
}

abstract class _PriceModel implements PriceModel {
  const factory _PriceModel(
      final num? capacity,
      @JsonKey(name: 'capacity_type') final String? capacityType,
      final num price) = _$_PriceModel;

  factory _PriceModel.fromJson(Map<String, dynamic> json) =
      _$_PriceModel.fromJson;

  @override
  num? get capacity => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'capacity_type')
  String? get capacityType => throw _privateConstructorUsedError;
  @override
  num get price => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_PriceModelCopyWith<_$_PriceModel> get copyWith =>
      throw _privateConstructorUsedError;
}
