// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'order_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderModel _$OrderModelFromJson(Map<String, dynamic> json) {
  return _OrderModel.fromJson(json);
}

/// @nodoc
mixin _$OrderModel {
  String? get uid => throw _privateConstructorUsedError;
  List<ItemInOrderModel>? get items => throw _privateConstructorUsedError;
  @JsonKey(name: 'delivery_type')
  String? get deliveryType => throw _privateConstructorUsedError;
  String? get deliveryAddress => throw _privateConstructorUsedError;
  String? get contactPhone => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;
  double? get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'creation_date')
  String? get creationDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderModelCopyWith<OrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderModelCopyWith<$Res> {
  factory $OrderModelCopyWith(
          OrderModel value, $Res Function(OrderModel) then) =
      _$OrderModelCopyWithImpl<$Res>;
  $Res call(
      {String? uid,
      List<ItemInOrderModel>? items,
      @JsonKey(name: 'delivery_type') String? deliveryType,
      String? deliveryAddress,
      String? contactPhone,
      String? comment,
      double? price,
      @JsonKey(name: 'creation_date') String? creationDate});
}

/// @nodoc
class _$OrderModelCopyWithImpl<$Res> implements $OrderModelCopyWith<$Res> {
  _$OrderModelCopyWithImpl(this._value, this._then);

  final OrderModel _value;
  // ignore: unused_field
  final $Res Function(OrderModel) _then;

  @override
  $Res call({
    Object? uid = freezed,
    Object? items = freezed,
    Object? deliveryType = freezed,
    Object? deliveryAddress = freezed,
    Object? contactPhone = freezed,
    Object? comment = freezed,
    Object? price = freezed,
    Object? creationDate = freezed,
  }) {
    return _then(_value.copyWith(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ItemInOrderModel>?,
      deliveryType: deliveryType == freezed
          ? _value.deliveryType
          : deliveryType // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryAddress: deliveryAddress == freezed
          ? _value.deliveryAddress
          : deliveryAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      contactPhone: contactPhone == freezed
          ? _value.contactPhone
          : contactPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      comment: comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      creationDate: creationDate == freezed
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_OrderModelCopyWith<$Res>
    implements $OrderModelCopyWith<$Res> {
  factory _$$_OrderModelCopyWith(
          _$_OrderModel value, $Res Function(_$_OrderModel) then) =
      __$$_OrderModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? uid,
      List<ItemInOrderModel>? items,
      @JsonKey(name: 'delivery_type') String? deliveryType,
      String? deliveryAddress,
      String? contactPhone,
      String? comment,
      double? price,
      @JsonKey(name: 'creation_date') String? creationDate});
}

/// @nodoc
class __$$_OrderModelCopyWithImpl<$Res> extends _$OrderModelCopyWithImpl<$Res>
    implements _$$_OrderModelCopyWith<$Res> {
  __$$_OrderModelCopyWithImpl(
      _$_OrderModel _value, $Res Function(_$_OrderModel) _then)
      : super(_value, (v) => _then(v as _$_OrderModel));

  @override
  _$_OrderModel get _value => super._value as _$_OrderModel;

  @override
  $Res call({
    Object? uid = freezed,
    Object? items = freezed,
    Object? deliveryType = freezed,
    Object? deliveryAddress = freezed,
    Object? contactPhone = freezed,
    Object? comment = freezed,
    Object? price = freezed,
    Object? creationDate = freezed,
  }) {
    return _then(_$_OrderModel(
      uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      items == freezed
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ItemInOrderModel>?,
      deliveryType == freezed
          ? _value.deliveryType
          : deliveryType // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryAddress == freezed
          ? _value.deliveryAddress
          : deliveryAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      contactPhone == freezed
          ? _value.contactPhone
          : contactPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      creationDate == freezed
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderModel implements _OrderModel {
  const _$_OrderModel(
      this.uid,
      final List<ItemInOrderModel>? items,
      @JsonKey(name: 'delivery_type') this.deliveryType,
      this.deliveryAddress,
      this.contactPhone,
      this.comment,
      this.price,
      @JsonKey(name: 'creation_date') this.creationDate)
      : _items = items;

  factory _$_OrderModel.fromJson(Map<String, dynamic> json) =>
      _$$_OrderModelFromJson(json);

  @override
  final String? uid;
  final List<ItemInOrderModel>? _items;
  @override
  List<ItemInOrderModel>? get items {
    final value = _items;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'delivery_type')
  final String? deliveryType;
  @override
  final String? deliveryAddress;
  @override
  final String? contactPhone;
  @override
  final String? comment;
  @override
  final double? price;
  @override
  @JsonKey(name: 'creation_date')
  final String? creationDate;

  @override
  String toString() {
    return 'OrderModel(uid: $uid, items: $items, deliveryType: $deliveryType, deliveryAddress: $deliveryAddress, contactPhone: $contactPhone, comment: $comment, price: $price, creationDate: $creationDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderModel &&
            const DeepCollectionEquality().equals(other.uid, uid) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            const DeepCollectionEquality()
                .equals(other.deliveryType, deliveryType) &&
            const DeepCollectionEquality()
                .equals(other.deliveryAddress, deliveryAddress) &&
            const DeepCollectionEquality()
                .equals(other.contactPhone, contactPhone) &&
            const DeepCollectionEquality().equals(other.comment, comment) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality()
                .equals(other.creationDate, creationDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(uid),
      const DeepCollectionEquality().hash(_items),
      const DeepCollectionEquality().hash(deliveryType),
      const DeepCollectionEquality().hash(deliveryAddress),
      const DeepCollectionEquality().hash(contactPhone),
      const DeepCollectionEquality().hash(comment),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(creationDate));

  @JsonKey(ignore: true)
  @override
  _$$_OrderModelCopyWith<_$_OrderModel> get copyWith =>
      __$$_OrderModelCopyWithImpl<_$_OrderModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderModelToJson(this);
  }
}

abstract class _OrderModel implements OrderModel {
  const factory _OrderModel(
          final String? uid,
          final List<ItemInOrderModel>? items,
          @JsonKey(name: 'delivery_type') final String? deliveryType,
          final String? deliveryAddress,
          final String? contactPhone,
          final String? comment,
          final double? price,
          @JsonKey(name: 'creation_date') final String? creationDate) =
      _$_OrderModel;

  factory _OrderModel.fromJson(Map<String, dynamic> json) =
      _$_OrderModel.fromJson;

  @override
  String? get uid => throw _privateConstructorUsedError;
  @override
  List<ItemInOrderModel>? get items => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'delivery_type')
  String? get deliveryType => throw _privateConstructorUsedError;
  @override
  String? get deliveryAddress => throw _privateConstructorUsedError;
  @override
  String? get contactPhone => throw _privateConstructorUsedError;
  @override
  String? get comment => throw _privateConstructorUsedError;
  @override
  double? get price => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'creation_date')
  String? get creationDate => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_OrderModelCopyWith<_$_OrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}
