// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ItemModel _$ItemModelFromJson(Map<String, dynamic> json) {
  return _ItemModel.fromJson(json);
}

/// @nodoc
mixin _$ItemModel {
  String? get uid => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  String? get composition => throw _privateConstructorUsedError;
  @JsonKey(name: 'list_of_images')
  List<String>? get images => throw _privateConstructorUsedError;
  List<PriceModel>? get prices => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemModelCopyWith<ItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemModelCopyWith<$Res> {
  factory $ItemModelCopyWith(ItemModel value, $Res Function(ItemModel) then) =
      _$ItemModelCopyWithImpl<$Res>;
  $Res call(
      {String? uid,
      @JsonKey(name: 'title') String? name,
      String? description,
      String? category,
      String? composition,
      @JsonKey(name: 'list_of_images') List<String>? images,
      List<PriceModel>? prices});
}

/// @nodoc
class _$ItemModelCopyWithImpl<$Res> implements $ItemModelCopyWith<$Res> {
  _$ItemModelCopyWithImpl(this._value, this._then);

  final ItemModel _value;
  // ignore: unused_field
  final $Res Function(ItemModel) _then;

  @override
  $Res call({
    Object? uid = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? category = freezed,
    Object? composition = freezed,
    Object? images = freezed,
    Object? prices = freezed,
  }) {
    return _then(_value.copyWith(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      composition: composition == freezed
          ? _value.composition
          : composition // ignore: cast_nullable_to_non_nullable
              as String?,
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      prices: prices == freezed
          ? _value.prices
          : prices // ignore: cast_nullable_to_non_nullable
              as List<PriceModel>?,
    ));
  }
}

/// @nodoc
abstract class _$$_ItemModelCopyWith<$Res> implements $ItemModelCopyWith<$Res> {
  factory _$$_ItemModelCopyWith(
          _$_ItemModel value, $Res Function(_$_ItemModel) then) =
      __$$_ItemModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? uid,
      @JsonKey(name: 'title') String? name,
      String? description,
      String? category,
      String? composition,
      @JsonKey(name: 'list_of_images') List<String>? images,
      List<PriceModel>? prices});
}

/// @nodoc
class __$$_ItemModelCopyWithImpl<$Res> extends _$ItemModelCopyWithImpl<$Res>
    implements _$$_ItemModelCopyWith<$Res> {
  __$$_ItemModelCopyWithImpl(
      _$_ItemModel _value, $Res Function(_$_ItemModel) _then)
      : super(_value, (v) => _then(v as _$_ItemModel));

  @override
  _$_ItemModel get _value => super._value as _$_ItemModel;

  @override
  $Res call({
    Object? uid = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? category = freezed,
    Object? composition = freezed,
    Object? images = freezed,
    Object? prices = freezed,
  }) {
    return _then(_$_ItemModel(
      uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      composition == freezed
          ? _value.composition
          : composition // ignore: cast_nullable_to_non_nullable
              as String?,
      images == freezed
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      prices == freezed
          ? _value._prices
          : prices // ignore: cast_nullable_to_non_nullable
              as List<PriceModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ItemModel implements _ItemModel {
  const _$_ItemModel(
      this.uid,
      @JsonKey(name: 'title') this.name,
      this.description,
      this.category,
      this.composition,
      @JsonKey(name: 'list_of_images') final List<String>? images,
      final List<PriceModel>? prices)
      : _images = images,
        _prices = prices;

  factory _$_ItemModel.fromJson(Map<String, dynamic> json) =>
      _$$_ItemModelFromJson(json);

  @override
  final String? uid;
  @override
  @JsonKey(name: 'title')
  final String? name;
  @override
  final String? description;
  @override
  final String? category;
  @override
  final String? composition;
  final List<String>? _images;
  @override
  @JsonKey(name: 'list_of_images')
  List<String>? get images {
    final value = _images;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PriceModel>? _prices;
  @override
  List<PriceModel>? get prices {
    final value = _prices;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ItemModel(uid: $uid, name: $name, description: $description, category: $category, composition: $composition, images: $images, prices: $prices)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ItemModel &&
            const DeepCollectionEquality().equals(other.uid, uid) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.category, category) &&
            const DeepCollectionEquality()
                .equals(other.composition, composition) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            const DeepCollectionEquality().equals(other._prices, _prices));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(uid),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(category),
      const DeepCollectionEquality().hash(composition),
      const DeepCollectionEquality().hash(_images),
      const DeepCollectionEquality().hash(_prices));

  @JsonKey(ignore: true)
  @override
  _$$_ItemModelCopyWith<_$_ItemModel> get copyWith =>
      __$$_ItemModelCopyWithImpl<_$_ItemModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ItemModelToJson(this);
  }
}

abstract class _ItemModel implements ItemModel {
  const factory _ItemModel(
      final String? uid,
      @JsonKey(name: 'title') final String? name,
      final String? description,
      final String? category,
      final String? composition,
      @JsonKey(name: 'list_of_images') final List<String>? images,
      final List<PriceModel>? prices) = _$_ItemModel;

  factory _ItemModel.fromJson(Map<String, dynamic> json) =
      _$_ItemModel.fromJson;

  @override
  String? get uid => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'title')
  String? get name => throw _privateConstructorUsedError;
  @override
  String? get description => throw _privateConstructorUsedError;
  @override
  String? get category => throw _privateConstructorUsedError;
  @override
  String? get composition => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'list_of_images')
  List<String>? get images => throw _privateConstructorUsedError;
  @override
  List<PriceModel>? get prices => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ItemModelCopyWith<_$_ItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}
