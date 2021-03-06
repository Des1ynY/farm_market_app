// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'item_in_order_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ItemInOrderModel _$ItemInOrderModelFromJson(Map<String, dynamic> json) {
  return _ItemInOrderModel.fromJson(json);
}

/// @nodoc
mixin _$ItemInOrderModel {
  @JsonKey(name: 'item_id')
  String get itemId => throw _privateConstructorUsedError;
  @JsonKey(name: 'selected_price')
  PriceModel get selectedPrice => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemInOrderModelCopyWith<ItemInOrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemInOrderModelCopyWith<$Res> {
  factory $ItemInOrderModelCopyWith(
          ItemInOrderModel value, $Res Function(ItemInOrderModel) then) =
      _$ItemInOrderModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'item_id') String itemId,
      @JsonKey(name: 'selected_price') PriceModel selectedPrice,
      int count});

  $PriceModelCopyWith<$Res> get selectedPrice;
}

/// @nodoc
class _$ItemInOrderModelCopyWithImpl<$Res>
    implements $ItemInOrderModelCopyWith<$Res> {
  _$ItemInOrderModelCopyWithImpl(this._value, this._then);

  final ItemInOrderModel _value;
  // ignore: unused_field
  final $Res Function(ItemInOrderModel) _then;

  @override
  $Res call({
    Object? itemId = freezed,
    Object? selectedPrice = freezed,
    Object? count = freezed,
  }) {
    return _then(_value.copyWith(
      itemId: itemId == freezed
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      selectedPrice: selectedPrice == freezed
          ? _value.selectedPrice
          : selectedPrice // ignore: cast_nullable_to_non_nullable
              as PriceModel,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  $PriceModelCopyWith<$Res> get selectedPrice {
    return $PriceModelCopyWith<$Res>(_value.selectedPrice, (value) {
      return _then(_value.copyWith(selectedPrice: value));
    });
  }
}

/// @nodoc
abstract class _$$_ItemInOrderModelCopyWith<$Res>
    implements $ItemInOrderModelCopyWith<$Res> {
  factory _$$_ItemInOrderModelCopyWith(
          _$_ItemInOrderModel value, $Res Function(_$_ItemInOrderModel) then) =
      __$$_ItemInOrderModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'item_id') String itemId,
      @JsonKey(name: 'selected_price') PriceModel selectedPrice,
      int count});

  @override
  $PriceModelCopyWith<$Res> get selectedPrice;
}

/// @nodoc
class __$$_ItemInOrderModelCopyWithImpl<$Res>
    extends _$ItemInOrderModelCopyWithImpl<$Res>
    implements _$$_ItemInOrderModelCopyWith<$Res> {
  __$$_ItemInOrderModelCopyWithImpl(
      _$_ItemInOrderModel _value, $Res Function(_$_ItemInOrderModel) _then)
      : super(_value, (v) => _then(v as _$_ItemInOrderModel));

  @override
  _$_ItemInOrderModel get _value => super._value as _$_ItemInOrderModel;

  @override
  $Res call({
    Object? itemId = freezed,
    Object? selectedPrice = freezed,
    Object? count = freezed,
  }) {
    return _then(_$_ItemInOrderModel(
      itemId == freezed
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      selectedPrice == freezed
          ? _value.selectedPrice
          : selectedPrice // ignore: cast_nullable_to_non_nullable
              as PriceModel,
      count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ItemInOrderModel implements _ItemInOrderModel {
  const _$_ItemInOrderModel(@JsonKey(name: 'item_id') this.itemId,
      @JsonKey(name: 'selected_price') this.selectedPrice, this.count);

  factory _$_ItemInOrderModel.fromJson(Map<String, dynamic> json) =>
      _$$_ItemInOrderModelFromJson(json);

  @override
  @JsonKey(name: 'item_id')
  final String itemId;
  @override
  @JsonKey(name: 'selected_price')
  final PriceModel selectedPrice;
  @override
  final int count;

  @override
  String toString() {
    return 'ItemInOrderModel(itemId: $itemId, selectedPrice: $selectedPrice, count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ItemInOrderModel &&
            const DeepCollectionEquality().equals(other.itemId, itemId) &&
            const DeepCollectionEquality()
                .equals(other.selectedPrice, selectedPrice) &&
            const DeepCollectionEquality().equals(other.count, count));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(itemId),
      const DeepCollectionEquality().hash(selectedPrice),
      const DeepCollectionEquality().hash(count));

  @JsonKey(ignore: true)
  @override
  _$$_ItemInOrderModelCopyWith<_$_ItemInOrderModel> get copyWith =>
      __$$_ItemInOrderModelCopyWithImpl<_$_ItemInOrderModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ItemInOrderModelToJson(this);
  }
}

abstract class _ItemInOrderModel implements ItemInOrderModel {
  const factory _ItemInOrderModel(
      @JsonKey(name: 'item_id') final String itemId,
      @JsonKey(name: 'selected_price') final PriceModel selectedPrice,
      final int count) = _$_ItemInOrderModel;

  factory _ItemInOrderModel.fromJson(Map<String, dynamic> json) =
      _$_ItemInOrderModel.fromJson;

  @override
  @JsonKey(name: 'item_id')
  String get itemId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'selected_price')
  PriceModel get selectedPrice => throw _privateConstructorUsedError;
  @override
  int get count => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ItemInOrderModelCopyWith<_$_ItemInOrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}
